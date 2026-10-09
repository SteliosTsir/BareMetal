#ifndef MODBUS_RTU_H
#define MODBUS_RTU_H

#include <platform/utils/modbus_pdu.h>	/* For console output */

#define MODBUS_RTU_MAX_ADU_LEN 256
#define MODBUS_BROADCAST_ID    0x00

typedef struct {
    uint8_t slave_id;
    const modbus_backend_t *backend;
} modbus_rtu_t;

/* Initialize RTU context */
void modbus_rtu_init(modbus_rtu_t *rtu, uint8_t slave_id, const modbus_backend_t *backend);

/* Calculate Modbus CRC-16 (Polynomial 0xA001, Initial 0xFFFF) */
uint16_t modbus_rtu_crc16(const uint8_t *buf, size_t len);

/* Parses an incoming raw RTU frame and generates the outgoing RTU response. */
size_t modbus_rtu_process_frame(const modbus_rtu_t *rtu, const uint8_t *rx_frame, size_t rx_len, uint8_t *tx_frame, size_t max_tx_len);

/* Returns the Modbus RTU frame-gap (t3.5) in microseconds for a given baud rate */
uint32_t modbus_rtu_t35_us(uint32_t baud);

#endif /* MODBUS_RTU_H */