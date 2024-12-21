fn ssl_check_record_type(record_type: u8) -> i32 {
    if record_type != 22 && record_type != 21 && record_type != 20 && record_type != 23 {
        return -0x7200;
    }
    0
}
