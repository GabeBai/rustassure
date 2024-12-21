use std::ptr;

struct MbedtlsSslContext {
    conf: MbedtlsSslConfig,
}

struct MbedtlsSslConfig {
    trunc_hmac: u8,
}

fn mbedtls_debug_print_msg(ssl: &MbedtlsSslContext, level: i32, file: &str, line: i32, format: &str) {
    // Implement the debug print functionality here
}

fn mbedtls_ssl_chk_buf_ptr(p: *const u8, end: *const u8, len: usize) -> i32 {
    // Implement the buffer check functionality here
    0
}

fn ssl_write_truncated_hmac_ext00(ssl: &MbedtlsSslContext, buf: &mut [u8], end: *const u8, olen: &mut usize) -> i32 {
    let mut p = buf.as_mut_ptr();
    *olen = 0;
    if ssl.conf.trunc_hmac == 0 {
        return 0;
    }
    mbedtls_debug_print_msg(ssl, 3, "ssl_cli.c", 576, "client hello, adding truncated_hmac extension");
    if mbedtls_ssl_chk_buf_ptr(p, end, 4) != 0 {
        return -0x6A00;
    }
    unsafe {
        *p = ((4 >> 8) & 0xFF) as u8;
        p = p.add(1);
        *p = (4 & 0xFF) as u8;
        p = p.add(1);
        *p = 0x00;
        p = p.add(1);
        *p = 0x00;
    }
    *olen = 4;
    0
}

fn main() {
    // Example usage
    let ssl_conf = MbedtlsSslConfig { trunc_hmac: 1 };
    let ssl_context = MbedtlsSslContext { conf: ssl_conf };
    let mut buf = [0u8; 10];
    let end = unsafe { buf.as_ptr().add(buf.len()) };
    let mut olen = 0;

    let result = ssl_write_truncated_hmac_ext00(&ssl_context, &mut buf, end, &mut olen);
    println!("Result: {}, olen: {}", result, olen);
}
