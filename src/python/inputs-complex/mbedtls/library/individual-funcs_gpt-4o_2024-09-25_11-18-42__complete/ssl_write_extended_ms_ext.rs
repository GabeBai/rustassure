use std::ffi::CStr;
use std::os::raw::c_char;

#[repr(C)]
pub struct MbedtlsSslContext {
    handshake: *mut MbedtlsSslHandshakeParams,
    minor_ver: i32,
}

#[repr(C)]
pub struct MbedtlsSslHandshakeParams {
    extended_ms: i32,
}

extern "C" {
    fn mbedtls_debug_print_msg(
        ssl: *const MbedtlsSslContext,
        level: i32,
        file: *const c_char,
        line: i32,
        format: *const c_char,
    );
}

pub fn ssl_write_extended_ms_ext(
    ssl: &mut MbedtlsSslContext,
    buf: &mut [u8],
    olen: &mut usize,
) {
    let p = &mut buf[..];
    if unsafe { (*ssl.handshake).extended_ms == 0 || ssl.minor_ver == 0 } {
        *olen = 0;
        return;
    }

    let file = CStr::from_bytes_with_nul(b"ssl_srv.c\0").unwrap();
    let format = CStr::from_bytes_with_nul(b"server hello, adding extended master secret extension\0").unwrap();
    unsafe {
        mbedtls_debug_print_msg(
            ssl,
            3,
            file.as_ptr(),
            2288,
            format.as_ptr(),
        );
    }

    p[0] = (0x0017 >> 8) as u8;
    p[1] = (0x0017 & 0xFF) as u8;
    p[2] = 0x00;
    p[3] = 0x00;
    *olen = 4;
}
