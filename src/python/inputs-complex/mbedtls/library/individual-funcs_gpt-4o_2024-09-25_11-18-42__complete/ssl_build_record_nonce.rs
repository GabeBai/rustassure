use std::ptr;

fn ssl_build_record_nonce(
    dst_iv: &mut [u8],
    fixed_iv: &[u8],
    dynamic_iv: &[u8],
) {
    let dst_iv_len = dst_iv.len();
    let fixed_iv_len = fixed_iv.len();
    let dynamic_iv_len = dynamic_iv.len();

    dst_iv.fill(0);
    dst_iv[..fixed_iv_len].copy_from_slice(fixed_iv);
    let dst_iv_tail = &mut dst_iv[dst_iv_len - dynamic_iv_len..];
    for (i, &dynamic_byte) in dynamic_iv.iter().enumerate() {
        dst_iv_tail[i] ^= dynamic_byte;
    }
}
