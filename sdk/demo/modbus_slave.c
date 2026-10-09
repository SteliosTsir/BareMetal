#include <platform/interfaces/uart.h>
#include <platform/interfaces/modbus_rtu.h>
#include <platform/utils/utils.h>
#include <platform/templates/target_template.h>
#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include <time.h>
#include <errno.h>

#define SLAVE_ADDRESS       0x01
#define RTU_MAX_FRAME_LEN   256

#define N_COILS             8
#define N_DISCRETE          8
#define N_HOLDING           4
#define N_INPUT             4

#define COIL_HEATER_EN      0
#define DI_ALARM            0
#define DI_HEATER_ON        1
#define HR_SETPOINT         0
#define HR_ALARM_LIMIT      1
#define IR_TEMPERATURE      0

#define AMBIENT_DECI_C      200
#define STEP_NS             100000000ull   /* plant update every 100 ms */

/* Small globals are fine here: the 4KB gp window only matters for the crowded testsuite */
static struct {
    uint8_t  coils[(N_COILS + 7) / 8];
    uint8_t  discrete[(N_DISCRETE + 7) / 8];
    uint16_t holding[N_HOLDING];
    uint16_t input[N_INPUT];
} plant;

static inline bool bit_get(const uint8_t *a, unsigned i) {
    return (a[i / 8] >> (i % 8)) & 1u;
}
static inline void bit_set(uint8_t *a, unsigned i, bool v) {
    if (v) a[i / 8] |= (uint8_t)(1u << (i % 8));
    else   a[i / 8] &= (uint8_t)~(1u << (i % 8));
}

static inline uint64_t now_ns(void) {
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return (uint64_t)ts.tv_sec * 1000000000ull + (uint64_t)ts.tv_nsec;
}

/* ---------------- Simulated process ---------------- */

static void plant_init(void) {
    memset(&plant, 0, sizeof(plant));
    plant.holding[HR_SETPOINT]    = 600;
    plant.holding[HR_ALARM_LIMIT] = 800;
    plant.input[IR_TEMPERATURE]   = AMBIENT_DECI_C;
}

static void plant_step(void) {
    uint16_t temp  = plant.input[IR_TEMPERATURE];
    bool     alarm = temp > plant.holding[HR_ALARM_LIMIT];
    bool     heater = bit_get(plant.coils, COIL_HEATER_EN) && !alarm &&
                      temp < plant.holding[HR_SETPOINT];

    if (heater)                      temp += 5;
    else if (temp > AMBIENT_DECI_C)  temp -= 2;

    plant.input[IR_TEMPERATURE] = temp;
    bit_set(plant.discrete, DI_ALARM, alarm);
    bit_set(plant.discrete, DI_HEATER_ON, heater);
}

/* ---------------- Modbus backend ---------------- */

static modbus_exception_t read_bits(const uint8_t *src, unsigned n,
                                    uint16_t addr, uint16_t count, uint8_t *dst) {
    if ((unsigned)addr + count > n) return MODBUS_EX_ILLEGAL_DATA_ADDR;
    memset(dst, 0, (count + 7u) / 8u);
    for (uint16_t i = 0; i < count; i++)
        if (bit_get(src, addr + i)) bit_set(dst, i, true);
    return MODBUS_EX_NONE;
}

static modbus_exception_t be_read_coils(uint16_t a, uint16_t c, uint8_t *d) {
    return read_bits(plant.coils, N_COILS, a, c, d);
}
static modbus_exception_t be_read_discrete(uint16_t a, uint16_t c, uint8_t *d) {
    return read_bits(plant.discrete, N_DISCRETE, a, c, d);
}
static modbus_exception_t be_read_holding(uint16_t a, uint16_t c, uint16_t *d) {
    if ((unsigned)a + c > N_HOLDING) return MODBUS_EX_ILLEGAL_DATA_ADDR;
    for (uint16_t i = 0; i < c; i++) d[i] = plant.holding[a + i];
    return MODBUS_EX_NONE;
}
static modbus_exception_t be_read_input(uint16_t a, uint16_t c, uint16_t *d) {
    if ((unsigned)a + c > N_INPUT) return MODBUS_EX_ILLEGAL_DATA_ADDR;
    for (uint16_t i = 0; i < c; i++) d[i] = plant.input[a + i];
    return MODBUS_EX_NONE;
}
static modbus_exception_t be_write_coil(uint16_t a, bool s) {
    if (a >= N_COILS) return MODBUS_EX_ILLEGAL_DATA_ADDR;
    bit_set(plant.coils, a, s);
    return MODBUS_EX_NONE;
}
static modbus_exception_t be_write_holding(uint16_t a, uint16_t v) {
    if (a >= N_HOLDING) return MODBUS_EX_ILLEGAL_DATA_ADDR;
    plant.holding[a] = v;
    return MODBUS_EX_NONE;
}
static modbus_exception_t be_write_coils(uint16_t a, uint16_t c, const uint8_t *s) {
    if ((unsigned)a + c > N_COILS) return MODBUS_EX_ILLEGAL_DATA_ADDR;
    for (uint16_t i = 0; i < c; i++) bit_set(plant.coils, a + i, bit_get(s, i));
    return MODBUS_EX_NONE;
}
static modbus_exception_t be_write_holdings(uint16_t a, uint16_t c, const uint16_t *s) {
    if ((unsigned)a + c > N_HOLDING) return MODBUS_EX_ILLEGAL_DATA_ADDR;
    for (uint16_t i = 0; i < c; i++) plant.holding[a + i] = s[i];
    return MODBUS_EX_NONE;
}

static const modbus_backend_t backend = {
    .read_coils                    = be_read_coils,
    .read_discrete_inputs          = be_read_discrete,
    .read_multi_holding_registers  = be_read_holding,
    .read_input_registers          = be_read_input,
    .write_coil                    = be_write_coil,
    .write_single_holding_register = be_write_holding,
    .write_multi_coils             = be_write_coils,
    .write_multi_holding_registers = be_write_holdings
};

/* ---------------- Main loop ---------------- */

void main(void) {
    uint8_t rx_buf[RTU_MAX_FRAME_LEN];
    uint8_t tx_buf[RTU_MAX_FRAME_LEN];
    modbus_rtu_t rtu;

    plant_init();
    modbus_rtu_init(&rtu, SLAVE_ADDRESS, &backend);

    const uint64_t t35_ns = (uint64_t)modbus_rtu_t35_us(PLAT_UART_BAUD_RATE) * 1000ull;

    size_t   rx_len = 0;
    uint64_t last_rx_ns = 0;
    uint64_t last_step_ns = now_ns();

    for (;;) {
        uint64_t now = now_ns();

        if (now - last_step_ns >= STEP_NS) {
            plant_step();
            last_step_ns = now;
        }

        int res = uart_getc();

        if (res >= 0) {
            if (rx_len < sizeof(rx_buf))
                rx_buf[rx_len++] = (uint8_t)res;
            last_rx_ns = now;

        } else if (res == -EAGAIN) {
            if (rx_len > 0 && (now - last_rx_ns) >= t35_ns) {
                size_t tx_len = modbus_rtu_process_frame(&rtu, rx_buf, rx_len,
                                                         tx_buf, sizeof(tx_buf));
                for (size_t i = 0; i < tx_len; i++)
                    uart_putc_raw(tx_buf[i]);
                rx_len = 0;
            }

        } else if (res == -EIO) {
            rx_len = 0;
        }
    }
}