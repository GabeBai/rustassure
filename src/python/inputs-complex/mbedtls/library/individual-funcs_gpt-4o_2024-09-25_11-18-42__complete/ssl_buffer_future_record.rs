use std::ffi::c_char;
use std::os::raw::{c_int, c_uint};
use std::ptr;
use std::slice;
use std::alloc::{alloc_zeroed, Layout};
use std::mem::size_of;

#[repr(C)]
struct MbedtlsSslContext {
    handshake: *mut MbedtlsSslHandshakeParams,
    in_epoch: u16,
}

#[repr(C)]
struct MbedtlsRecord {
    buf: *const u8,
    buf_len: usize,
    data_offset: usize,
    data_len: usize,
    ctr: [u8; 8],
    r#type: u8,
    ver: [u8; 2],
}

#[repr(C)]
struct MbedtlsSslHandshakeParams {
    buffering: Buffering,
}

#[repr(C)]
struct Buffering {
    future_record: FutureRecord,
    total_bytes_buffered: usize,
}

#[repr(C)]
struct FutureRecord {
    data: *mut u8,
    len: usize,
    epoch: u16,
}

extern "C" {
    fn mbedtls_debug_print_msg(
        ssl: *const MbedtlsSslContext,
        level: c_int,
        file: *const c_char,
        line: c_int,
        format: *const c_char,
        ...
    );
    fn mbedtls_debug_print_buf(
        ssl: *const MbedtlsSslContext,
        level: c_int,
        file: *const c_char,
        line: c_int,
        text: *const c_char,
        buf: *const u8,
        len: usize,
    );
}

unsafe fn ssl_buffer_future_record(
    ssl: *mut MbedtlsSslContext,
    rec: *const MbedtlsRecord,
) -> c_int {
    let hs = (*ssl).handshake;
    if hs.is_null() {
        return 0;
    }

    if (*rec).r#type != 22 {
        return 0;
    }

    if !(*hs).buffering.future_record.data.is_null() {
        return 0;
    }

    if (*rec).buf_len > (32768 - (*hs).buffering.total_bytes_buffered) {
        mbedtls_debug_print_msg(
            ssl,
            2,
            "ssl_msg.c\0".as_ptr() as *const c_char,
            4536,
            "Buffering of future epoch record of size %u would exceed the compile-time limit %u (already %u bytes buffered) -- ignore\n\0".as_ptr() as *const c_char,
            (*rec).buf_len as c_uint,
            32768,
            (*hs).buffering.total_bytes_buffered as c_uint,
        );
        return 0;
    }

    mbedtls_debug_print_msg(
        ssl,
        2,
        "ssl_msg.c\0".as_ptr() as *const c_char,
        4542,
        "Buffer record from epoch %u\0".as_ptr() as *const c_char,
        ((*ssl).in_epoch + 1) as c_uint,
    );

    mbedtls_debug_print_buf(
        ssl,
        3,
        "ssl_msg.c\0".as_ptr() as *const c_char,
        4543,
        "Buffered record\0".as_ptr() as *const c_char,
        (*rec).buf,
        (*rec).buf_len,
    );

    (*hs).buffering.future_record.epoch = (*ssl).in_epoch + 1;
    (*hs).buffering.future_record.len = (*rec).buf_len;

    let layout = Layout::array::<u8>((*rec).buf_len).unwrap();
    (*hs).buffering.future_record.data = alloc_zeroed(layout) as *mut u8;

    if (*hs).buffering.future_record.data.is_null() {
        return 0;
    }

    ptr::copy_nonoverlapping((*rec).buf, (*hs).buffering.future_record.data, (*rec).buf_len);
    (*hs).buffering.total_bytes_buffered += (*rec).buf_len;

    0
}
