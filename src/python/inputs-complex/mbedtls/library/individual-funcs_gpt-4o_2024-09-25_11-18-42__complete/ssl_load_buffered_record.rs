use std::ffi::CString;
use std::ptr;
use std::slice;
use std::mem::size_of;

extern "C" {
    fn mbedtls_debug_print_msg(ssl: *const mbedtls_ssl_context, level: i32, file: *const i8, line: i32, format: *const i8, ...);
    fn ssl_free_buffered_record(ssl: *mut mbedtls_ssl_context);
    fn ssl_next_record_is_in_datagram(ssl: *mut mbedtls_ssl_context) -> i32;
    fn memcpy(dest: *mut u8, src: *const u8, n: usize) -> *mut u8;
}

#[repr(C)]
struct mbedtls_ssl_context {
    conf: *const mbedtls_ssl_config,
    handshake: *mut mbedtls_ssl_handshake_params,
    in_buf: *mut u8,
    in_hdr: *mut u8,
    in_left: usize,
    next_record_offset: usize,
    in_epoch: u16,
}

#[repr(C)]
struct mbedtls_ssl_config {
    transport: i32,
}

#[repr(C)]
struct mbedtls_ssl_handshake_params {
    buffering: mbedtls_ssl_buffering,
}

#[repr(C)]
struct mbedtls_ssl_buffering {
    future_record: mbedtls_ssl_future_record,
}

#[repr(C)]
struct mbedtls_ssl_future_record {
    data: *mut u8,
    len: usize,
    epoch: u16,
}

const MBEDTLS_TRANSPORT_DATAGRAM: i32 = 1;
const IN_BUF_LEN: usize = 13 + (0 + 16 + 48 + 256 + 0) + 16384;

unsafe fn ssl_load_buffered_record(ssl: *mut mbedtls_ssl_context) -> i32 {
    let hs = (*ssl).handshake;
    if (*(*ssl).conf).transport != MBEDTLS_TRANSPORT_DATAGRAM {
        return 0;
    }
    if hs.is_null() {
        return 0;
    }

    let rec = (*hs).buffering.future_record.data;
    let rec_len = (*hs).buffering.future_record.len;
    let rec_epoch = (*hs).buffering.future_record.epoch;

    if rec.is_null() {
        return 0;
    }
    if ssl_next_record_is_in_datagram(ssl) == 1 {
        return 0;
    }

    let file = CString::new("ssl_msg.c").unwrap();
    let msg1 = CString::new("=> ssl_load_buffered_record").unwrap();
    mbedtls_debug_print_msg(ssl, 2, file.as_ptr(), 4484, msg1.as_ptr());

    if rec_epoch != (*ssl).in_epoch {
        let msg2 = CString::new("Buffered record not from current epoch.").unwrap();
        mbedtls_debug_print_msg(ssl, 2, file.as_ptr(), 4488, msg2.as_ptr());
        goto_exit(ssl);
        return 0;
    }

    let msg3 = CString::new("Found buffered record from current epoch - load").unwrap();
    mbedtls_debug_print_msg(ssl, 2, file.as_ptr(), 4492, msg3.as_ptr());

    if rec_len > IN_BUF_LEN - ((*ssl).in_hdr as usize - (*ssl).in_buf as usize) {
        let msg4 = CString::new("should never happen").unwrap();
        mbedtls_debug_print_msg(ssl, 1, file.as_ptr(), 4497, msg4.as_ptr());
        return -0x6C00;
    }

    memcpy((*ssl).in_hdr, rec, rec_len);
    (*ssl).in_left = rec_len;
    (*ssl).next_record_offset = 0;
    ssl_free_buffered_record(ssl);

    goto_exit(ssl);
    0
}

unsafe fn goto_exit(ssl: *mut mbedtls_ssl_context) {
    let file = CString::new("ssl_msg.c").unwrap();
    let msg = CString::new("<= ssl_load_buffered_record").unwrap();
    mbedtls_debug_print_msg(ssl, 2, file.as_ptr(), 4508, msg.as_ptr());
}
