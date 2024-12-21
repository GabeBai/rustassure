use std::ptr;
use std::slice;

#[repr(C)]
struct MbedtlsSslContext {
    conf: *const MbedtlsSslConfig,
    // other fields...
}

#[repr(C)]
struct MbedtlsSslConfig {
    extended_ms: i32,
    max_minor_ver: i32,
    // other fields...
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

    fn mbedtls_ssl_chk_buf_ptr(
        p: *const u8,
        end: *const u8,
        len: usize,
    ) -> i32;
}

fn ssl_write_extended_ms_ext00(
    ssl: &mut MbedtlsSslContext,
    buf: &mut [u8],
    end: *const u8,
    olen: &mut usize,
) -> i32 {
    let mut p = buf.as_mut_ptr();
    *olen = 0;

    unsafe {
        if (*ssl.conf).extended_ms == 0 || (*ssl.conf).max_minor_ver == 0 {
            return 0;
        }

        mbedtls_debug_print_msg(
            ssl,
            3,
            b"ssl_cli.c\0".as_ptr() as *const i8,
            638,
            b"client hello, adding extended_master_secret extension\0".as_ptr() as *const i8,
        );

        if mbedtls_ssl_chk_buf_ptr(p, end, 4) != 0 {
            return -0x6A00;
        }

        *p = (0x0017 >> 8) as u8;
        p = p.add(1);
        *p = (0x0017 & 0xFF) as u8;
        p = p.add(1);
        *p = 0x00;
        p = p.add(1);
        *p = 0x00;
        p = p.add(1);

        *olen = 4;
    }

    0
}

fn main() {
    // Example usage
    let mut ssl_context = MbedtlsSslContext {
        conf: ptr::null(),
        // initialize other fields...
    };

    let mut buffer = [0u8; 256];
    let end = unsafe { buffer.as_ptr().add(buffer.len()) };
    let mut olen = 0;

    let result = ssl_write_extended_ms_ext00(&mut ssl_context, &mut buffer, end, &mut olen);
    println!("Result: {}, olen: {}", result, olen);
}
