use std::ffi::CString;
use std::ptr;
use std::os::raw::c_char;

#[repr(C)]
struct MbedtlsSslContext {
    // Define the fields of the struct as per your requirements
    keep_current_message: i32,
    conf: *const MbedtlsSslConfig,
    in_msgtype: i32,
    // Add other fields as necessary
}

#[repr(C)]
struct MbedtlsSslConfig {
    transport: i32,
    // Add other fields as necessary
}

extern "C" {
    fn mbedtls_ssl_handle_message_type(ssl: *mut MbedtlsSslContext) -> i32;
    fn mbedtls_ssl_update_handshake_status(ssl: *mut MbedtlsSslContext);
    fn mbedtls_ssl_read_record(ssl: *mut MbedtlsSslContext, update_hs_digest: u32) -> i32;
    fn mbedtls_debug_print_msg(ssl: *const MbedtlsSslContext, level: i32, file: *const c_char, line: i32, format: *const c_char, ...);
    fn mbedtls_debug_print_ret(ssl: *const MbedtlsSslContext, level: i32, file: *const c_char, line: i32, text: *const c_char, ret: i32);
    fn ssl_load_buffered_message(ssl: *mut MbedtlsSslContext) -> i32;
    fn ssl_buffer_message(ssl: *mut MbedtlsSslContext) -> i32;
    fn ssl_next_record_is_in_datagram(ssl: *mut MbedtlsSslContext) -> i32;
    fn ssl_consume_current_message(ssl: *mut MbedtlsSslContext) -> i32;
    fn ssl_get_next_record(ssl: *mut MbedtlsSslContext) -> i32;
    fn ssl_record_is_in_progress(ssl: *mut MbedtlsSslContext) -> i32;
}

fn mbedtls_ssl_read_record(ssl: &mut MbedtlsSslContext, update_hs_digest: u32) -> i32 {
    let mut ret = -0x006E;
    let file = CString::new("ssl_msg.c").unwrap();
    let msg = CString::new("=> read record").unwrap();

    unsafe {
        mbedtls_debug_print_msg(ssl, 2, file.as_ptr(), 3922, msg.as_ptr());

        if ssl.keep_current_message == 0 {
            loop {
                ret = ssl_consume_current_message(ssl);
                if ret != 0 {
                    return ret;
                }

                if ssl_record_is_in_progress(ssl) == 0 {
                    let mut have_buffered = 0;
                    if (*ssl.conf).transport == 1 && ssl_next_record_is_in_datagram(ssl) == 0 {
                        if ssl_load_buffered_message(ssl) == 0 {
                            have_buffered = 1;
                        }
                    }

                    if have_buffered == 0 {
                        ret = ssl_get_next_record(ssl);
                        if ret == -0x6580 {
                            continue;
                        }
                        if ret != 0 {
                            let msg = CString::new("ssl_get_next_record").unwrap();
                            mbedtls_debug_print_ret(ssl, 1, file.as_ptr(), 3955, msg.as_ptr(), ret);
                            return ret;
                        }
                    }
                }

                ret = mbedtls_ssl_handle_message_type(ssl);
                if ret == -0x6480 {
                    ret = ssl_buffer_message(ssl);
                    if ret != 0 {
                        return ret;
                    }
                    ret = -0x6580;
                }

                if ret != -0x6680 && ret != -0x6580 {
                    break;
                }
            }

            if ret != 0 {
                let msg = CString::new("mbedtls_ssl_handle_message_type").unwrap();
                mbedtls_debug_print_ret(ssl, 1, file.as_ptr(), 3980, msg.as_ptr(), ret);
                return ret;
            }

            if ssl.in_msgtype == 22 && update_hs_digest == 1 {
                mbedtls_ssl_update_handshake_status(ssl);
            }
        } else {
            let msg = CString::new("reuse previously read message").unwrap();
            mbedtls_debug_print_msg(ssl, 2, file.as_ptr(), 3992, msg.as_ptr());
            ssl.keep_current_message = 0;
        }

        let msg = CString::new("<= read record").unwrap();
        mbedtls_debug_print_msg(ssl, 2, file.as_ptr(), 3996, msg.as_ptr());
    }

    0
}
