use std::ffi::CStr;
use std::os::raw::c_char;

use std::ffi::CStr;
use std::os::raw::c_char;

extern "C" {
    fn mbedtls_ssl_fetch_input(ssl: *mut mbedtls_ssl_context, nb_want: usize) -> i32;
    fn mbedtls_ssl_update_in_pointers(ssl: *mut mbedtls_ssl_context);
    fn mbedtls_debug_print_msg(ssl: *const mbedtls_ssl_context, level: i32, file: *const c_char, line: i32, format: *const c_char, ...);
    fn mbedtls_debug_print_ret(ssl: *const mbedtls_ssl_context, level: i32, file: *const c_char, line: i32, text: *const c_char, ret: i32);
    fn ssl_parse_record_header(ssl: *const mbedtls_ssl_context, buf: *mut u8, len: usize, rec: *mut mbedtls_record) -> i32;
    fn ssl_load_buffered_record(ssl: *mut mbedtls_ssl_context) -> i32;
    fn ssl_buffer_future_record(ssl: *mut mbedtls_ssl_context, rec: *const mbedtls_record) -> i32;
    fn ssl_check_client_reconnect(ssl: *mut mbedtls_ssl_context) -> i32;
    fn mbedtls_ssl_send_alert_message(ssl: *mut mbedtls_ssl_context, level: u8, message: u8) -> i32;
}

#[repr(C)]
struct mbedtls_ssl_context {
    // Add the fields of the struct here
}

#[repr(C)]
struct mbedtls_record {
    // Add the fields of the struct here
}

fn ssl_get_next_record(ssl: *mut mbedtls_ssl_context) -> i32 {
    let mut ret = -0x006E;
    let mut rec = mbedtls_record {
        // Initialize the fields of the struct here
    };

    ret = unsafe { ssl_load_buffered_record(ssl) };
    if ret != 0 {
        return ret;
    }

    ret = unsafe { mbedtls_ssl_fetch_input(ssl, mbedtls_ssl_in_hdr_len(ssl)) };
    if ret != 0 {
        unsafe {
            mbedtls_debug_print_ret(
                ssl,
                1,
                CStr::from_bytes_with_nul_unchecked(b"ssl_msg.c\0").as_ptr(),
                4590,
                CStr::from_bytes_with_nul_unchecked(b"mbedtls_ssl_fetch_input\0").as_ptr(),
                ret,
            );
        }
        return ret;
    }

    ret = unsafe { ssl_parse_record_header(ssl, (*ssl).in_hdr, (*ssl).in_left, &mut rec) };
    if ret != 0 {
        if (*ssl).conf.transport == 1 {
            if ret == -0x6480 {
                ret = unsafe { ssl_buffer_future_record(ssl, &rec) };
                if ret != 0 {
                    return ret;
                }
                ret = -0x6700;
            }
            if ret == -0x6700 {
                unsafe {
                    mbedtls_ssl_update_in_pointers(ssl);
                    (*ssl).in_msgtype = rec.type;
                    (*ssl).in_iv = (*ssl).in_msg = (*ssl).in_len.add(2);
                    (*ssl).in_msglen = rec.data_len;
                    ret = ssl_check_client_reconnect(ssl);
                    mbedtls_debug_print_ret(
                        ssl,
                        2,
                        CStr::from_bytes_with_nul_unchecked(b"ssl_msg.c\0").as_ptr(),
                        4627,
                        CStr::from_bytes_with_nul_unchecked(b"ssl_check_client_reconnect\0").as_ptr(),
                        ret,
                    );
                }
                if ret != 0 {
                    return ret;
                }
                unsafe {
                    (*ssl).next_record_offset = rec.buf_len;
                    mbedtls_debug_print_msg(
                        ssl,
                        1,
                        CStr::from_bytes_with_nul_unchecked(b"ssl_msg.c\0").as_ptr(),
                        4636,
                        CStr::from_bytes_with_nul_unchecked(b"discarding unexpected record (header)\0").as_ptr(),
                    );
                }
            } else {
                unsafe {
                    (*ssl).next_record_offset = 0;
                    (*ssl).in_left = 0;
                    mbedtls_debug_print_msg(
                        ssl,
                        1,
                        CStr::from_bytes_with_nul_unchecked(b"ssl_msg.c\0").as_ptr(),
                        4645,
                        CStr::from_bytes_with_nul_unchecked(b"discarding invalid record (header)\0").as_ptr(),
                    );
                }
            }
            return -0x6580;
        } else {
            return ret;
        }
    }

    if (*ssl).conf.transport == 1 {
        unsafe {
            (*ssl).next_record_offset = rec.buf_len;
            if (*ssl).next_record_offset < (*ssl).in_left {
                mbedtls_debug_print_msg(
                    ssl,
                    3,
                    CStr::from_bytes_with_nul_unchecked(b"ssl_msg.c\0").as_ptr(),
                    4665,
                    CStr::from_bytes_with_nul_unchecked(b"more than one record within datagram\0").as_ptr(),
                );
            }
        }
    } else {
        ret = unsafe { mbedtls_ssl_fetch_input(ssl, rec.buf_len) };
        if ret != 0 {
            unsafe {
                mbedtls_debug_print_ret(
                    ssl,
                    1,
                    CStr::from_bytes_with_nul_unchecked(b"ssl_msg.c\0").as_ptr(),
                    4677,
                    CStr::from_bytes_with_nul_unchecked(b"mbedtls_ssl_fetch_input\0").as_ptr(),
                    ret,
                );
            }
            return ret;
        }
        unsafe {
            (*ssl).in_left = 0;
        }
    }

    if (unsafe { ssl_prepare_record_content(ssl, &rec) }) != 0 {
        if (*ssl).conf.transport == 1 {
            if ret == -0x7180 {
                if (*ssl).state == MBEDTLS_SSL_CLIENT_FINISHED || (*ssl).state == MBEDTLS_SSL_SERVER_FINISHED {
                    if ret == -0x7180 {
                        unsafe {
                            mbedtls_ssl_send_alert_message(ssl, 2, 20);
                        }
                    }
                    return ret;
                }
                if (*ssl).conf.badmac_limit != 0 && unsafe { (*ssl).badmac_seen += 1 } >= (*ssl).conf.badmac_limit {
                    unsafe {
                        mbedtls_debug_print_msg(
                            ssl,
                            1,
                            CStr::from_bytes_with_nul_unchecked(b"ssl_msg.c\0").as_ptr(),
                            4717,
                            CStr::from_bytes_with_nul_unchecked(b"too many records with bad MAC\0").as_ptr(),
                        );
                    }
                    return -0x7180;
                }
                unsafe {
                    (*ssl).next_record_offset = 0;
                    (*ssl).in_left = 0;
                    mbedtls_debug_print_msg(
                        ssl,
                        1,
                        CStr::from_bytes_with_nul_unchecked(b"ssl_msg.c\0").as_ptr(),
                        4728,
                        CStr::from_bytes_with_nul_unchecked(b"discarding invalid record (mac)\0").as_ptr(),
                    );
                }
                return -0x6580;
            }
            return ret;
        } else {
            if ret == -0x7180 {
                unsafe {
                    mbedtls_ssl_send_alert_message(ssl, 2, 20);
                }
            }
            return ret;
        }
    }

    unsafe {
        mbedtls_ssl_update_in_pointers(ssl);
        (*ssl).in_iv = (*ssl).in_len.add(2);
        (*ssl).in_msgtype = rec.type;
        (*ssl).in_hdr[0] = rec.type;
        (*ssl).in_msg = rec.buf.add(rec.data_offset);
        (*ssl).in_msglen = rec.data_len;
        (*ssl).in_len[0] = (rec.data_len >> 8) as u8;
        (*ssl).in_len[1] = rec.data_len as u8;
    }

    0
}
