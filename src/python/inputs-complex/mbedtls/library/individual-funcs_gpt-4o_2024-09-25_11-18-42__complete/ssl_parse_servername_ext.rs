use std::ffi::CString;
use std::ptr;

#[repr(C)]
struct MbedtlsSslContext {
    conf: *const MbedtlsSslConfig,
}

#[repr(C)]
struct MbedtlsSslConfig {
    f_sni: Option<extern "C" fn(*mut std::ffi::c_void, *mut MbedtlsSslContext, *const u8, usize) -> i32>,
    p_sni: *mut std::ffi::c_void,
}

extern "C" {
    fn mbedtls_debug_print_msg(ssl: *const MbedtlsSslContext, level: i32, file: *const i8, line: i32, format: *const i8, ...);
    fn mbedtls_ssl_send_alert_message(ssl: *mut MbedtlsSslContext, level: u8, message: u8) -> i32;
}

fn ssl_parse_servername_ext(ssl: &mut MbedtlsSslContext, buf: &[u8]) -> i32 {
    let ret = -0x006E;
    let len = buf.len();
    let mut servername_list_size;
    let mut hostname_len;
    let mut p;

    unsafe {
        let file = CString::new("ssl_srv.c").unwrap();
        let msg = CString::new("parse ServerName extension").unwrap();
        mbedtls_debug_print_msg(ssl, 3, file.as_ptr(), 87, msg.as_ptr());
    }

    if len < 2 {
        unsafe {
            let file = CString::new("ssl_srv.c").unwrap();
            let msg = CString::new("bad client hello message").unwrap();
            mbedtls_debug_print_msg(ssl, 1, file.as_ptr(), 91, msg.as_ptr());
            mbedtls_ssl_send_alert_message(ssl, 2, 50);
        }
        return -0x7900;
    }

    servername_list_size = ((buf[0] as usize) << 8) | (buf[1] as usize);
    if servername_list_size + 2 != len {
        unsafe {
            let file = CString::new("ssl_srv.c").unwrap();
            let msg = CString::new("bad client hello message").unwrap();
            mbedtls_debug_print_msg(ssl, 1, file.as_ptr(), 99, msg.as_ptr());
            mbedtls_ssl_send_alert_message(ssl, 2, 50);
        }
        return -0x7900;
    }

    p = &buf[2..];
    while servername_list_size > 2 {
        hostname_len = ((p[1] as usize) << 8) | (p[2] as usize);
        if hostname_len + 3 > servername_list_size {
            unsafe {
                let file = CString::new("ssl_srv.c").unwrap();
                let msg = CString::new("bad client hello message").unwrap();
                mbedtls_debug_print_msg(ssl, 1, file.as_ptr(), 111, msg.as_ptr());
                mbedtls_ssl_send_alert_message(ssl, 2, 50);
            }
            return -0x7900;
        }

        if p[0] == 0 {
            let ret = unsafe {
                if let Some(f_sni) = (*ssl.conf).f_sni {
                    f_sni((*ssl.conf).p_sni, ssl, p.as_ptr().add(3), hostname_len)
                } else {
                    0
                }
            };
            if ret != 0 {
                unsafe {
                    let file = CString::new("ssl_srv.c").unwrap();
                    let msg = CString::new("ssl_sni_wrapper").unwrap();
                    mbedtls_debug_print_msg(ssl, 1, file.as_ptr(), 123, msg.as_ptr());
                    mbedtls_ssl_send_alert_message(ssl, 2, 112);
                }
                return -0x7900;
            }
            return 0;
        }

        servername_list_size -= hostname_len + 3;
        p = &p[hostname_len + 3..];
    }

    if servername_list_size != 0 {
        unsafe {
            let file = CString::new("ssl_srv.c").unwrap();
            let msg = CString::new("bad client hello message").unwrap();
            mbedtls_debug_print_msg(ssl, 1, file.as_ptr(), 137, msg.as_ptr());
            mbedtls_ssl_send_alert_message(ssl, 2, 47);
        }
        return -0x7900;
    }

    0
}
