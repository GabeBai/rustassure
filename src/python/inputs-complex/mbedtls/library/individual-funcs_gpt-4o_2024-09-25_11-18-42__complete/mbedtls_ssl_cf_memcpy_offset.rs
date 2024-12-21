fn mbedtls_ssl_cf_memcpy_if_eq(
    dst: &mut [u8],
    src: &[u8],
    len: usize,
    offset: usize,
    offset_secret: usize,
) {
    if offset == offset_secret {
        dst[..len].copy_from_slice(&src[..len]);
    }
}

fn mbedtls_ssl_cf_memcpy_offset(
    dst: &mut [u8],
    src_base: &[u8],
    offset_secret: usize,
    offset_min: usize,
    offset_max: usize,
    len: usize,
) {
    for offset in offset_min..=offset_max {
        mbedtls_ssl_cf_memcpy_if_eq(dst, &src_base[offset..], len, offset, offset_secret);
    }
}

fn main() {
    // Example usage
    let mut dst = vec![0u8; 10];
    let src_base = vec![1u8, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    let offset_secret = 2;
    let offset_min = 0;
    let offset_max = 5;
    let len = 3;

    mbedtls_ssl_cf_memcpy_offset(&mut dst, &src_base, offset_secret, offset_min, offset_max, len);

    println!("{:?}", dst);
}
