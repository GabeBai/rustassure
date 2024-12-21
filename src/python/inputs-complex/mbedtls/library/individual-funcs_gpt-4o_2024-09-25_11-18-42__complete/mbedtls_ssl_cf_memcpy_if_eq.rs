fn mbedtls_ssl_cf_memcpy_if_eq(dst: &mut [u8], src: &[u8], len: usize, c1: usize, c2: usize) {
    let diff = c1 ^ c2;
    let diff_msb = diff | (!diff + 1);
    let diff1 = diff_msb >> (std::mem::size_of::<usize>() * 8 - 1);
    let mask = -(diff1 as isize) as u8;
    for i in 0..len {
        dst[i] = (dst[i] & mask) | (src[i] & !mask);
    }
}
