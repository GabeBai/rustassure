fn mbedtls_ssl_cf_memcpy_offset(
    dst: &mut [u8],
    src_base: &[u8],
    offset_secret: usize,
    offset_min: usize,
    offset_max: usize,
    len: usize,
) {
    for offset in offset_min..=offset_max {
        if offset == offset_secret {
            dst.copy_from_slice(&src_base[offset..offset + len]);
        }
    }
}
