#include <platform/utils/modbus_pdu.h>


/* Endianness Helpers */
static inline uint16_t read_be16(const uint8_t *buf) {
    return (uint16_t)(((uint16_t)buf[0] << 8) | (uint16_t)buf[1]);
}

static inline void write_be16(uint8_t *buf, uint16_t val) {
    buf[0] = (uint8_t)(val >> 8);
    buf[1] = (uint8_t)(val & 0xFF);
}



/* Internal Function Code Handlers */


/* Read Coils FC = 0x01 */
static modbus_exception_t handle_read_coils(const modbus_backend_t *backend, const uint8_t *req, size_t req_len, uint8_t *resp, size_t *resp_len){
    if (req_len != 4) return MODBUS_EX_ILLEGAL_DATA_VAL;
    if (backend->read_coils == NULL) return MODBUS_EX_ILLEGAL_FUNCTION;

    uint16_t start_addr = read_be16(&req[0]);
    uint16_t coil_count = read_be16(&req[2]);

    if (coil_count < 1 || coil_count > 2000) {
        return MODBUS_EX_ILLEGAL_DATA_VAL;
    }

    uint8_t byte_count = (uint8_t)((coil_count + 7) / 8);
    resp[0] = byte_count;

    modbus_exception_t ex = backend->read_coils(start_addr, coil_count, &resp[1]);
    if (ex != MODBUS_EX_NONE) {
        return ex;
    }

    *resp_len = 1 + byte_count;
    return MODBUS_EX_NONE;
}

/* Read Discrete Inputs FC = 0x02 */
static modbus_exception_t handle_read_discrete_inputs(const modbus_backend_t *backend, const uint8_t *req, size_t req_len, uint8_t *resp, size_t *resp_len){
    if (req_len != 4) return MODBUS_EX_ILLEGAL_DATA_VAL;
    if (backend->read_discrete_inputs == NULL) return MODBUS_EX_ILLEGAL_FUNCTION;

    uint16_t start_addr = read_be16(&req[0]);
    uint16_t input_count = read_be16(&req[2]);

    if (input_count < 1 || input_count > 2000) {
        return MODBUS_EX_ILLEGAL_DATA_VAL;
    }

    uint8_t byte_count = (uint8_t)((input_count + 7) / 8);
    resp[0] = byte_count;

    modbus_exception_t ex = backend->read_discrete_inputs(start_addr, input_count, &resp[1]);
    if (ex != MODBUS_EX_NONE) {
        return ex;
    }

    *resp_len = 1 + byte_count;
    return MODBUS_EX_NONE;
}

/* Read Multiple Holding Registers FC = 0x03 */
static modbus_exception_t handle_read_multi_holding_registers(const modbus_backend_t *backend, const uint8_t *req, size_t req_len, uint8_t *resp, size_t *resp_len){
    if (req_len != 4) return MODBUS_EX_ILLEGAL_DATA_VAL;
    if (backend->read_multi_holding_registers == NULL) return MODBUS_EX_ILLEGAL_FUNCTION;

    uint16_t start_addr = read_be16(&req[0]);
    uint16_t reg_count  = read_be16(&req[2]);

    if (reg_count < 1 || reg_count > 125) {
        return MODBUS_EX_ILLEGAL_DATA_VAL;
    }

    uint16_t temp_regs[125];
    modbus_exception_t ex = backend->read_multi_holding_registers(start_addr, reg_count, temp_regs);
    if (ex != MODBUS_EX_NONE) {
        return ex;
    }

    uint8_t byte_count = (uint8_t)(reg_count * 2);
    resp[0] = byte_count;
    size_t out_idx = 1;

    for (uint16_t i = 0; i < reg_count; i++) {
        write_be16(&resp[out_idx], temp_regs[i]);
        out_idx += 2;
    }

    *resp_len = out_idx;
    return MODBUS_EX_NONE;
}

/* Read Input Registers FC = 0x04 */
static modbus_exception_t handle_read_input_registers(const modbus_backend_t *backend, const uint8_t *req, size_t req_len, uint8_t *resp, size_t *resp_len){
    if (req_len != 4) return MODBUS_EX_ILLEGAL_DATA_VAL;
    if (backend->read_input_registers == NULL) return MODBUS_EX_ILLEGAL_FUNCTION;

    uint16_t start_addr = read_be16(&req[0]);
    uint16_t reg_count  = read_be16(&req[2]);

    if (reg_count < 1 || reg_count > 125) {
        return MODBUS_EX_ILLEGAL_DATA_VAL;
    }

    uint16_t temp_regs[125];
    modbus_exception_t ex = backend->read_input_registers(start_addr, reg_count, temp_regs);
    if (ex != MODBUS_EX_NONE) {
        return ex;
    }

    uint8_t byte_count = (uint8_t)(reg_count * 2);
    resp[0] = byte_count;
    size_t out_idx = 1;

    for (uint16_t i = 0; i < reg_count; i++) {
        write_be16(&resp[out_idx], temp_regs[i]);
        out_idx += 2;
    }

    *resp_len = out_idx;
    return MODBUS_EX_NONE;
}

/* Write Single Coil FC = 0x05 */
static modbus_exception_t handle_write_single_coil(const modbus_backend_t *backend, const uint8_t *req, size_t req_len, uint8_t *resp, size_t *resp_len){
    if (req_len != 4) return MODBUS_EX_ILLEGAL_DATA_VAL;
    if (backend->write_coil == NULL) return MODBUS_EX_ILLEGAL_FUNCTION;

    uint16_t coil_addr = read_be16(&req[0]);
    uint16_t raw_val   = read_be16(&req[2]);

    bool state;
    if (raw_val == 0xFF00) {
        state = true;
    } else if (raw_val == 0x0000) {
        state = false;
    } else {
        return MODBUS_EX_ILLEGAL_DATA_VAL;
    }

    modbus_exception_t ex = backend->write_coil(coil_addr, state);
    if (ex != MODBUS_EX_NONE) {
        return ex;
    }

    resp[0] = req[0];
    resp[1] = req[1];
    resp[2] = req[2];
    resp[3] = req[3];
    *resp_len = 4;
    return MODBUS_EX_NONE;
}

/* Write Single Holding Register FC = 0x06 */
static modbus_exception_t handle_write_single_holding_register(const modbus_backend_t *backend, const uint8_t *req, size_t req_len, uint8_t *resp, size_t *resp_len){
    if (req_len != 4) return MODBUS_EX_ILLEGAL_DATA_VAL;
    if (backend->write_single_holding_register == NULL) return MODBUS_EX_ILLEGAL_FUNCTION;

    uint16_t reg_addr = read_be16(&req[0]);
    uint16_t reg_val  = read_be16(&req[2]);

    modbus_exception_t ex = backend->write_single_holding_register(reg_addr, reg_val);
    if (ex != MODBUS_EX_NONE) {
        return ex;
    }

    resp[0] = req[0];
    resp[1] = req[1];
    resp[2] = req[2];
    resp[3] = req[3];
    *resp_len = 4;
    return MODBUS_EX_NONE;
}

/* Write Multiple Coils FC = 0x0F */
static modbus_exception_t handle_write_multi_coils(const modbus_backend_t *backend, const uint8_t *req, size_t req_len, uint8_t *resp, size_t *resp_len){
    if (req_len < 5) return MODBUS_EX_ILLEGAL_DATA_VAL;
    if (backend->write_multi_coils == NULL) return MODBUS_EX_ILLEGAL_FUNCTION;

    uint16_t start_addr = read_be16(&req[0]);
    uint16_t coil_count = read_be16(&req[2]);
    uint8_t  byte_count = req[4];

    /* Standard Modbus allows writing 1 to 1968 contiguous coils in a single PDU */
    if (coil_count < 1 || coil_count > 1968) {
        return MODBUS_EX_ILLEGAL_DATA_VAL;
    }

    uint8_t expected_bytes = (uint8_t)((coil_count + 7) / 8);
    if (byte_count != expected_bytes || req_len != (size_t)(5 + byte_count)) {
        return MODBUS_EX_ILLEGAL_DATA_VAL;
    }

    modbus_exception_t ex = backend->write_multi_coils(start_addr, coil_count, &req[5]);
    if (ex != MODBUS_EX_NONE) {
        return ex;
    }

    /* Response echoes start address and quantity of written coils */
    write_be16(&resp[0], start_addr);
    write_be16(&resp[2], coil_count);
    *resp_len = 4;
    return MODBUS_EX_NONE;
}

/* Write Multiple Holding Registers FC = 0x10 */
static modbus_exception_t handle_write_multi_holding_registers(const modbus_backend_t *backend, const uint8_t *req, size_t req_len, uint8_t *resp, size_t *resp_len){
    if (req_len < 5) return MODBUS_EX_ILLEGAL_DATA_VAL;
    if (backend->write_multi_holding_registers == NULL) return MODBUS_EX_ILLEGAL_FUNCTION;

    uint16_t start_addr = read_be16(&req[0]);
    uint16_t reg_count  = read_be16(&req[2]);
    uint8_t  byte_count = req[4];

    if (reg_count < 1 || reg_count > 123 || byte_count != (reg_count * 2)) {
        return MODBUS_EX_ILLEGAL_DATA_VAL;
    }
    if (req_len != (size_t)(5 + byte_count)) {
        return MODBUS_EX_ILLEGAL_DATA_VAL;
    }

    uint16_t temp_regs[123];
    size_t in_idx = 5;
    for (uint16_t i = 0; i < reg_count; i++) {
        temp_regs[i] = read_be16(&req[in_idx]);
        in_idx += 2;
    }

    modbus_exception_t ex = backend->write_multi_holding_registers(start_addr, reg_count, temp_regs);
    if (ex != MODBUS_EX_NONE) {
        return ex;
    }

    write_be16(&resp[0], start_addr);
    write_be16(&resp[2], reg_count);
    *resp_len = 4;
    return MODBUS_EX_NONE;
}


/* PDU packet processor */

size_t modbus_process_pdu(const modbus_backend_t *backend, const uint8_t *req_pdu, size_t req_len, uint8_t *resp_pdu, size_t max_resp_len){

    if (backend == NULL || req_pdu == NULL || resp_pdu == NULL) {
        return 0;
    }

    if (req_len < 1 || max_resp_len < 2) {
        return 0;
    }

    uint8_t func_code = req_pdu[0];
    const uint8_t *req_payload = &req_pdu[1];
    size_t req_payload_len = req_len - 1;

    uint8_t *resp_payload = &resp_pdu[1];
    size_t resp_payload_len = 0;
    modbus_exception_t ex = MODBUS_EX_NONE;

    switch (func_code) {
        case MODBUS_FC_READ_COILS:
            ex = handle_read_coils(backend, req_payload, req_payload_len, resp_payload, &resp_payload_len);
            break;

        case MODBUS_FC_READ_DISCRETE_INPUTS:
            ex = handle_read_discrete_inputs(backend, req_payload, req_payload_len, resp_payload, &resp_payload_len);
            break;

        case MODBUS_FC_READ_MULTI_HOLDING_REGISTERS:
            ex = handle_read_multi_holding_registers(backend, req_payload, req_payload_len, resp_payload, &resp_payload_len);
            break;

        case MODBUS_FC_READ_INPUT_REGISTERS:
            ex = handle_read_input_registers(backend, req_payload, req_payload_len, resp_payload, &resp_payload_len);
            break;

        case MODBUS_FC_WRITE_SINGLE_COIL:
            ex = handle_write_single_coil(backend, req_payload, req_payload_len, resp_payload, &resp_payload_len);
            break;

        case MODBUS_FC_WRITE_SINGLE_HOLDING_REGISTER:
            ex = handle_write_single_holding_register(backend, req_payload, req_payload_len, resp_payload, &resp_payload_len);
            break;

        case MODBUS_FC_WRITE_MULTI_COILS:
            ex = handle_write_multi_coils(backend, req_payload, req_payload_len, resp_payload, &resp_payload_len);
            break;

        case MODBUS_FC_WRITE_MULTI_HOLDING_REGISTERS:
            ex = handle_write_multi_holding_registers(backend, req_payload, req_payload_len, resp_payload, &resp_payload_len);
            break;

        default:
            ex = MODBUS_EX_ILLEGAL_FUNCTION;
            break;
    }

    if (ex == MODBUS_EX_NONE) {
        if ((1 + resp_payload_len) > max_resp_len) {
            resp_pdu[0] = func_code | 0x80;
            resp_pdu[1] = (uint8_t)MODBUS_EX_SLAVE_DEVICE_FAIL;
            return 2;
        }
        resp_pdu[0] = func_code;
        return 1 + resp_payload_len;
    } else {
        resp_pdu[0] = func_code | 0x80;
        resp_pdu[1] = (uint8_t)ex;
        return 2;
    }
}