#include <test_framework.h>
#include <platform/utils/modbus_pdu.h>
#include <platform/interfaces/uart.h>
#include <platform/utils/utils.h>
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>
#include <string.h>


/* --- Mock Peripheral Memory Sizing --- */
#define MOCK_COILS_COUNT          32
#define MOCK_DISCRETE_COUNT       32
#define MOCK_HOLDING_REGS_COUNT   16
#define MOCK_INPUT_REGS_COUNT     16

/* --- In-Memory Hardware Simulation Tables --- */
static uint8_t  mock_coils[MOCK_COILS_COUNT / 8];
static uint8_t  mock_discrete_inputs[MOCK_DISCRETE_COUNT / 8];
static uint16_t mock_holding_regs[MOCK_HOLDING_REGS_COUNT];
static uint16_t mock_input_regs[MOCK_INPUT_REGS_COUNT];

static uint32_t test_error_count = 0;

#define TEST_CHECK(cond, msg, ...) do {                           \
    if (!(cond)) {                                                \
        test_error_count++;                                       \
        WRN("[FAIL] Line %d: " msg "\n", __LINE__, ##__VA_ARGS__);\
    }                                                             \
} while (0)

/* Helper to dump raw packet bytes in hex */
static void dbg_dump_hex(const char *label, const uint8_t *buf, size_t len) {
    DBG("%s [%u B]:", label, (uint32_t)len);
    for (size_t i = 0; i < len; i++) {
        DBG(" %02X", buf[i]);
    }
    DBG("\n");
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
        uint8_t bit_val = (mock_coils[bit_idx / 8] >> (bit_idx % 8)) & 0x01;
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
        uint8_t bit_val = (mock_discrete_inputs[bit_idx / 8] >> (bit_idx % 8)) & 0x01;
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
        dest_regs[i] = mock_holding_regs[addr + i];
    }
    return MODBUS_EX_NONE;
}

static modbus_exception_t mock_read_input_registers(uint16_t addr, uint16_t count, uint16_t *dest_regs) {
    if ((addr + count) > MOCK_INPUT_REGS_COUNT) {
        return MODBUS_EX_ILLEGAL_DATA_ADDR;
    }
    for (uint16_t i = 0; i < count; i++) {
        dest_regs[i] = mock_input_regs[addr + i];
    }
    return MODBUS_EX_NONE;
}

static modbus_exception_t mock_write_coil(uint16_t addr, bool state) {
    if (addr >= MOCK_COILS_COUNT) {
        return MODBUS_EX_ILLEGAL_DATA_ADDR;
    }
    if (state) {
        mock_coils[addr / 8] |= (uint8_t)(1 << (addr % 8));
    } else {
        mock_coils[addr / 8] &= (uint8_t)~(1 << (addr % 8));
    }
    return MODBUS_EX_NONE;
}

static modbus_exception_t mock_write_single_register(uint16_t addr, uint16_t value) {
    if (addr >= MOCK_HOLDING_REGS_COUNT) {
        return MODBUS_EX_ILLEGAL_DATA_ADDR;
    }
    mock_holding_regs[addr] = value;
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
            mock_coils[bit_idx / 8] |= (uint8_t)(1 << (bit_idx % 8));
        } else {
            mock_coils[bit_idx / 8] &= (uint8_t)~(1 << (bit_idx % 8));
        }
    }
    return MODBUS_EX_NONE;
}

static modbus_exception_t mock_write_multiple_registers(uint16_t addr, uint16_t count, const uint16_t *src_regs) {
    if ((addr + count) > MOCK_HOLDING_REGS_COUNT) {
        return MODBUS_EX_ILLEGAL_DATA_ADDR;
    }
    for (uint16_t i = 0; i < count; i++) {
        mock_holding_regs[addr + i] = src_regs[i];
    }
    return MODBUS_EX_NONE;
}

static const modbus_backend_t test_backend = {
    .read_coils                   = mock_read_coils,
    .read_discrete_inputs         = mock_read_discrete_inputs,
    .read_multi_holding_registers = mock_read_holding_registers,
    .read_input_registers         = mock_read_input_registers,
    .write_coil                   = mock_write_coil,
    .write_single_holding_register= mock_write_single_register,
    .write_multi_coils            = mock_write_multiple_coils,
    .write_multi_holding_registers= mock_write_multiple_registers
};

/* ========================================================================= */
/* Test Cases                                                                */
/* ========================================================================= */

static void test_fc01_read_coils(void) {
    DBG("[MODBUS TEST] Running FC 0x01 (Read Coils)...\n");
    memset(mock_coils, 0, sizeof(mock_coils));
    mock_coils[0] = 0xA5; /* Coils 0,2,5,7 ON */
    mock_coils[1] = 0x03; /* Coils 8,9 ON */

    /* Read 10 coils starting at address 0x0000 */
    uint8_t req[] = { 0x01, 0x00, 0x00, 0x00, 0x0A };
    uint8_t resp[MODBUS_MAX_PDU_LEN];

    dbg_dump_hex("  REQ ", req, sizeof(req));
    size_t len = modbus_process_pdu(&test_backend, req, sizeof(req), resp, sizeof(resp));
    dbg_dump_hex("  RESP", resp, len);

    TEST_CHECK(len == 4, "FC01 expected len 4, got %u", (uint32_t)len);
    TEST_CHECK(resp[0] == 0x01, "FC01 wrong FC: 0x%02X", resp[0]);
    TEST_CHECK(resp[1] == 0x02, "FC01 wrong byte count: %u", resp[1]);
    TEST_CHECK(resp[2] == 0xA5, "FC01 wrong byte 0: 0x%02X", resp[2]);
    TEST_CHECK(resp[3] == 0x03, "FC01 wrong byte 1: 0x%02X", resp[3]);
}

static void test_fc02_read_discrete_inputs(void) {
    DBG("[MODBUS TEST] Running FC 0x02 (Read Discrete Inputs)...\n");
    memset(mock_discrete_inputs, 0, sizeof(mock_discrete_inputs));
    mock_discrete_inputs[0] = 0x55; /* 01010101 */

    /* Read 8 discrete inputs starting at address 0x0000 */
    uint8_t req[] = { 0x02, 0x00, 0x00, 0x00, 0x08 };
    uint8_t resp[MODBUS_MAX_PDU_LEN];

    dbg_dump_hex("  REQ ", req, sizeof(req));
    size_t len = modbus_process_pdu(&test_backend, req, sizeof(req), resp, sizeof(resp));
    dbg_dump_hex("  RESP", resp, len);

    TEST_CHECK(len == 3, "FC02 expected len 3, got %u", (uint32_t)len);
    TEST_CHECK(resp[0] == 0x02, "FC02 wrong FC");
    TEST_CHECK(resp[1] == 0x01, "FC02 byte count mismatch");
    TEST_CHECK(resp[2] == 0x55, "FC02 data mismatch: 0x%02X", resp[2]);
}

static void test_fc03_read_holding_registers(void) {
    DBG("[MODBUS TEST] Running FC 0x03 (Read Holding Registers)...\n");
    mock_holding_regs[2] = 0x1234;
    mock_holding_regs[3] = 0x5678;

    /* Read 2 registers starting at address 0x0002 */
    uint8_t req[] = { 0x03, 0x00, 0x02, 0x00, 0x02 };
    uint8_t resp[MODBUS_MAX_PDU_LEN];

    dbg_dump_hex("  REQ ", req, sizeof(req));
    size_t len = modbus_process_pdu(&test_backend, req, sizeof(req), resp, sizeof(resp));
    dbg_dump_hex("  RESP", resp, len);

    TEST_CHECK(len == 6, "FC03 expected len 6, got %u", (uint32_t)len);
    TEST_CHECK(resp[0] == 0x03, "FC03 wrong FC");
    TEST_CHECK(resp[1] == 0x04, "FC03 byte count mismatch");
    TEST_CHECK(resp[2] == 0x12 && resp[3] == 0x34, "FC03 reg[2] big-endian mismatch");
    TEST_CHECK(resp[4] == 0x56 && resp[5] == 0x78, "FC03 reg[3] big-endian mismatch");
}

static void test_fc04_read_input_registers(void) {
    DBG("[MODBUS TEST] Running FC 0x04 (Read Input Registers)...\n");
    mock_input_regs[0] = 0xDEAD;

    /* Read 1 register at address 0x0000 */
    uint8_t req[] = { 0x04, 0x00, 0x00, 0x00, 0x01 };
    uint8_t resp[MODBUS_MAX_PDU_LEN];

    dbg_dump_hex("  REQ ", req, sizeof(req));
    size_t len = modbus_process_pdu(&test_backend, req, sizeof(req), resp, sizeof(resp));
    dbg_dump_hex("  RESP", resp, len);

    TEST_CHECK(len == 4, "FC04 expected len 4, got %u", (uint32_t)len);
    TEST_CHECK(resp[0] == 0x04, "FC04 wrong FC");
    TEST_CHECK(resp[1] == 0x02, "FC04 byte count mismatch");
    TEST_CHECK(resp[2] == 0xDE && resp[3] == 0xAD, "FC04 reg[0] mismatch");
}

static void test_fc05_write_single_coil(void) {
    DBG("[MODBUS TEST] Running FC 0x05 (Write Single Coil)...\n");
    memset(mock_coils, 0, sizeof(mock_coils));

    /* Turn ON coil 3: [FC=05] [Addr=00 03] [Val=FF 00] */
    DBG("  -> Subtest: Write ON (0xFF00)\n");
    uint8_t req_on[] = { 0x05, 0x00, 0x03, 0xFF, 0x00 };
    uint8_t resp[MODBUS_MAX_PDU_LEN];

    dbg_dump_hex("  REQ ", req_on, sizeof(req_on));
    size_t len = modbus_process_pdu(&test_backend, req_on, sizeof(req_on), resp, sizeof(resp));
    dbg_dump_hex("  RESP", resp, len);

    TEST_CHECK(len == 5, "FC05 ON expected len 5");
    TEST_CHECK(memcmp(req_on, resp, 5) == 0, "FC05 echo failed on write ON");
    TEST_CHECK((mock_coils[0] & (1 << 3)) != 0, "FC05 hardware coil state not updated");

    /* Turn OFF coil 3: [FC=05] [Addr=00 03] [Val=00 00] */
    DBG("  -> Subtest: Write OFF (0x0000)\n");
    uint8_t req_off[] = { 0x05, 0x00, 0x03, 0x00, 0x00 };

    dbg_dump_hex("  REQ ", req_off, sizeof(req_off));
    len = modbus_process_pdu(&test_backend, req_off, sizeof(req_off), resp, sizeof(resp));
    dbg_dump_hex("  RESP", resp, len);

    TEST_CHECK(len == 5, "FC05 OFF expected len 5");
    TEST_CHECK(memcmp(req_off, resp, 5) == 0, "FC05 echo failed on write OFF");
    TEST_CHECK((mock_coils[0] & (1 << 3)) == 0, "FC05 hardware coil state not cleared");
}

static void test_fc06_write_single_register(void) {
    DBG("[MODBUS TEST] Running FC 0x06 (Write Single Register)...\n");
    mock_holding_regs[5] = 0x0000;

    /* Write 0xBEEF to register 0x0005 */
    uint8_t req[] = { 0x06, 0x00, 0x05, 0xBE, 0xEF };
    uint8_t resp[MODBUS_MAX_PDU_LEN];

    dbg_dump_hex("  REQ ", req, sizeof(req));
    size_t len = modbus_process_pdu(&test_backend, req, sizeof(req), resp, sizeof(resp));
    dbg_dump_hex("  RESP", resp, len);

    TEST_CHECK(len == 5, "FC06 expected len 5");
    TEST_CHECK(memcmp(req, resp, 5) == 0, "FC06 echo mismatch");
    TEST_CHECK(mock_holding_regs[5] == 0xBEEF, "FC06 memory write mismatch: 0x%04X", mock_holding_regs[5]);
}

static void test_fc0f_write_multiple_coils(void) {
    DBG("[MODBUS TEST] Running FC 0x0F (Write Multiple Coils)...\n");
    memset(mock_coils, 0, sizeof(mock_coils));

    /* Write 9 coils starting at address 0x0001: pattern = 0x55 (101010101) + 0x01 */
    uint8_t req[] = { 0x0F, 0x00, 0x01, 0x00, 0x09, 0x02, 0x55, 0x01 };
    uint8_t resp[MODBUS_MAX_PDU_LEN];

    dbg_dump_hex("  REQ ", req, sizeof(req));
    size_t len = modbus_process_pdu(&test_backend, req, sizeof(req), resp, sizeof(resp));
    dbg_dump_hex("  RESP", resp, len);

    TEST_CHECK(len == 5, "FC0F expected len 5");
    TEST_CHECK(resp[0] == 0x0F, "FC0F wrong FC");
    TEST_CHECK(resp[1] == 0x00 && resp[2] == 0x01, "FC0F wrong start addr echoed");
    TEST_CHECK(resp[3] == 0x00 && resp[4] == 0x09, "FC0F wrong quantity echoed");
    TEST_CHECK((mock_coils[0] & (1 << 1)) != 0, "FC0F coil 1 bit check failed");
}

static void test_fc10_write_multiple_registers(void) {
    DBG("[MODBUS TEST] Running FC 0x10 (Write Multiple Registers)...\n");
    mock_holding_regs[0] = 0x0000;
    mock_holding_regs[1] = 0x0000;

    /* Write 2 registers starting at 0x0000: [0x1122, 0x3344] */
    uint8_t req[] = { 0x10, 0x00, 0x00, 0x00, 0x02, 0x04, 0x11, 0x22, 0x33, 0x44 };
    uint8_t resp[MODBUS_MAX_PDU_LEN];

    dbg_dump_hex("  REQ ", req, sizeof(req));
    size_t len = modbus_process_pdu(&test_backend, req, sizeof(req), resp, sizeof(resp));
    dbg_dump_hex("  RESP", resp, len);

    TEST_CHECK(len == 5, "FC10 expected len 5");
    TEST_CHECK(resp[0] == 0x10, "FC10 wrong FC");
    TEST_CHECK(resp[1] == 0x00 && resp[2] == 0x00, "FC10 wrong echo addr");
    TEST_CHECK(resp[3] == 0x00 && resp[4] == 0x02, "FC10 wrong echo qty");
    TEST_CHECK(mock_holding_regs[0] == 0x1122, "FC10 reg 0 mismatch");
    TEST_CHECK(mock_holding_regs[1] == 0x3344, "FC10 reg 1 mismatch");
}

static void test_modbus_exceptions(void) {
    DBG("[MODBUS TEST] Running Protocol Exception Cases...\n");
    uint8_t resp[MODBUS_MAX_PDU_LEN];

    /* 1. Illegal Function Code (0x2A) */
    DBG("  -> Case 1: Illegal Function Code (0x2A)\n");
    uint8_t req_bad_fc[] = { 0x2A, 0x00, 0x00 };
    dbg_dump_hex("  REQ ", req_bad_fc, sizeof(req_bad_fc));
    size_t len = modbus_process_pdu(&test_backend, req_bad_fc, sizeof(req_bad_fc), resp, sizeof(resp));
    dbg_dump_hex("  RESP", resp, len);
    TEST_CHECK(len == 2, "Exception bad FC expected len 2");
    TEST_CHECK(resp[0] == (0x2A | 0x80), "Exception bad FC high bit not set");
    TEST_CHECK(resp[1] == MODBUS_EX_ILLEGAL_FUNCTION, "Expected EX 0x01, got 0x%02X", resp[1]);

    /* 2. Illegal Data Address (Read beyond MOCK_HOLDING_REGS_COUNT) */
    DBG("  -> Case 2: Illegal Data Address (out of range)\n");
    uint8_t req_bad_addr[] = { 0x03, 0x00, 0x50, 0x00, 0x01 };
    dbg_dump_hex("  REQ ", req_bad_addr, sizeof(req_bad_addr));
    len = modbus_process_pdu(&test_backend, req_bad_addr, sizeof(req_bad_addr), resp, sizeof(resp));
    dbg_dump_hex("  RESP", resp, len);
    TEST_CHECK(len == 2, "Exception bad addr expected len 2");
    TEST_CHECK(resp[0] == 0x83, "Expected 0x83, got 0x%02X", resp[0]);
    TEST_CHECK(resp[1] == MODBUS_EX_ILLEGAL_DATA_ADDR, "Expected EX 0x02, got 0x%02X", resp[1]);

    /* 3. Illegal Data Value (Quantity = 0) */
    DBG("  -> Case 3: Illegal Data Value (Quantity = 0)\n");
    uint8_t req_bad_qty[] = { 0x03, 0x00, 0x00, 0x00, 0x00 };
    dbg_dump_hex("  REQ ", req_bad_qty, sizeof(req_bad_qty));
    len = modbus_process_pdu(&test_backend, req_bad_qty, sizeof(req_bad_qty), resp, sizeof(resp));
    dbg_dump_hex("  RESP", resp, len);
    TEST_CHECK(len == 2, "Exception bad qty expected len 2");
    TEST_CHECK(resp[0] == 0x83, "Expected 0x83, got 0x%02X", resp[0]);
    TEST_CHECK(resp[1] == MODBUS_EX_ILLEGAL_DATA_VAL, "Expected EX 0x03, got 0x%02X", resp[1]);

    /* 4. Illegal Data Value (FC05 invalid coil value 0x1234) */
    DBG("  -> Case 4: Illegal Data Value (FC05 invalid coil value)\n");
    uint8_t req_bad_coil_val[] = { 0x05, 0x00, 0x01, 0x12, 0x34 };
    dbg_dump_hex("  REQ ", req_bad_coil_val, sizeof(req_bad_coil_val));
    len = modbus_process_pdu(&test_backend, req_bad_coil_val, sizeof(req_bad_coil_val), resp, sizeof(resp));
    dbg_dump_hex("  RESP", resp, len);
    TEST_CHECK(len == 2, "Exception bad coil val expected len 2");
    TEST_CHECK(resp[0] == 0x85, "Expected 0x85, got 0x%02X", resp[0]);
    TEST_CHECK(resp[1] == MODBUS_EX_ILLEGAL_DATA_VAL, "Expected EX 0x03, got 0x%02X", resp[1]);
}

/* ========================================================================= */
/* Test Runner Entry Point                                                   */
/* ========================================================================= */

int run_modbus_pdu_test(void) {
    test_error_count = 0;

    ANN("\n============================================\n");
    ANN(" Starting Modbus PDU Protocol Engine Tests\n");
    ANN("============================================\n");

    test_fc01_read_coils();
    test_fc02_read_discrete_inputs();
    test_fc03_read_holding_registers();
    test_fc04_read_input_registers();
    test_fc05_write_single_coil();
    test_fc06_write_single_register();
    test_fc0f_write_multiple_coils();
    test_fc10_write_multiple_registers();
    test_modbus_exceptions();

    ANN("\n============================================\n");
    if (test_error_count == 0) {
        ANN(" [TEST RESULT: PASSED]\n");
        ANN(" All 8 Modbus Function Codes & Exceptions verified (0 errors).\n");
    } else {
        ANN(" [TEST RESULT: FAILED]\n");
        ANN(" Modbus PDU test failed with %u assertion error(s)!\n", test_error_count);
    }
    ANN("============================================\n");

    return (int)test_error_count;
}

REGISTER_PLATFORM_TEST("Modbus PDU protocol engine functional tests", run_modbus_pdu_test);