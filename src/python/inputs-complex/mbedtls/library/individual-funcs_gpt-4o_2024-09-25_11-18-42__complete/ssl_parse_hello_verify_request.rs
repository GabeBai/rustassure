use std::ffi::CString;
use std::ptr;
use std::slice;
use std::alloc::{alloc_zeroed, dealloc, Layout};

#[repr(C)]
struct MbedtlsSslContext {
    in_msg: *const u8,
    in_msglen: usize,
    conf: *const MbedtlsSslConfig,
    handshake: *mut MbedtlsSslHandshakeParams,
    state: i32,
}

#[repr(C)]
struct MbedtlsSslConfig {
    transport: i32,
    max_major_ver: i32,
    max_minor_ver: i32,
}

#[repr(C)]
struct MbedtlsSslHandshakeParams {
    verify_cookie: *mut u8,
    verify_cookie_len: u8,
}

extern "C" {
    fn mbedtls_ssl_hs_hdr_len(ssl: *const MbedtlsSslContext) -> usize;
    fn mbedtls_ssl_send_alert_message(ssl: *mut MbedtlsSslContext, level: u8, message: u8) -> i32;
    fn mbedtls_ssl_read_version(major: *mut i32, minor: *mut i32, transport: i32, ver: *const u8);
    fn mbedtls_ssl_reset_checksum(ssl: *mut MbedtlsSslContext);
    fn mbedtls_ssl_recv_flight_completed(ssl: *mut MbedtlsSslContext);
    fn mbedtls_debug_print_msg(ssl: *const MbedtlsSslContext, level: i32, file: *const i8, line: i32, format: *const i8, ...);
    fn mbedtls_debug_print_buf(ssl: *const MbedtlsSslContext, level: i32, file: *const i8, line: i32, text: *const i8, buf: *const u8, len: usize);
}

const MBEDTLS_SSL_CLIENT_HELLO: i32 = 0;

unsafe fn ssl_parse_hello_verify_request(ssl: *mut MbedtlsSslContext) -> i32 {
    let p = ssl.as_ref().unwrap().in_msg.add(mbedtls_ssl_hs_hdr_len(ssl));
    let mut major_ver = 0;
    let mut minor_ver = 0;
    let cookie_len;

    let file = CString::new("ssl_cli.c").unwrap();
    let msg1 = CString::new("=> parse hello verify request").unwrap();
    mbedtls_debug_print_msg(ssl, 2, file.as_ptr(), 1723, msg1.as_ptr());

    if mbedtls_ssl_hs_hdr_len(ssl) + 3 > ssl.as_ref().unwrap().in_msglen {
        let msg2 = CString::new("incoming HelloVerifyRequest message is too short").unwrap();
        mbedtls_debug_print_msg(ssl, 1, file.as_ptr(), 1732, msg2.as_ptr());
        mbedtls_ssl_send_alert_message(ssl, 2, 50);
        return -0x7980;
    }

    let buf_msg = CString::new("server version").unwrap();
    mbedtls_debug_print_buf(ssl, 3, file.as_ptr(), 1744, buf_msg.as_ptr(), p, 2);
    mbedtls_ssl_read_version(&mut major_ver, &mut minor_ver, ssl.as_ref().unwrap().conf.as_ref().unwrap().transport, p);
    let p = p.add(2);

    if major_ver < 3 || minor_ver < 2 || major_ver > ssl.as_ref().unwrap().conf.as_ref().unwrap().max_major_ver || minor_ver > ssl.as_ref().unwrap().conf.as_ref().unwrap().max_minor_ver {
        let msg3 = CString::new("bad server version").unwrap();
        mbedtls_debug_print_msg(ssl, 1, file.as_ptr(), 1757, msg3.as_ptr());
        mbedtls_ssl_send_alert_message(ssl, 2, 70);
        return -0x6E80;
    }

    cookie_len = *p;
    let p = p.add(1);

    if (ssl.as_ref().unwrap().in_msg.add(ssl.as_ref().unwrap().in_msglen) as usize) - (p as usize) < cookie_len as usize {
        let msg4 = CString::new("cookie length does not match incoming message size").unwrap();
        mbedtls_debug_print_msg(ssl, 1, file.as_ptr(), 1769, msg4.as_ptr());
        mbedtls_ssl_send_alert_message(ssl, 2, 50);
        return -0x7980;
    }

    let buf_msg2 = CString::new("cookie").unwrap();
    mbedtls_debug_print_buf(ssl, 3, file.as_ptr(), 1774, buf_msg2.as_ptr(), p, cookie_len as usize);

    if !ssl.as_ref().unwrap().handshake.as_ref().unwrap().verify_cookie.is_null() {
        let layout = Layout::array::<u8>(ssl.as_ref().unwrap().handshake.as_ref().unwrap().verify_cookie_len as usize).unwrap();
        dealloc(ssl.as_ref().unwrap().handshake.as_ref().unwrap().verify_cookie, layout);
    }

    let layout = Layout::array::<u8>(cookie_len as usize).unwrap();
    let verify_cookie = alloc_zeroed(layout);
    if verify_cookie.is_null() {
        let msg5 = CString::new("alloc failed").unwrap();
        mbedtls_debug_print_msg(ssl, 1, file.as_ptr(), 1781, msg5.as_ptr());
        return -0x7F00;
    }

    ptr::copy_nonoverlapping(p, verify_cookie, cookie_len as usize);
    ssl.as_mut().unwrap().handshake.as_mut().unwrap().verify_cookie = verify_cookie;
    ssl.as_mut().unwrap().handshake.as_mut().unwrap().verify_cookie_len = cookie_len;

    ssl.as_mut().unwrap().state = MBEDTLS_SSL_CLIENT_HELLO;
    mbedtls_ssl_reset_checksum(ssl);
    mbedtls_ssl_recv_flight_completed(ssl);

    let msg6 = CString::new("<= parse hello verify request").unwrap();
    mbedtls_debug_print_msg(ssl, 2, file.as_ptr(), 1794, msg6.as_ptr());

    0
}
