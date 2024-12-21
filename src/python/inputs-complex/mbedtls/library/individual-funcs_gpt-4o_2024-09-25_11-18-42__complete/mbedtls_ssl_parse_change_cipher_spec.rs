use std::ffi::CString;
use std::ptr;
use std::mem;
use std::os::raw::c_int;

extern "C" {
    fn mbedtls_ssl_read_record(ssl: *mut mbedtls_ssl_context, update_hs_digest: c_int) -> c_int;
    fn mbedtls_ssl_send_alert_message(ssl: *mut mbedtls_ssl_context, level: u8, message: u8) -> c_int;
    fn mbedtls_ssl_update_in_pointers(ssl: *mut mbedtls_ssl_context);
    fn mbedtls_ssl_dtls_replay_reset(ssl: *mut mbedtls_ssl_context);
    fn mbedtls_debug_print_msg(ssl: *const mbedtls_ssl_context, level: c_int, file: *const i8, line: c_int, format: *const i8, ...);
    fn mbedtls_debug_print_ret(ssl: *const mbedtls_ssl_context, level: c_int, file: *const i8, line: c_int, text: *const i8, ret: c_int);
}

#[repr(C)]
struct mbedtls_ssl_context {
    // Define the fields of the struct as needed
    in_msgtype: u8,
    transform_in: *mut mbedtls_ssl_transform,
    transform_negotiate: *mut mbedtls_ssl_transform,
    session_in: *mut mbedtls_ssl_session,
    session_negotiate: *mut mbedtls_ssl_session,
    conf: *const mbedtls_ssl_config,
    in_ctr: [u8; 8],
    in_epoch: u16,
    state: c_int,
}

#[repr(C)]
struct mbedtls_ssl_transform {
    // Define the fields of the struct as needed
}

#[repr(C)]
struct mbedtls_ssl_session {
    // Define the fields of the struct as needed
}

#[repr(C)]
struct mbedtls_ssl_config {
    transport: c_int,
}

const MBEDTLS_ERR_SSL_BAD_HS_CHANGE_CIPHER_SPEC: c_int = -0x7700;
const MBEDTLS_ERR_SSL_INTERNAL_ERROR: c_int = -0x6B80;

unsafe fn mbedtls_ssl_parse_change_cipher_spec(ssl: *mut mbedtls_ssl_context) -> c_int {
    let mut ret: c_int = -0x006E;
    let file = CString::new("ssl_msg.c").unwrap();
    let msg1 = CString::new("=> parse change cipher spec").unwrap();
    let msg2 = CString::new("mbedtls_ssl_read_record").unwrap();
    let msg3 = CString::new("bad change cipher spec message").unwrap();
    let msg4 = CString::new("switching to new transform spec for inbound data").unwrap();
    let msg5 = CString::new("DTLS epoch would wrap").unwrap();
    let msg6 = CString::new("<= parse change cipher spec").unwrap();

    mbedtls_debug_print_msg(ssl, 2, file.as_ptr(), 4991, msg1.as_ptr());

    ret = mbedtls_ssl_read_record(ssl, 1);
    if ret != 0 {
        mbedtls_debug_print_ret(ssl, 1, file.as_ptr(), 4995, msg2.as_ptr(), ret);
        return ret;
    }

    if (*ssl).in_msgtype != 20 {
        mbedtls_debug_print_msg(ssl, 1, file.as_ptr(), 5001, msg3.as_ptr());
        mbedtls_ssl_send_alert_message(ssl, 2, 10);
        return MBEDTLS_ERR_SSL_BAD_HS_CHANGE_CIPHER_SPEC;
    }

    mbedtls_debug_print_msg(ssl, 3, file.as_ptr(), 5014, msg4.as_ptr());
    (*ssl).transform_in = (*ssl).transform_negotiate;
    (*ssl).session_in = (*ssl).session_negotiate;

    if (*(*ssl).conf).transport == 1 {
        mbedtls_ssl_dtls_replay_reset(ssl);
        if { (*ssl).in_epoch += 1; (*ssl).in_epoch } == 0 {
            mbedtls_debug_print_msg(ssl, 1, file.as_ptr(), 5028, msg5.as_ptr());
            return MBEDTLS_ERR_SSL_INTERNAL_ERROR;
        }
    } else {
        ptr::write_bytes((*ssl).in_ctr.as_mut_ptr(), 0, 8);
    }

    mbedtls_ssl_update_in_pointers(ssl);
    (*ssl).state += 1;
    mbedtls_debug_print_msg(ssl, 2, file.as_ptr(), 5055, msg6.as_ptr());

    0
}
