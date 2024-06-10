const z_crc_t FAR * ZEXPORT get_crc_table(void) {
#ifdef DYNAMIC_CRC_TABLE
    once(&made, make_crc_table);
#endif /* DYNAMIC_CRC_TABLE */
    return (const z_crc_t FAR *)crc_table;
}
