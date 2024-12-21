use std::ptr;

#[repr(C)]
struct MbedtlsSslContext {
    state: i32,
    handshake: *mut MbedtlsSslHandshakeParams,
    conf: *const MbedtlsSslConfig,
}

#[repr(C)]
struct MbedtlsSslHandshakeParams {
    retransmit_state: i32,
    new_session_ticket: i32,
}

#[repr(C)]
struct MbedtlsSslConfig {
    transport: i32,
}

extern "C" {
    fn mbedtls_ssl_flush_output(ssl: *mut MbedtlsSslContext) -> i32;
    fn mbedtls_ssl_flight_transmit(ssl: *mut MbedtlsSslContext) -> i32;
    fn mbedtls_ssl_write_certificate(ssl: *mut MbedtlsSslContext) -> i32;
    fn mbedtls_ssl_parse_certificate(ssl: *mut MbedtlsSslContext) -> i32;
    fn mbedtls_ssl_parse_change_cipher_spec(ssl: *mut MbedtlsSslContext) -> i32;
    fn mbedtls_ssl_write_change_cipher_spec(ssl: *mut MbedtlsSslContext) -> i32;
    fn mbedtls_ssl_parse_finished(ssl: *mut MbedtlsSslContext) -> i32;
    fn mbedtls_ssl_write_finished(ssl: *mut MbedtlsSslContext) -> i32;
    fn mbedtls_ssl_handshake_wrapup(ssl: *mut MbedtlsSslContext);
    fn mbedtls_debug_print_msg(ssl: *const MbedtlsSslContext, level: i32, file: *const i8, line: i32, format: *const i8, ...);
}

const MBEDTLS_SSL_HANDSHAKE_OVER: i32 = 0;
const MBEDTLS_SSL_HELLO_REQUEST: i32 = 1;
const MBEDTLS_SSL_CLIENT_HELLO: i32 = 2;
const MBEDTLS_SSL_SERVER_HELLO_VERIFY_REQUEST_SENT: i32 = 3;
const MBEDTLS_SSL_SERVER_HELLO: i32 = 4;
const MBEDTLS_SSL_SERVER_CERTIFICATE: i32 = 5;
const MBEDTLS_SSL_SERVER_KEY_EXCHANGE: i32 = 6;
const MBEDTLS_SSL_CERTIFICATE_REQUEST: i32 = 7;
const MBEDTLS_SSL_SERVER_HELLO_DONE: i32 = 8;
const MBEDTLS_SSL_CLIENT_CERTIFICATE: i32 = 9;
const MBEDTLS_SSL_CLIENT_KEY_EXCHANGE: i32 = 10;
const MBEDTLS_SSL_CERTIFICATE_VERIFY: i32 = 11;
const MBEDTLS_SSL_CLIENT_CHANGE_CIPHER_SPEC: i32 = 12;
const MBEDTLS_SSL_CLIENT_FINISHED: i32 = 13;
const MBEDTLS_SSL_SERVER_CHANGE_CIPHER_SPEC: i32 = 14;
const MBEDTLS_SSL_SERVER_FINISHED: i32 = 15;
const MBEDTLS_SSL_FLUSH_BUFFERS: i32 = 16;
const MBEDTLS_SSL_HANDSHAKE_WRAPUP: i32 = 17;

unsafe fn mbedtls_ssl_handshake_server_step(ssl: *mut MbedtlsSslContext) -> i32 {
    let mut ret: i32 = 0;

    if (*ssl).state == MBEDTLS_SSL_HANDSHAKE_OVER || (*ssl).handshake.is_null() {
        return -0x7100;
    }

    mbedtls_debug_print_msg(ssl, 2, "ssl_srv.c\0".as_ptr() as *const i8, 4453, "server state: %d\0".as_ptr() as *const i8, (*ssl).state);

    ret = mbedtls_ssl_flush_output(ssl);
    if ret != 0 {
        return ret;
    }

    if (*(*ssl).conf).transport == 1 && (*(*ssl).handshake).retransmit_state == 1 {
        ret = mbedtls_ssl_flight_transmit(ssl);
        if ret != 0 {
            return ret;
        }
    }

    match (*ssl).state {
        MBEDTLS_SSL_HELLO_REQUEST => {
            (*ssl).state = MBEDTLS_SSL_CLIENT_HELLO;
        }
        MBEDTLS_SSL_CLIENT_HELLO => {
            ret = ssl_parse_client_hello(ssl);
        }
        MBEDTLS_SSL_SERVER_HELLO_VERIFY_REQUEST_SENT => {
            return -0x6A80;
        }
        MBEDTLS_SSL_SERVER_HELLO => {
            ret = ssl_write_server_hello(ssl);
        }
        MBEDTLS_SSL_SERVER_CERTIFICATE => {
            ret = mbedtls_ssl_write_certificate(ssl);
        }
        MBEDTLS_SSL_SERVER_KEY_EXCHANGE => {
            ret = ssl_write_server_key_exchange(ssl);
        }
        MBEDTLS_SSL_CERTIFICATE_REQUEST => {
            ret = ssl_write_certificate_request(ssl);
        }
        MBEDTLS_SSL_SERVER_HELLO_DONE => {
            ret = ssl_write_server_hello_done(ssl);
        }
        MBEDTLS_SSL_CLIENT_CERTIFICATE => {
            ret = mbedtls_ssl_parse_certificate(ssl);
        }
        MBEDTLS_SSL_CLIENT_KEY_EXCHANGE => {
            ret = ssl_parse_client_key_exchange(ssl);
        }
        MBEDTLS_SSL_CERTIFICATE_VERIFY => {
            ret = ssl_parse_certificate_verify(ssl);
        }
        MBEDTLS_SSL_CLIENT_CHANGE_CIPHER_SPEC => {
            ret = mbedtls_ssl_parse_change_cipher_spec(ssl);
        }
        MBEDTLS_SSL_CLIENT_FINISHED => {
            ret = mbedtls_ssl_parse_finished(ssl);
        }
        MBEDTLS_SSL_SERVER_CHANGE_CIPHER_SPEC => {
            if (*(*ssl).handshake).new_session_ticket != 0 {
                ret = ssl_write_new_session_ticket(ssl);
            } else {
                ret = mbedtls_ssl_write_change_cipher_spec(ssl);
            }
        }
        MBEDTLS_SSL_SERVER_FINISHED => {
            ret = mbedtls_ssl_write_finished(ssl);
        }
        MBEDTLS_SSL_FLUSH_BUFFERS => {
            mbedtls_debug_print_msg(ssl, 2, "ssl_srv.c\0".as_ptr() as *const i8, 4558, "handshake: done\0".as_ptr() as *const i8);
            (*ssl).state = MBEDTLS_SSL_HANDSHAKE_WRAPUP;
        }
        MBEDTLS_SSL_HANDSHAKE_WRAPUP => {
            mbedtls_ssl_handshake_wrapup(ssl);
        }
        _ => {
            mbedtls_debug_print_msg(ssl, 1, "ssl_srv.c\0".as_ptr() as *const i8, 4567, "invalid state %d\0".as_ptr() as *const i8, (*ssl).state);
            return -0x7100;
        }
    }

    ret
}

// Dummy implementations for the missing functions
unsafe fn ssl_parse_client_hello(_ssl: *mut MbedtlsSslContext) -> i32 { 0 }
unsafe fn ssl_write_server_hello(_ssl: *mut MbedtlsSslContext) -> i32 { 0 }
unsafe fn ssl_write_server_key_exchange(_ssl: *mut MbedtlsSslContext) -> i32 { 0 }
unsafe fn ssl_write_certificate_request(_ssl: *mut MbedtlsSslContext) -> i32 { 0 }
unsafe fn ssl_write_server_hello_done(_ssl: *mut MbedtlsSslContext) -> i32 { 0 }
unsafe fn ssl_parse_client_key_exchange(_ssl: *mut MbedtlsSslContext) -> i32 { 0 }
unsafe fn ssl_parse_certificate_verify(_ssl: *mut MbedtlsSslContext) -> i32 { 0 }
unsafe fn ssl_write_new_session_ticket(_ssl: *mut MbedtlsSslContext) -> i32 { 0 }
