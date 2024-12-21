fn mbedtls_ssl_safer_memcmp(a: *const u8, b: *const u8, n: usize) -> i32 {
    use std::ptr;

    let mut diff: u8 = 0;
    for i in 0..n {
        let x = unsafe { ptr::read_volatile(a.add(i)) };
        let y = unsafe { ptr::read_volatile(b.add(i)) };
        diff |= x ^ y;
    }
    diff as i32
}
