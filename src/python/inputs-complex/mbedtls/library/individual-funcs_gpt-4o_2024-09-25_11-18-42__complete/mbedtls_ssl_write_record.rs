use std::ptr;
use std::slice;
use std::mem::MaybeUninit;

#[derive(Debug)]
struct MbedtlsRecord {
    ctr: [u8; 8],
    r#type: u8,
    ver: [u8; 2],
    buf: *mut u8,
    buf_len: usize,
    data_offset: usize,
    data_len: usize,
}

#[derive(Debug)]
struct MbedtlsSslContext {
    major_ver: u8,
    minor_ver: u8,
    conf: *const MbedtlsSslConfig,
    out_msglen: usize,
    out_msgtype: u8,
    out_hdr: *mut u8,
    out_ctr: [u8; 8],
    cur_out_ctr: [u8; 8],
    out_len: *mut u8,
    transform_out: *mut MbedtlsSslTransform,
    out_iv: *mut u8,
    out_msg: *mut u8,
    out_buf: *mut u8,
    out_left: usize,
}

#[derive(Debug)]
struct MbedtlsSslConfig {
    transport: u8,
    f_rng: Option<extern "C" fn(*mut std::ffi::c_void, *mut u8, usize) -> i32>,
    p_rng: *mut std::ffi::c_void,
}

#[derive(Debug)]
struct MbedtlsSslTransform;

extern "C" {
    fn mbedtls_ssl_write_version(major: u8, minor: u8, transport: u8, ver: *mut u8);
    fn mbedtls_ssl_encrypt_buf(
        ssl: *mut MbedtlsSslContext,
        transform: *mut MbedtlsSslTransform,
        rec: *mut MbedtlsRecord,
        f_rng: Option<extern "C" fn(*mut std::ffi::c_void, *mut u8, usize) -> i32>,
        p_rng: *mut std::ffi::c_void,
    ) -> i32;
    fn mbedtls_ssl_update_out_pointers(ssl: *mut MbedtlsSslContext, transform: *mut MbedtlsSslTransform);
    fn mbedtls_debug_print_msg(ssl: *const MbedtlsSslContext, level: i32, file: &str, line: i32, format: &str, ...);
    fn mbedtls_debug_print_ret(ssl: *const MbedtlsSslContext, level: i32, file: &str, line: i32, text: &str, ret: i32);
    fn mbedtls_debug_print_buf(ssl: *const MbedtlsSslContext, level: i32, file: &str, line: i32, text: &str, buf: *const u8, len: usize);
    fn mbedtls_ssl_flush_output(ssl: *mut MbedtlsSslContext) -> i32;
    fn mbedtls_ssl_out_hdr_len(ssl: *const MbedtlsSslContext) -> usize;
    fn ssl_get_remaining_space_in_datagram(ssl: *mut MbedtlsSslContext) -> i32;
    fn ssl_get_remaining_payload_in_datagram(ssl: *mut MbedtlsSslContext) -> i32;
}

const MBEDTLS_ERR_SSL_INTERNAL_ERROR: i32 = -0x6C00;
const MBEDTLS_ERR_SSL_COUNTER_WRAPPING: i32 = -0x6B80;

pub fn mbedtls_ssl_write_record(ssl: &mut MbedtlsSslContext, force_flush: u8) -> i32 {
    let mut ret;
    let mut done = 0;
    let mut len = ssl.out_msglen;
    let mut flush = force_flush;

    unsafe {
        mbedtls_debug_print_msg(ssl, 2, "ssl_msg.c", 2719, "=> write record");

        if done == 0 {
            let mut i;
            let mut protected_record_size;
            let out_buf_len = 13 + (0 + 16 + 48 + 256 + 0 + 16384);

            mbedtls_ssl_write_version(ssl.major_ver, ssl.minor_ver, (*ssl.conf).transport, ssl.out_hdr.add(1));
            ptr::copy_nonoverlapping(ssl.cur_out_ctr.as_ptr(), ssl.out_ctr.as_mut_ptr(), 8);
            *ssl.out_len.add(0) = (len >> 8) as u8;
            *ssl.out_len.add(1) = len as u8;

            if !ssl.transform_out.is_null() {
                let mut rec = MbedtlsRecord {
                    ctr: [0; 8],
                    r#type: 0,
                    ver: [0; 2],
                    buf: ssl.out_iv,
                    buf_len: out_buf_len - (ssl.out_iv as usize - ssl.out_buf as usize),
                    data_offset: ssl.out_msg as usize - ssl.out_iv as usize,
                    data_len: ssl.out_msglen,
                };

                ptr::copy_nonoverlapping(ssl.out_ctr.as_ptr(), rec.ctr.as_mut_ptr(), 8);
                mbedtls_ssl_write_version(ssl.major_ver, ssl.minor_ver, (*ssl.conf).transport, rec.ver.as_mut_ptr());
                rec.r#type = ssl.out_msgtype;

                ret = mbedtls_ssl_encrypt_buf(ssl, ssl.transform_out, &mut rec, (*ssl.conf).f_rng, (*ssl.conf).p_rng);
                if ret != 0 {
                    mbedtls_debug_print_ret(ssl, 1, "ssl_msg.c", 2792, "ssl_encrypt_buf", ret);
                    return ret;
                }

                if rec.data_offset != 0 {
                    mbedtls_debug_print_msg(ssl, 1, "ssl_msg.c", 2798, "should never happen");
                    return MBEDTLS_ERR_SSL_INTERNAL_ERROR;
                }

                ssl.out_msgtype = rec.r#type;
                ssl.out_msglen = rec.data_len;
                *ssl.out_len.add(0) = (rec.data_len >> 8) as u8;
                *ssl.out_len.add(1) = rec.data_len as u8;
            }

            protected_record_size = len + mbedtls_ssl_out_hdr_len(ssl);

            if (*ssl.conf).transport == 1 {
                ret = ssl_get_remaining_space_in_datagram(ssl);
                if ret < 0 {
                    return ret;
                }

                if protected_record_size > ret as usize {
                    return MBEDTLS_ERR_SSL_INTERNAL_ERROR;
                }
            }

            *ssl.out_hdr.add(0) = ssl.out_msgtype;
            mbedtls_debug_print_msg(ssl, 3, "ssl_msg.c", 2837, "output record: msgtype = {}, version = [{}, {}], msglen = {}", ssl.out_hdr.add(0), ssl.out_hdr.add(1), ssl.out_hdr.add(2), len);
            mbedtls_debug_print_buf(ssl, 4, "ssl_msg.c", 2840, "output record sent to network", ssl.out_hdr, protected_record_size);

            ssl.out_left += protected_record_size;
            ssl.out_hdr = ssl.out_hdr.add(protected_record_size);
            mbedtls_ssl_update_out_pointers(ssl, ssl.transform_out);

            for i in (0..8).rev() {
                if ssl.cur_out_ctr[i] != 0 {
                    ssl.cur_out_ctr[i] += 1;
                    break;
                }
            }

            if ssl.cur_out_ctr[0] == 0 {
                mbedtls_debug_print_msg(ssl, 1, "ssl_msg.c", 2853, "outgoing message counter would wrap");
                return MBEDTLS_ERR_SSL_COUNTER_WRAPPING;
            }
        }

        if (*ssl.conf).transport == 1 && flush == 0 {
            ret = ssl_get_remaining_payload_in_datagram(ssl);
            if ret < 0 {
                mbedtls_debug_print_ret(ssl, 1, "ssl_msg.c", 2867, "ssl_get_remaining_payload_in_datagram", ret);
                return ret;
            }

            if ret == 0 {
                flush = 1;
            } else {
                mbedtls_debug_print_msg(ssl, 2, "ssl_msg.c", 2878, "Still {} bytes available in current datagram", ret);
            }
        }

        if flush == 1 {
            ret = mbedtls_ssl_flush_output(ssl);
            if ret != 0 {
                mbedtls_debug_print_ret(ssl, 1, "ssl_msg.c", 2886, "mbedtls_ssl_flush_output", ret);
                return ret;
            }
        }

        mbedtls_debug_print_msg(ssl, 2, "ssl_msg.c", 2890, "<= write record");
    }

    0
}
