use std::ptr;
use std::slice;
use std::ffi::CStr;
use std::os::raw::c_char;
use std::os::raw::c_int;
use std::os::raw::c_void;

#[repr(C)]
pub struct MbedtlsSslContext {
    renego_status: c_int,
    verify_data_len: usize,
    own_verify_data: [u8; 12],
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

    fn mbedtls_ssl_chk_buf_ptr(
        p: *const u8,
        end: *const u8,
        len: usize,
    ) -> c_int;
}

pub fn ssl_write_renegotiation_ext(
    ssl: &mut MbedtlsSslContext,
    buf: &mut [u8],
    end: *const u8,
    olen: &mut usize,
) -> c_int {
    let mut p = buf.as_mut_ptr();
    *olen = 0;

    if ssl.renego_status != 1 {
        return 0;
    }

    unsafe {
        mbedtls_debug_print_msg(
            ssl,
            3,
            CStr::from_bytes_with_nul_unchecked(b"ssl_cli.c\0").as_ptr(),
            177,
            CStr::from_bytes_with_nul_unchecked(b"client hello, adding renegotiation extension\0").as_ptr(),
        );
    }

    if unsafe { mbedtls_ssl_chk_buf_ptr(p, end, 5 + ssl.verify_data_len) } != 0 {
        return -0x6A00;
    }

    unsafe {
        *p = (0xFF01 >> 8) as u8;
        p = p.add(1);
        *p = (0xFF01 & 0xFF) as u8;
        p = p.add(1);
        *p = 0x00;
        p = p.add(1);
        *p = ((ssl.verify_data_len + 1) & 0xFF) as u8;
        p = p.add(1);
        *p = (ssl.verify_data_len & 0xFF) as u8;
        p = p.add(1);
        ptr::copy_nonoverlapping(ssl.own_verify_data.as_ptr(), p, ssl.verify_data_len);
    }

    *olen = 5 + ssl.verify_data_len;
    0
}
