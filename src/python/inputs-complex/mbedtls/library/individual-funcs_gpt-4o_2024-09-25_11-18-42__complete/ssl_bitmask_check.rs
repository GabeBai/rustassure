fn ssl_bitmask_check(mask: &mut [u8], len: usize) -> i32 {
    for i in 0..len / 8 {
        if mask[i] != 0xFF {
            return -1;
        }
    }
    for i in 0..len % 8 {
        if (mask[len / 8] & (1 << (7 - i))) == 0 {
            return -1;
        }
    }
    0
}
