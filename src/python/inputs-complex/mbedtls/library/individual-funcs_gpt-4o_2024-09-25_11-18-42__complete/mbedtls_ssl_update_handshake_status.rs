use std::ptr;
use std::mem;

#[repr(C)]
struct MbedtlsSslHsBuffer {
    is_valid: u8,
    is_fragmented: u8,
    is_complete: u8,
    data: *mut u8,
    data_len: usize,
}

#[repr(C)]
struct MbedtlsSslHandshakeParams {
    buffering: Buffering,
    in_msg_seq: u32,
    update_checksum: Option<unsafe extern "C" fn(*mut MbedtlsSslContext, *const u8, usize)>,
}

#[repr(C)]
struct Buffering {
    hs: [MbedtlsSslHsBuffer; 4],
}

#[repr(C)]
struct MbedtlsSslContext {
    state: i32,
    handshake: *mut MbedtlsSslHandshakeParams,
    in_msg: *const u8,
    in_hslen: usize,
    conf: *const MbedtlsSslConfig,
}

#[repr(C)]
struct MbedtlsSslConfig {
    transport: i32,
}

extern "C" {
    fn ssl_buffering_free_slot(ssl: *mut MbedtlsSslContext, slot: u8);
    fn memset(s: *mut u8, c: i32, n: usize) -> *mut u8;
}

const MBEDTLS_SSL_HANDSHAKE_OVER: i32 = 1;

unsafe fn mbedtls_ssl_update_handshake_status(ssl: *mut MbedtlsSslContext) {
    let hs = (*ssl).handshake;
    if (*ssl).state != MBEDTLS_SSL_HANDSHAKE_OVER && !hs.is_null() {
        if let Some(update_checksum) = (*hs).update_checksum {
            update_checksum(ssl, (*ssl).in_msg, (*ssl).in_hslen);
        }
    }

    if (*(*ssl).conf).transport == 1 && !hs.is_null() {
        let mut offset: usize;
        let mut hs_buf: *mut MbedtlsSslHsBuffer;
        (*hs).in_msg_seq += 1;
        ssl_buffering_free_slot(ssl, 0);

        for offset in 0..3 {
            hs_buf = &mut (*hs).buffering.hs[offset];
            ptr::write(hs_buf, ptr::read(&(*hs).buffering.hs[offset + 1]));
        }

        hs_buf = &mut (*hs).buffering.hs[3];
        memset(hs_buf as *mut _ as *mut u8, 0, mem::size_of::<MbedtlsSslHsBuffer>());
    }
}
