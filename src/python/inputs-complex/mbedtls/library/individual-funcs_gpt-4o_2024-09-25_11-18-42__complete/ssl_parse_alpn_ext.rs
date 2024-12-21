use std::ffi::CStr;
use std::ptr;
use std::slice;

#[repr(C)]
struct MbedtlsSslContext {
    conf: *const MbedtlsSslConfig,
    alpn_chosen: *const i8,
}

#[repr(C)]
struct MbedtlsSslConfig {
    alpn_list: *const *const i8,
}

extern "C" {
    fn mbedtls_ssl_send_alert_message(ssl: *mut MbedtlsSslContext, level: u8, message: u8) -> i32;
}

fn ssl_parse_alpn_ext(ssl: &mut MbedtlsSslContext, buf: &[u8]) -> i32 {
    unsafe {
        let conf = &*ssl.conf;
        if conf.alpn_list.is_null() {
            return 0;
        }

        if buf.len() < 4 {
            mbedtls_ssl_send_alert_message(ssl, 2, 50);
            return -0x7900;
        }

        let list_len = ((buf[0] as usize) << 8) | (buf[1] as usize);
        if list_len != buf.len() - 2 {
            mbedtls_ssl_send_alert_message(ssl, 2, 50);
            return -0x7900;
        }

        let start = &buf[2..];
        let end = buf.len();
        let mut theirs = 2;

        while theirs < end {
            let cur_len = buf[theirs] as usize;
            theirs += 1;
            if cur_len > end - theirs {
                mbedtls_ssl_send_alert_message(ssl, 2, 50);
                return -0x7900;
            }
            if cur_len == 0 {
                mbedtls_ssl_send_alert_message(ssl, 2, 47);
                return -0x7900;
            }
            theirs += cur_len;
        }

        let mut ours = conf.alpn_list;
        while !(*ours).is_null() {
            let ours_len = CStr::from_ptr(*ours).to_bytes().len();
            theirs = 2;
            while theirs < end {
                let cur_len = buf[theirs] as usize;
                theirs += 1;
                if cur_len == ours_len && &buf[theirs..theirs + cur_len] == CStr::from_ptr(*ours).to_bytes() {
                    ssl.alpn_chosen = *ours;
                    return 0;
                }
                theirs += cur_len;
            }
            ours = ours.add(1);
        }

        mbedtls_ssl_send_alert_message(ssl, 2, 120);
        return -0x7900;
    }
}

fn main() {
    // Example usage
}
