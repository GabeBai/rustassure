fn mbedtls_ssl_chk_buf_ptr(cur: *const u8, end: *const u8, need: usize) -> i32 {
    (cur > end || need > (end as usize).wrapping_sub(cur as usize)) as i32
}
