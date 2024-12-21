use std::ffi::CStr;
use std::os::raw::{c_char, c_int, c_uint};

#[repr(C)]
pub struct MbedtlsSslSession {
    trunc_hmac: c_int,
    // other fields...
}

#[repr(C)]
pub struct MbedtlsSslContext {
    session_negotiate: *mut MbedtlsSslSession,
    // other fields...
}

extern "C" {
    fn mbedtls_debug_print_msg(
        ssl: *const MbedtlsSslContext,
        level: c_int,
        file: *const c_char,
        line: c_int,
        format: *const c_char,
        ...
    );
}

pub fn ssl_write_truncated_hmac_ext(
    ssl: &mut MbedtlsSslContext,
    buf: &mut [u8],
    olen: &mut usize,
) {
    let p = buf.as_mut_ptr();
    unsafe {
        if (*ssl.session_negotiate).trunc_hmac == 0 {
            *olen = 0;
            return;
        }

        let file = CStr::from_bytes_with_nul_unchecked(b"ssl_srv.c\0");
        let format = CStr::from_bytes_with_nul_unchecked(
            b"server hello, adding truncated hmac extension\0",
        );

        mbedtls_debug_print_msg(
            ssl,
            3,
            file.as_ptr(),
            2170,
            format.as_ptr(),
        );

        *p.offset(0) = ((4 >> 8) & 0xFF) as u8;
        *p.offset(1) = (4 & 0xFF) as u8;
        *p.offset(2) = 0x00;
        *p.offset(3) = 0x00;
        *olen = 4;
    }
}

fn main() {
    // Example usage
    let mut session = MbedtlsSslSession { trunc_hmac: 1 };
    let mut ssl = MbedtlsSslContext {
        session_negotiate: &mut session,
    };
    let mut buf = [0u8; 4];
    let mut olen = 0usize;

    ssl_write_truncated_hmac_ext(&mut ssl, &mut buf, &mut olen);

    println!("Output length: {}", olen);
    println!("Buffer: {:?}", &buf[..olen]);
}
