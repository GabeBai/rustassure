use std::ffi::CString;
use std::ptr;
use std::alloc::{alloc, dealloc, Layout};
use std::mem;

struct MbedtlsSslContext {
    out_msg: *const u8,
    out_msglen: usize,
    out_msgtype: u8,
    handshake: *mut MbedtlsSslHandshakeParams,
}

struct MbedtlsSslFlightItem {
    p: *mut u8,
    len: usize,
    r#type: u8,
    next: *mut MbedtlsSslFlightItem,
}

struct MbedtlsSslHandshakeParams {
    flight: *mut MbedtlsSslFlightItem,
}

extern "C" {
    fn mbedtls_debug_print_msg(ssl: *const MbedtlsSslContext, level: i32, file: *const i8, line: i32, format: *const i8, ...);
    fn mbedtls_debug_print_buf(ssl: *const MbedtlsSslContext, level: i32, file: *const i8, line: i32, text: *const i8, buf: *const u8, len: usize);
}

fn ssl_flight_append(ssl: *mut MbedtlsSslContext) -> i32 {
    unsafe {
        let file = CString::new("ssl_msg.c").unwrap();
        let msg1 = CString::new("=> ssl_flight_append").unwrap();
        let msg2 = CString::new("message appended to flight").unwrap();
        let msg3 = CString::new("alloc %d bytes failed").unwrap();
        let msg4 = CString::new("<= ssl_flight_append").unwrap();

        mbedtls_debug_print_msg(ssl, 2, file.as_ptr(), 2191, msg1.as_ptr());
        mbedtls_debug_print_buf(ssl, 4, file.as_ptr(), 2193, msg2.as_ptr(), (*ssl).out_msg, (*ssl).out_msglen);

        let msg_layout = Layout::new::<MbedtlsSslFlightItem>();
        let msg_ptr = alloc(msg_layout) as *mut MbedtlsSslFlightItem;
        if msg_ptr.is_null() {
            mbedtls_debug_print_msg(ssl, 1, file.as_ptr(), 2199, msg3.as_ptr(), mem::size_of::<MbedtlsSslFlightItem>());
            return -0x7F00;
        }

        let msg_data_layout = Layout::from_size_align((*ssl).out_msglen, mem::align_of::<u8>()).unwrap();
        let msg_data_ptr = alloc(msg_data_layout);
        if msg_data_ptr.is_null() {
            mbedtls_debug_print_msg(ssl, 1, file.as_ptr(), 2205, msg3.as_ptr(), (*ssl).out_msglen);
            dealloc(msg_ptr as *mut u8, msg_layout);
            return -0x7F00;
        }

        ptr::copy_nonoverlapping((*ssl).out_msg, msg_data_ptr, (*ssl).out_msglen);
        (*msg_ptr).p = msg_data_ptr;
        (*msg_ptr).len = (*ssl).out_msglen;
        (*msg_ptr).r#type = (*ssl).out_msgtype;
        (*msg_ptr).next = std::ptr::null_mut();

        if (*(*ssl).handshake).flight.is_null() {
            (*(*ssl).handshake).flight = msg_ptr;
        } else {
            let mut cur = (*(*ssl).handshake).flight;
            while !(*cur).next.is_null() {
                cur = (*cur).next;
            }
            (*cur).next = msg_ptr;
        }

        mbedtls_debug_print_msg(ssl, 2, file.as_ptr(), 2227, msg4.as_ptr());
        0
    }
}
