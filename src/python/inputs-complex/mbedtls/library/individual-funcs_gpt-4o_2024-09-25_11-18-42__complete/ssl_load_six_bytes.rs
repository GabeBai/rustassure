fn ssl_load_six_bytes(buf: &[u8]) -> u64 {
    ((buf[0] as u64) << 40) |
    ((buf[1] as u64) << 32) |
    ((buf[2] as u64) << 24) |
    ((buf[3] as u64) << 16) |
    ((buf[4] as u64) << 8) |
    (buf[5] as u64)
}
