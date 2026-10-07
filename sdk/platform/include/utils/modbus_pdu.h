#ifndef MODBUS_PDU_H
#define MODBUS_PDU_H

#include <stdint.h>
#include <stdbool.h>
#include <platform/riscv/hart.h>
#include <platform/utils/utils.h>	/* For console output */

#define MODBUS_MAX_PDU_LEN 253

/* Modbus Standard Read Function Codes */
#define MODBUS_FC_READ_COILS                    0x01
#define MODBUS_FC_READ_DISCRETE_INPUTS          0x02
#define MODBUS_FC_READ_MULTI_HOLDING_REGISTERS  0x03
#define MODBUS_FC_READ_INPUT_REGISTERS          0x04

/* Modbus Standard Write Function Codes */
#define MODBUS_FC_WRITE_SINGLE_COIL             0x05
#define MODBUS_FC_WRITE_SINGLE_HOLDING_REGISTER 0x06
#define MODBUS_FC_WRITE_MULTI_COILS             0x0F
#define MODBUS_FC_WRITE_MULTI_HOLDING_REGISTERS 0x10


/* Modbus Standard Exception Codes */
typedef enum {
    MODBUS_EX_NONE             = 0x00,
    MODBUS_EX_ILLEGAL_FUNCTION = 0x01,
    MODBUS_EX_ILLEGAL_DATA_ADDR= 0x02,
    MODBUS_EX_ILLEGAL_DATA_VAL = 0x03,
    MODBUS_EX_SLAVE_DEVICE_FAIL= 0x04
} modbus_exception_t;

typedef struct {
    /* Read discrete coils into packed byte buffer (LSB first) */
    modbus_exception_t (*read_coils)(uint16_t addr, uint16_t count, uint8_t *dest_packed);
    
    /* Read discrete inputs into packed byte buffer (LSB first) */
    modbus_exception_t (*read_discrete_inputs)(uint16_t addr, uint16_t count, uint8_t *dest_packed);

    /* Read holding registers into host-endian 16-bit array */
    modbus_exception_t (*read_multi_holding_registers)(uint16_t addr, uint16_t count, uint16_t *dest_regs);
    
    /* Read input registers into host-endian 16-bit array */
    modbus_exception_t (*read_input_registers)(uint16_t addr, uint16_t count, uint16_t *dest_regs);

    /* Write single coil state */
    modbus_exception_t (*write_coil)(uint16_t addr, bool state);
    
    /* Write a single 16-bit holding register */
    modbus_exception_t (*write_single_holding_register)(uint16_t addr, uint16_t value);
    
    /* Write multiple coils from packed byte buffer (LSB first) */
    modbus_exception_t (*write_multi_coils)(uint16_t addr, uint16_t count, const uint8_t *src_packed);

    /* Write consecutive 16-bit holding registers from host-endian array */
    modbus_exception_t (*write_multi_holding_registers)(uint16_t addr, uint16_t count, const uint16_t *src_regs);
} modbus_backend_t;


size_t modbus_process_pdu(const modbus_backend_t *backend, const uint8_t *req_pdu, size_t req_len, uint8_t *resp_pdu, size_t max_resp_len);



#endif /* MODBUS_PDU_H */