use std::ptr;
use std::ffi::CStr;
use std::os::raw::c_char;

#[repr(C)]
struct MbedtlsSslContext {
    handshake: *mut MbedtlsSslHandshakeParams,
    renego_status: i32,
    renego_records_seen: i32,
    session: *mut MbedtlsSslSession,
    session_negotiate: *mut MbedtlsSslSession,
    conf: *const MbedtlsSslConfig,
    state: i32,
}

#[repr(C)]
struct MbedtlsSslHandshakeParams {
    resume: i32,
    flight: *mut MbedtlsSslFlightItem,
}

#[repr(C)]
struct MbedtlsSslSession {
    encrypt_then_mac: i32,
    id_len: usize,
}

#[repr(C)]
struct MbedtlsSslConfig {
    f_set_cache: Option<extern "C" fn(*mut std::ffi::c_void, *const MbedtlsSslSession) -> i32>,
    p_cache: *mut std::ffi::c_void,
    transport: i32,
}

#[repr(C)]
struct MbedtlsSslFlightItem;

extern "C" {
    fn mbedtls_ssl_session_free(session: *mut MbedtlsSslSession);
    fn mbedtls_ssl_set_timer(ssl: *mut MbedtlsSslContext, millisecs: u32);
    fn mbedtls_ssl_handshake_wrapup_free_hs_transform(ssl: *mut MbedtlsSslContext);
    fn mbedtls_debug_print_msg(ssl: *const MbedtlsSslContext, level: i32, file: *const c_char, line: i32, format: *const c_char, ...);
}

unsafe fn mbedtls_ssl_handshake_wrapup(ssl: *mut MbedtlsSslContext) {
    let resume = (*(*ssl).handshake).resume;
    mbedtls_debug_print_msg(ssl, 3, CStr::from_bytes_with_nul_unchecked(b"ssl_tls.c\0").as_ptr(), 3305, CStr::from_bytes_with_nul_unchecked(b"=> handshake wrapup\0").as_ptr());

    if (*ssl).renego_status == 1 {
        (*ssl).renego_status = 2;
        (*ssl).renego_records_seen = 0;
    }

    if !(*ssl).session.is_null() {
        (*(*ssl).session_negotiate).encrypt_then_mac = (*(*ssl).session).encrypt_then_mac;
        mbedtls_ssl_session_free((*ssl).session);
        // Use Box to manage memory safely in Rust
        Box::from_raw((*ssl).session);
    }

    (*ssl).session = (*ssl).session_negotiate;
    (*ssl).session_negotiate = ptr::null_mut();

    if let Some(f_set_cache) = (*(*ssl).conf).f_set_cache {
        if (*(*ssl).session).id_len != 0 && resume == 0 {
            if f_set_cache((*(*ssl).conf).p_cache, (*ssl).session) != 0 {
                mbedtls_debug_print_msg(ssl, 1, CStr::from_bytes_with_nul_unchecked(b"ssl_tls.c\0").as_ptr(), 3340, CStr::from_bytes_with_nul_unchecked(b"cache did not store session\0").as_ptr());
            }
        }
    }

    if (*(*ssl).conf).transport == 1 && !(*(*ssl).handshake).flight.is_null() {
        mbedtls_ssl_set_timer(ssl, 0);
        mbedtls_debug_print_msg(ssl, 3, CStr::from_bytes_with_nul_unchecked(b"ssl_tls.c\0").as_ptr(), 3352, CStr::from_bytes_with_nul_unchecked(b"skip freeing handshake and transform\0").as_ptr());
    } else {
        mbedtls_ssl_handshake_wrapup_free_hs_transform(ssl);
    }

    (*ssl).state += 1;
    mbedtls_debug_print_msg(ssl, 3, CStr::from_bytes_with_nul_unchecked(b"ssl_tls.c\0").as_ptr(), 3360, CStr::from_bytes_with_nul_unchecked(b"<= handshake wrapup\0").as_ptr());
}
