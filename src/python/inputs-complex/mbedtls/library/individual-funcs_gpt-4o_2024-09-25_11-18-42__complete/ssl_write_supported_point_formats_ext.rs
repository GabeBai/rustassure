use std::slice;

#[repr(C)]
struct MbedtlsSslContext {
    handshake: *mut MbedtlsSslHandshakeParams,
    // Add other fields as necessary
}

#[repr(C)]
struct MbedtlsSslHandshakeParams {
    cli_exts: u32,
    // Add other fields as necessary
}

extern "C" {
    fn mbedtls_debug_print_msg(
        ssl: *const MbedtlsSslContext,
        level: i32,
        file: *const i8,
        line: i32,
        format: *const i8,
        ...
    );
}

fn ssl_write_supported_point_formats_ext(
    ssl: &mut MbedtlsSslContext,
    buf: &mut [u8],
    olen: &mut usize,
) {
    let p = buf.as_mut_ptr();
    unsafe {
        if ((*ssl.handshake).cli_exts & (1 << 0)) == 0 {
            *olen = 0;
            return;
        }

        mbedtls_debug_print_msg(
            ssl,
            3,
            b"ssl_srv.c\0".as_ptr() as *const i8,
            2408,
            b"server hello, supported_point_formats extension\0".as_ptr() as *const i8,
        );

        *p.offset(0) = ((11 >> 8) & 0xFF) as u8;
        *p.offset(1) = (11 & 0xFF) as u8;
        *p.offset(2) = 0x00;
        *p.offset(3) = 2;
        *p.offset(4) = 1;
        *p.offset(5) = 0;
        *olen = 6;
    }
}

fn main() {
    // Example usage
    let mut ssl_context = MbedtlsSslContext {
        handshake: std::ptr::null_mut(),
    };
    let mut buf = [0u8; 10];
    let mut olen = 0usize;

    ssl_write_supported_point_formats_ext(&mut ssl_context, &mut buf, &mut olen);
    println!("Output length: {}", olen);
}
