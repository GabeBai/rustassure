use std::ptr;
use std::alloc::{alloc_zeroed, dealloc, Layout};
use std::slice;
use std::time::Duration;

extern "C" {
    fn mbedtls_ssl_read_record(ssl: *mut mbedtls_ssl_context, update_hs_digest: i32) -> i32;
    fn mbedtls_ssl_send_alert_message(ssl: *mut mbedtls_ssl_context, level: u8, message: u8) -> i32;
    fn mbedtls_platform_zeroize(buf: *mut u8, len: usize);
}

#[repr(C)]
struct mbedtls_ssl_context {
    in_msgtype: u8,
    in_msg: *mut u8,
    in_hslen: usize,
    handshake: *mut mbedtls_ssl_handshake_params,
    session: *mut mbedtls_ssl_session,
    session_negotiate: *mut mbedtls_ssl_session,
    state: i32,
}

#[repr(C)]
struct mbedtls_ssl_handshake_params {
    new_session_ticket: i32,
}

#[repr(C)]
struct mbedtls_ssl_session {
    ticket: *mut u8,
    ticket_len: usize,
    ticket_lifetime: u32,
    id_len: usize,
}

fn ssl_parse_new_session_ticket(ssl: *mut mbedtls_ssl_context) -> i32 {
    let mut ret: i32 = -0x006E;
    let lifetime: u32;
    let ticket_len: usize;
    let ticket: *mut u8;
    let msg: *const u8;

    unsafe {
        // Debug print
        // mbedtls_debug_print_msg(ssl, 2, "ssl_cli.c", 4041, "=> parse new session ticket");

        ret = mbedtls_ssl_read_record(ssl, 1);
        if ret != 0 {
            // Debug print
            // mbedtls_debug_print_ret(ssl, 1, "ssl_cli.c", 4045, "mbedtls_ssl_read_record", ret);
            return ret;
        }

        if (*ssl).in_msgtype != 22 {
            // Debug print
            // mbedtls_debug_print_msg(ssl, 1, "ssl_cli.c", 4051, "bad new session ticket message");
            mbedtls_ssl_send_alert_message(ssl, 2, 10);
            return -0x7700;
        }

        if *(*ssl).in_msg != 4 || (*ssl).in_hslen < 6 + mbedtls_ssl_hs_hdr_len(ssl) {
            // Debug print
            // mbedtls_debug_print_msg(ssl, 1, "ssl_cli.c", 4072, "bad new session ticket message");
            mbedtls_ssl_send_alert_message(ssl, 2, 50);
            return -0x6E00;
        }

        msg = (*ssl).in_msg.add(mbedtls_ssl_hs_hdr_len(ssl));
        lifetime = ((*msg.add(0) as u32) << 24)
            | ((*msg.add(1) as u32) << 16)
            | ((*msg.add(2) as u32) << 8)
            | (*msg.add(3) as u32);
        ticket_len = ((*msg.add(4) as usize) << 8) | (*msg.add(5) as usize);

        if ticket_len + 6 + mbedtls_ssl_hs_hdr_len(ssl) != (*ssl).in_hslen {
            // Debug print
            // mbedtls_debug_print_msg(ssl, 1, "ssl_cli.c", 4087, "bad new session ticket message");
            mbedtls_ssl_send_alert_message(ssl, 2, 50);
            return -0x6E00;
        }

        // Debug print
        // mbedtls_debug_print_msg(ssl, 3, "ssl_cli.c", 4093, "ticket length: %d", ticket_len);

        (*(*ssl).handshake).new_session_ticket = 0;
        (*ssl).state = MBEDTLS_SSL_SERVER_CHANGE_CIPHER_SPEC;

        if ticket_len == 0 {
            return 0;
        }

        if !(*ssl).session.is_null() && !(*(*ssl).session).ticket.is_null() {
            mbedtls_platform_zeroize((*(*ssl).session).ticket, (*(*ssl).session).ticket_len);
            dealloc((*(*ssl).session).ticket, Layout::array::<u8>((*(*ssl).session).ticket_len).unwrap());
            (*(*ssl).session).ticket = ptr::null_mut();
            (*(*ssl).session).ticket_len = 0;
        }

        mbedtls_platform_zeroize((*(*ssl).session_negotiate).ticket, (*(*ssl).session_negotiate).ticket_len);
        dealloc((*(*ssl).session_negotiate).ticket, Layout::array::<u8>((*(*ssl).session_negotiate).ticket_len).unwrap());
        (*(*ssl).session_negotiate).ticket = ptr::null_mut();
        (*(*ssl).session_negotiate).ticket_len = 0;

        ticket = alloc_zeroed(Layout::array::<u8>(ticket_len).unwrap()) as *mut u8;
        if ticket.is_null() {
            // Debug print
            // mbedtls_debug_print_msg(ssl, 1, "ssl_cli.c", 4123, "ticket alloc failed");
            mbedtls_ssl_send_alert_message(ssl, 2, 80);
            return -0x7F00;
        }

        ptr::copy_nonoverlapping(msg.add(6), ticket, ticket_len);
        (*(*ssl).session_negotiate).ticket = ticket;
        (*(*ssl).session_negotiate).ticket_len = ticket_len;
        (*(*ssl).session_negotiate).ticket_lifetime = lifetime;

        // Debug print
        // mbedtls_debug_print_msg(ssl, 3, "ssl_cli.c", 4140, "ticket in use, discarding session id");
        (*(*ssl).session_negotiate).id_len = 0;

        // Debug print
        // mbedtls_debug_print_msg(ssl, 2, "ssl_cli.c", 4143, "<= parse new session ticket");
    }

    0
}

unsafe fn mbedtls_ssl_hs_hdr_len(ssl: *mut mbedtls_ssl_context) -> usize {
    // This function should return the header length based on the SSL context.
    // For simplicity, let's assume it returns a fixed value.
    4
}

const MBEDTLS_SSL_SERVER_CHANGE_CIPHER_SPEC: i32 = 0x16;
