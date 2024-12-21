use std::ptr;

extern "C" {
    fn mbedtls_ssl_write_handshake_msg(ssl: *mut mbedtls_ssl_context) -> i32;
    fn mbedtls_ssl_send_flight_completed(ssl: *mut mbedtls_ssl_context);
    fn mbedtls_ssl_flight_transmit(ssl: *mut mbedtls_ssl_context) -> i32;
    fn mbedtls_debug_print_msg(ssl: *const mbedtls_ssl_context, level: i32, file: *const i8, line: i32, format: *const i8, ...);
    fn mbedtls_debug_print_ret(ssl: *const mbedtls_ssl_context, level: i32, file: *const i8, line: i32, text: *const i8, ret: i32);
}

#[repr(C)]
struct mbedtls_ssl_context {
    out_msglen: usize,
    out_msgtype: u8,
    out_msg: [u8; 4],
    state: i32,
    conf: *const mbedtls_ssl_config,
}

#[repr(C)]
struct mbedtls_ssl_config {
    transport: i32,
}

fn ssl_write_server_hello_done(ssl: *mut mbedtls_ssl_context) -> i32 {
    let mut ret: i32 = -0x006E;
    unsafe {
        mbedtls_debug_print_msg(ssl, 2, b"ssl_srv.c\0".as_ptr() as *const i8, 3523, b"=> write server hello done\0".as_ptr() as *const i8);
        (*ssl).out_msglen = 4;
        (*ssl).out_msgtype = 22;
        (*ssl).out_msg[0] = 14;
        (*ssl).state += 1;
        if (*(*ssl).conf).transport == 1 {
            mbedtls_ssl_send_flight_completed(ssl);
        }
        ret = mbedtls_ssl_write_handshake_msg(ssl);
        if ret != 0 {
            mbedtls_debug_print_ret(ssl, 1, b"ssl_srv.c\0".as_ptr() as *const i8, 3538, b"mbedtls_ssl_write_handshake_msg\0".as_ptr() as *const i8, ret);
            return ret;
        }
        if (*(*ssl).conf).transport == 1 {
            ret = mbedtls_ssl_flight_transmit(ssl);
            if ret != 0 {
                mbedtls_debug_print_ret(ssl, 1, b"ssl_srv.c\0".as_ptr() as *const i8, 3546, b"mbedtls_ssl_flight_transmit\0".as_ptr() as *const i8, ret);
                return ret;
            }
        }
        mbedtls_debug_print_msg(ssl, 2, b"ssl_srv.c\0".as_ptr() as *const i8, 3551, b"<= write server hello done\0".as_ptr() as *const i8);
    }
    0
}
