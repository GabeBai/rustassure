use mbedtls_sys::{
    mbedtls_ssl_context, mbedtls_ssl_chk_buf_ptr, mbedtls_debug_print_msg,
};

fn ssl_write_encrypt_then_mac_ext00(
    ssl: &mut mbedtls_ssl_context,
    buf: &mut [u8],
    end: *const u8,
    olen: &mut usize,
) -> i32 {
    let mut p = buf.as_mut_ptr();
    *olen = 0;
    if ssl.conf.encrypt_then_mac == 0 || ssl.conf.max_minor_ver == 0 {
        return 0;
    }
    mbedtls_debug_print_msg(ssl, 3, "ssl_cli.c", 607, "client hello, adding encrypt_then_mac extension");
    if mbedtls_ssl_chk_buf_ptr(p, end, 4) != 0 {
        return -0x6A00;
    }
    unsafe {
        *p = (22 >> 8) as u8;
        p = p.add(1);
        *p = (22 & 0xFF) as u8;
        p = p.add(1);
        *p = 0x00;
        p = p.add(1);
        *p = 0x00;
    }
    *olen = 4;
    return 0;
}
