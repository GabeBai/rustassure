extern crate libc;

use std::ffi::CString;
use std::ptr;
use std::slice;
use std::str;

#[repr(C)]
struct MbedtlsSslContext {
    out_buf: *mut u8,
    in_buf: *mut u8,
    transform: *mut MbedtlsSslTransform,
    handshake: *mut MbedtlsSslHandshakeParams,
    session: *mut MbedtlsSslSession,
    session_negotiate: *mut MbedtlsSslSession,
    transform_negotiate: *mut MbedtlsSslTransform,
    hostname: *mut libc::c_char,
    cli_id: *mut u8,
    // other fields...
}

#[repr(C)]
struct MbedtlsSslTransform {
    // fields...
}

#[repr(C)]
struct MbedtlsSslHandshakeParams {
    // fields...
}

#[repr(C)]
struct MbedtlsSslSession {
    // fields...
}

extern "C" {
    fn mbedtls_ssl_transform_free(transform: *mut MbedtlsSslTransform);
    fn mbedtls_ssl_handshake_free(ssl: *mut MbedtlsSslContext);
    fn mbedtls_ssl_session_free(session: *mut MbedtlsSslSession);
    fn mbedtls_platform_zeroize(buf: *mut libc::c_void, len: libc::size_t);
    fn mbedtls_debug_print_msg(ssl: *const MbedtlsSslContext, level: libc::c_int, file: *const libc::c_char, line: libc::c_int, format: *const libc::c_char, ...);
}

unsafe fn mbedtls_ssl_free(ssl: *mut MbedtlsSslContext) {
    if ssl.is_null() {
        return;
    }

    mbedtls_debug_print_msg(ssl, 2, CString::new("ssl_tls.c").unwrap().as_ptr(), 6693, CString::new("=> free").unwrap().as_ptr());

    if !(*ssl).out_buf.is_null() {
        let out_buf_len = 13 + (0 + 16 + 48 + 256 + 0 + 16384);
        mbedtls_platform_zeroize((*ssl).out_buf as *mut libc::c_void, out_buf_len);
        libc::free((*ssl).out_buf as *mut libc::c_void);
        (*ssl).out_buf = ptr::null_mut();
    }

    if !(*ssl).in_buf.is_null() {
        let in_buf_len = 13 + (0 + 16 + 48 + 256 + 0 + 16384);
        mbedtls_platform_zeroize((*ssl).in_buf as *mut libc::c_void, in_buf_len);
        libc::free((*ssl).in_buf as *mut libc::c_void);
        (*ssl).in_buf = ptr::null_mut();
    }

    if !(*ssl).transform.is_null() {
        mbedtls_ssl_transform_free((*ssl).transform);
        libc::free((*ssl).transform as *mut libc::c_void);
    }

    if !(*ssl).handshake.is_null() {
        mbedtls_ssl_handshake_free(ssl);
        mbedtls_ssl_transform_free((*ssl).transform_negotiate);
        mbedtls_ssl_session_free((*ssl).session_negotiate);
        libc::free((*ssl).handshake as *mut libc::c_void);
        libc::free((*ssl).transform_negotiate as *mut libc::c_void);
        libc::free((*ssl).session_negotiate as *mut libc::c_void);
    }

    if !(*ssl).session.is_null() {
        mbedtls_ssl_session_free((*ssl).session);
        libc::free((*ssl).session as *mut libc::c_void);
    }

    if !(*ssl).hostname.is_null() {
        mbedtls_platform_zeroize((*ssl).hostname as *mut libc::c_void, libc::strlen((*ssl).hostname));
        libc::free((*ssl).hostname as *mut libc::c_void);
    }

    libc::free((*ssl).cli_id as *mut libc::c_void);

    mbedtls_debug_print_msg(ssl, 2, CString::new("ssl_tls.c").unwrap().as_ptr(), 6772, CString::new("<= free").unwrap().as_ptr());

    mbedtls_platform_zeroize(ssl as *mut libc::c_void, std::mem::size_of::<MbedtlsSslContext>());
}

fn main() {
    // Your main function code here
}
