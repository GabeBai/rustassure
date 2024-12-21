use std::ptr;
use std::slice;
use std::mem::MaybeUninit;
use std::ffi::CStr;

#[repr(C)]
struct MbedtlsSslContext {
    handshake: *mut MbedtlsSslHandshakeParams,
    state: i32,
    in_msgtype: u8,
    in_msglen: usize,
    in_msg: [u8; 16384],
    in_left: usize,
    next_record_offset: usize,
}

#[repr(C)]
struct MbedtlsSslHandshakeParams {
    buffering: MbedtlsSslBuffering,
}

#[repr(C)]
struct MbedtlsSslBuffering {
    seen_ccs: u8,
    hs: [MbedtlsSslHsBuffer; 4],
}

#[repr(C)]
struct MbedtlsSslHsBuffer {
    is_valid: u8,
    is_complete: u8,
    data: *mut u8,
    data_len: usize,
}

extern "C" {
    fn mbedtls_debug_print_msg(ssl: *const MbedtlsSslContext, level: i32, file: *const i8, line: i32, format: *const i8, ...);
    fn mbedtls_debug_print_buf(ssl: *const MbedtlsSslContext, level: i32, file: *const i8, line: i32, text: *const i8, buf: *const u8, len: usize);
}

const MBEDTLS_SSL_CLIENT_CHANGE_CIPHER_SPEC: i32 = 1;
const MBEDTLS_SSL_SERVER_CHANGE_CIPHER_SPEC: i32 = 2;

fn ssl_load_buffered_message(ssl: &mut MbedtlsSslContext) -> i32 {
    let hs = unsafe { &mut *ssl.handshake };
    let mut ret = 0;

    if hs.is_null() {
        return -1;
    }

    unsafe {
        mbedtls_debug_print_msg(ssl, 2, cstr!("ssl_msg.c"), 4019, cstr!("=> ssl_load_buffered_messsage"));
    }

    if ssl.state == MBEDTLS_SSL_CLIENT_CHANGE_CIPHER_SPEC || ssl.state == MBEDTLS_SSL_SERVER_CHANGE_CIPHER_SPEC {
        if hs.buffering.seen_ccs == 0 {
            unsafe {
                mbedtls_debug_print_msg(ssl, 2, cstr!("ssl_msg.c"), 4028, cstr!("CCS not seen in the current flight"));
            }
            ret = -1;
            goto_exit!(ret);
        }

        unsafe {
            mbedtls_debug_print_msg(ssl, 2, cstr!("ssl_msg.c"), 4033, cstr!("Injecting buffered CCS message"));
        }
        ssl.in_msgtype = 20;
        ssl.in_msglen = 1;
        ssl.in_msg[0] = 1;
        ssl.in_left = 0;
        ssl.next_record_offset = 0;
        hs.buffering.seen_ccs = 0;
        goto_exit!(ret);
    }

    for offset in 1..4 {
        let hs_buf = &hs.buffering.hs[offset];
        if hs_buf.is_valid == 1 {
            unsafe {
                mbedtls_debug_print_msg(ssl, 2, cstr!("ssl_msg.c"), 4057, cstr!("Future message with sequence number %u %s buffered."), hs.in_msg_seq + offset, if hs_buf.is_complete == 1 { cstr!("fully") } else { cstr!("partially") });
            }
        }
    }

    let hs_buf = &hs.buffering.hs[0];
    if hs_buf.is_valid == 1 && hs_buf.is_complete == 1 {
        let msg_len = (hs_buf.data[1] as usize) << 16 | (hs_buf.data[2] as usize) << 8 | hs_buf.data[3] as usize;
        if msg_len + 12 > 16384 {
            unsafe {
                mbedtls_debug_print_msg(ssl, 1, cstr!("ssl_msg.c"), 4077, cstr!("should never happen"));
            }
            return -0x6C00;
        }

        unsafe {
            mbedtls_debug_print_msg(ssl, 2, cstr!("ssl_msg.c"), 4081, cstr!("Next handshake message has been buffered - load"));
            mbedtls_debug_print_buf(ssl, 3, cstr!("ssl_msg.c"), 4083, cstr!("Buffered handshake message (incl. header)"), hs_buf.data, msg_len + 12);
        }

        ssl.in_msgtype = 22;
        ssl.in_hslen = msg_len + 12;
        ssl.in_msglen = msg_len + 12;
        unsafe {
            ptr::copy_nonoverlapping(hs_buf.data, ssl.in_msg.as_mut_ptr(), ssl.in_hslen);
        }
        ret = 0;
        goto_exit!(ret);
    } else {
        unsafe {
            mbedtls_debug_print_msg(ssl, 2, cstr!("ssl_msg.c"), 4096, cstr!("Next handshake message %u not or only partially bufffered"), hs.in_msg_seq);
        }
    }

    ret = -1;

exit:
    unsafe {
        mbedtls_debug_print_msg(ssl, 2, cstr!("ssl_msg.c"), 4103, cstr!("<= ssl_load_buffered_message"));
    }
    ret
}

macro_rules! cstr {
    ($s:expr) => {
        CStr::from_bytes_with_nul_unchecked(concat!($s, "\0").as_bytes()).as_ptr()
    };
}

macro_rules! goto_exit {
    ($ret:expr) => {
        {
            unsafe {
                mbedtls_debug_print_msg(ssl, 2, cstr!("ssl_msg.c"), 4103, cstr!("<= ssl_load_buffered_message"));
            }
            return $ret;
        }
    };
}
