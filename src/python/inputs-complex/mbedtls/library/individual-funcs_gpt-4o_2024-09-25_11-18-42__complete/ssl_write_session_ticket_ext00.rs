use std::ptr;
use std::slice;
use std::ffi::CStr;
use std::os::raw::c_char;

#[repr(C)]
struct MbedtlsSslContext {
    conf: *const MbedtlsSslConfig,
    session_negotiate: *mut MbedtlsSslSession,
}

#[repr(C)]
struct MbedtlsSslConfig {
    session_tickets: i32,
}

#[repr(C)]
struct MbedtlsSslSession {
    ticket_len: usize,
    ticket: *const u8,
}

extern "C" {
    fn mbedtls_debug_print_msg(ssl: *const MbedtlsSslContext, level: i32, file: *const c_char, line: i32, format: *const c_char, ...);
    fn mbedtls_ssl_chk_buf_ptr(p: *const u8, end: *const u8, needed: usize) -> i32;
}

fn ssl_write_session_ticket_ext00(ssl: &mut MbedtlsSslContext, buf: &mut [u8], end: *const u8, olen: &mut usize) -> i32 {
    let mut p = buf.as_mut_ptr();
    let tlen = unsafe { (*ssl.session_negotiate).ticket_len };
    *olen = 0;

    if unsafe { (*ssl.conf).session_tickets } == 0 {
        return 0;
    }

    unsafe {
        mbedtls_debug_print_msg(ssl, 3, CStr::from_bytes_with_nul_unchecked(b"ssl_cli.c\0").as_ptr(), 671, CStr::from_bytes_with_nul_unchecked(b"client hello, adding session ticket extension\0").as_ptr());
    }

    if unsafe { mbedtls_ssl_chk_buf_ptr(p, end, 4 + tlen) } != 0 {
        return -0x6A00;
    }

    unsafe {
        *p = ((35 >> 8) & 0xFF) as u8;
        p = p.add(1);
        *p = (35 & 0xFF) as u8;
        p = p.add(1);
        *p = ((tlen >> 8) & 0xFF) as u8;
        p = p.add(1);
        *p = (tlen & 0xFF) as u8;
        p = p.add(1);
    }

    *olen = 4;

    if unsafe { (*ssl.session_negotiate).ticket.is_null() } || tlen == 0 {
        return 0;
    }

    unsafe {
        mbedtls_debug_print_msg(ssl, 3, CStr::from_bytes_with_nul_unchecked(b"ssl_cli.c\0").as_ptr(), 688, CStr::from_bytes_with_nul_unchecked(b"sending session ticket of length %d\0").as_ptr(), tlen as i32);
    }

    unsafe {
        ptr::copy_nonoverlapping((*ssl.session_negotiate).ticket, p, tlen);
    }

    *olen += tlen;
    0
}
