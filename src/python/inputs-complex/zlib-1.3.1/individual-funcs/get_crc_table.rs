fn get_crc_table() -> &'static [u32] {
    #[cfg(dynamic_crc_table)]
    once(&made, make_crc_table);

    return crc_table;
}