use std::ffi::CString;
use std::os::raw::c_char;
use std::ptr;

#[repr(C)]
struct MbedtlsSslContext {
    handshake: *mut MbedtlsSslHandshakeParams,
    // other fields...
}

#[repr(C)]
struct MbedtlsSslHandshakeParams {
    buffering: Buffering,
    // other fields...
}

#[repr(C)]
struct Buffering {
    total_bytes_buffered: usize,
    // other fields...
}

extern "C" {
    fn mbedtls_debug_print_msg(
        ssl: *const MbedtlsSslContext,
        level: i32,
        file: *const c_char,
        line: i32,
        format: *const c_char,
        ...
    );

    fn ssl_free_buffered_record(ssl: *mut MbedtlsSslContext);
    fn ssl_buffering_free_slot(ssl: *mut MbedtlsSslContext, slot: u8);
}

fn ssl_buffer_make_space(ssl: &mut MbedtlsSslContext, desired: usize) -> i32 {
    unsafe {
        let hs = &mut *ssl.handshake;
        let file = CString::new("ssl_msg.c").unwrap();
        let format = CString::new("Attempt to free buffered messages to have {} bytes available").unwrap();

        mbedtls_debug_print_msg(
            ssl,
            2,
            file.as_ptr(),
            4113,
            format.as_ptr(),
            desired as u32,
        );

        ssl_free_buffered_record(ssl);

        if desired <= (32768 - hs.buffering.total_bytes_buffered) {
            let format = CString::new("Enough space available after freeing future epoch record").unwrap();
            mbedtls_debug_print_msg(
                ssl,
                2,
                file.as_ptr(),
                4122,
                format.as_ptr(),
            );
            return 0;
        }

        for offset in (0..4).rev() {
            let format = CString::new("Free buffering slot {} to make space for reassembly of next handshake message").unwrap();
            mbedtls_debug_print_msg(
                ssl,
                2,
                file.as_ptr(),
                4133,
                format.as_ptr(),
                offset,
            );

            ssl_buffering_free_slot(ssl, offset as u8);

            if desired <= (32768 - hs.buffering.total_bytes_buffered) {
                let format = CString::new("Enough space available after freeing buffered HS messages").unwrap();
                mbedtls_debug_print_msg(
                    ssl,
                    2,
                    file.as_ptr(),
                    4141,
                    format.as_ptr(),
                );
                return 0;
            }
        }

        -1
    }
}
