extern crate libc;

use libc::{c_int, size_t};
use std::ptr;
use std::slice;
use std::ffi::CStr;

#[repr(C)]
struct mbedtls_ssl_context {
    // Define the fields of the struct as per your requirements
}

#[repr(C)]
struct mbedtls_ssl_session {
    id_len: size_t,
    id: [u8; 32],
    // Define other fields as per your requirements
}

extern "C" {
    fn mbedtls_ssl_session_init(session: *mut mbedtls_ssl_session);
    fn mbedtls_ssl_session_free(session: *mut mbedtls_ssl_session);
    fn mbedtls_platform_zeroize(buf: *mut libc::c_void, len: size_t);
}

fn ssl_parse_session_ticket_ext(ssl: *mut mbedtls_ssl_context, buf: *mut u8, len: size_t) -> c_int {
    let mut ret: c_int = -0x006E;
    let mut session: mbedtls_ssl_session = unsafe { std::mem::zeroed() };

    unsafe {
        mbedtls_ssl_session_init(&mut session);

        if (*ssl).conf.f_ticket_parse.is_none() || (*ssl).conf.f_ticket_write.is_none() {
            return 0;
        }

        (*ssl).handshake.new_session_ticket = 1;
        println!("ticket length: {}", len);

        if len == 0 {
            return 0;
        }

        if (*ssl).renego_status != 0 {
            println!("ticket rejected: renegotiating");
            return 0;
        }

        ret = ((*ssl).conf.f_ticket_parse.unwrap())((*ssl).conf.p_ticket, &mut session, buf, len);
        if ret != 0 {
            mbedtls_ssl_session_free(&mut session);
            if ret == -0x7180 {
                println!("ticket is not authentic");
            } else if ret == -0x6D80 {
                println!("ticket is expired");
            } else {
                println!("mbedtls_ssl_ticket_parse returned {}", ret);
            }
            return 0;
        }

        session.id_len = (*ssl).session_negotiate.id_len;
        ptr::copy_nonoverlapping((*ssl).session_negotiate.id.as_ptr(), session.id.as_mut_ptr(), session.id_len as usize);
        mbedtls_ssl_session_free((*ssl).session_negotiate);
        ptr::copy_nonoverlapping(&session as *const _, (*ssl).session_negotiate as *mut _, 1);
        mbedtls_platform_zeroize(&mut session as *mut _ as *mut libc::c_void, std::mem::size_of::<mbedtls_ssl_session>());

        println!("session successfully restored from ticket");
        (*ssl).handshake.resume = 1;
        (*ssl).handshake.new_session_ticket = 0;
    }

    0
}
