#include <test_framework.h>
#include <platform/templates/target_template.h>
#include <platform/interfaces/uart.h>
#include <platform/interfaces/modbus_rtu.h>
#include <platform/utils/utils.h>
#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include <errno.h>
#include <time.h>


#define SLAVE_ADDRESS         0x01
#define RTU_MAX_FRAME_LEN     256

/* --- Mock Peripheral Memory Sizing --- */
#define MOCK_COILS_COUNT          32
#define MOCK_DISCRETE_COUNT       32
#define MOCK_HOLDING_REGS_COUNT   16
#define MOCK_INPUT_REGS_COUNT     16

/* --- In-Memory Hardware Simulation Tables --- */
struct mock_state {
    uint8_t  coils[MOCK_COILS_COUNT / 8 + 1];
    uint8_t  discrete[MOCK_DISCRETE_COUNT / 8 + 1];
    uint16_t holding[MOCK_HOLDING_REGS_COUNT];
    uint16_t input[MOCK_INPUT_REGS_COUNT];
};

/* Only global: points at the state living on the test function's stack */
static struct mock_state *ms;

static inline uint64_t now_ns(void) {
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return (uint64_t)ts.tv_sec * 1000000000ull + (uint64_t)ts.tv_nsec;
}

/* ========================================================================= */
/* Mock Hardware Backend Callbacks                                           */
/* ========================================================================= */

static modbus_exception_t mock_read_coils(uint16_t addr, uint16_t count, uint8_t *dest_packed) {
    if ((addr + count) > MOCK_COILS_COUNT) {
        return MODBUS_EX_ILLEGAL_DATA_ADDR;
    }
    uint8_t byte_count = (uint8_t)((count + 7) / 8);
    memset(dest_packed, 0, byte_count);

    for (uint16_t i = 0; i < count; i++) {
        uint16_t bit_idx = addr + i;
        uint8_t bit_val = (ms->coils[bit_idx / 8] >> (bit_idx % 8)) & 0x01;
        if (bit_val) {
            dest_packed[i / 8] |= (uint8_t)(1 << (i % 8));
        }
    }
    return MODBUS_EX_NONE;
}

static modbus_exception_t mock_read_discrete_inputs(uint16_t addr, uint16_t count, uint8_t *dest_packed) {
    if ((addr + count) > MOCK_DISCRETE_COUNT) {
        return MODBUS_EX_ILLEGAL_DATA_ADDR;
    }
    uint8_t byte_count = (uint8_t)((count + 7) / 8);
    memset(dest_packed, 0, byte_count);

    for (uint16_t i = 0; i < count; i++) {
        uint16_t bit_idx = addr + i;
        uint8_t bit_val = (ms->discrete[bit_idx / 8] >> (bit_idx % 8)) & 0x01;
        if (bit_val) {
            dest_packed[i / 8] |= (uint8_t)(1 << (i % 8));
        }
    }
    return MODBUS_EX_NONE;
}

static modbus_exception_t mock_read_holding_registers(uint16_t addr, uint16_t count, uint16_t *dest_regs) {
    if ((addr + count) > MOCK_HOLDING_REGS_COUNT) {
        return MODBUS_EX_ILLEGAL_DATA_ADDR;
    }
    for (uint16_t i = 0; i < count; i++) {
        dest_regs[i] = ms->holding[addr + i];
    }
    return MODBUS_EX_NONE;
}

static modbus_exception_t mock_read_input_registers(uint16_t addr, uint16_t count, uint16_t *dest_regs) {
    if ((addr + count) > MOCK_INPUT_REGS_COUNT) {
        return MODBUS_EX_ILLEGAL_DATA_ADDR;
    }
    for (uint16_t i = 0; i < count; i++) {
        dest_regs[i] = ms->input[addr + i];
    }
    return MODBUS_EX_NONE;
}

static modbus_exception_t mock_write_coil(uint16_t addr, bool state) {
    if (addr >= MOCK_COILS_COUNT) {
        return MODBUS_EX_ILLEGAL_DATA_ADDR;
    }
    if (state) {
        ms->coils[addr / 8] |= (uint8_t)(1 << (addr % 8));
    } else {
        ms->coils[addr / 8] &= (uint8_t)~(1 << (addr % 8));
    }
    return MODBUS_EX_NONE;
}

static modbus_exception_t mock_write_single_register(uint16_t addr, uint16_t value) {
    if (addr >= MOCK_HOLDING_REGS_COUNT) {
        return MODBUS_EX_ILLEGAL_DATA_ADDR;
    }
    ms->holding[addr] = value;
    return MODBUS_EX_NONE;
}

static modbus_exception_t mock_write_multiple_coils(uint16_t addr, uint16_t count, const uint8_t *src_packed) {
    if ((addr + count) > MOCK_COILS_COUNT) {
        return MODBUS_EX_ILLEGAL_DATA_ADDR;
    }
    for (uint16_t i = 0; i < count; i++) {
        uint16_t bit_idx = addr + i;
        uint8_t bit_val = (src_packed[i / 8] >> (i % 8)) & 0x01;
        if (bit_val) {
            ms->coils[bit_idx / 8] |= (uint8_t)(1 << (bit_idx % 8));
        } else {
            ms->coils[bit_idx / 8] &= (uint8_t)~(1 << (bit_idx % 8));
        }
    }
    return MODBUS_EX_NONE;
}

static modbus_exception_t mock_write_multiple_registers(uint16_t addr, uint16_t count, const uint16_t *src_regs) {
    if ((addr + count) > MOCK_HOLDING_REGS_COUNT) {
        return MODBUS_EX_ILLEGAL_DATA_ADDR;
    }
    for (uint16_t i = 0; i < count; i++) {
        ms->holding[addr + i] = src_regs[i];
    }
    return MODBUS_EX_NONE;
}

static const modbus_backend_t test_backend = {
    .read_coils                    = mock_read_coils,
    .read_discrete_inputs          = mock_read_discrete_inputs,
    .read_multi_holding_registers  = mock_read_holding_registers,
    .read_input_registers          = mock_read_input_registers,
    .write_coil                    = mock_write_coil,
    .write_single_holding_register = mock_write_single_register,
    .write_multi_coils             = mock_write_multiple_coils,
    .write_multi_holding_registers = mock_write_multiple_registers
};

int run_modbus_rtu_echo_service(void) {
    /* Maintain full Modbus RTU instance structure */
    uint8_t rx_buf[RTU_MAX_FRAME_LEN];
    uint8_t tx_buf[RTU_MAX_FRAME_LEN];
    struct mock_state state = {0};
    modbus_rtu_t rtu;    
    
    state.holding[0] = 0x1234;
    state.holding[1] = 0x5678;
    state.input[0]   = 0x00AA;
    state.coils[0]   = 0x05;      /* coils 0 and 2 set */

    const uint64_t t35_ns = (uint64_t)modbus_rtu_t35_us(PLAT_UART_BAUD_RATE) * 1000ull;

    ms = &state;
    modbus_rtu_init(&rtu, SLAVE_ADDRESS, &test_backend);

    size_t rx_len = 0;
    bool running = true;
    uint64_t last_rx_ns = 0;

    while (running) {
        int res = uart_getc();

        if (res >= 0) {
            uint8_t byte = (uint8_t)res;

            /* Check exit key only when line is idle */
            if (rx_len == 0 && (byte == 'q' || byte == 0x1B)) {
                running = false;
                break;
            }

            if (rx_len < sizeof(rx_buf)) {
                rx_buf[rx_len++] = byte;
            }

            last_rx_ns = now_ns();
            
        } else if (res == -EAGAIN) {
            /* FIFO empty: track line silence */
            if (rx_len > 0) {

                /* t3.5 frame boundary reached */
                if ((now_ns() - last_rx_ns) >= t35_ns) {

                    /* Real Modbus response: */
                    size_t tx_len = modbus_rtu_process_frame(&rtu, rx_buf, rx_len, tx_buf, sizeof(tx_buf));
                    for (size_t i = 0; i < tx_len; i++) {
                        uart_putc_raw(tx_buf[i]);
                    }

                    /* Reset frame state */
                    rx_len = 0;
                }
            }
        } else if (res == -EIO) {
            /* Hardware framing / line error */
            rx_len = 0;
        }
    }

    return 0;
}

REGISTER_PLATFORM_TEST("Modbus RTU UART echo test", run_modbus_rtu_echo_service);