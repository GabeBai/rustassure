use std::ptr;
use std::alloc::{dealloc, Layout};
use std::slice;

#[repr(C)]
struct MbedtlsSslHsBuffer {
    is_valid: u8,
    is_fragmented: u8,
    is_complete: u8,
    data: *mut u8,
    data_len: usize,
}

#[repr(C)]
struct MbedtlsSslBuffering {
    total_bytes_buffered: usize,
    hs: [MbedtlsSslHsBuffer; 4],
}

#[repr(C)]
struct MbedtlsSslHandshakeParams {
    buffering: MbedtlsSslBuffering,
}

#[repr(C)]
struct MbedtlsSslContext {
    handshake: *mut MbedtlsSslHandshakeParams,
}

extern "C" {
    fn mbedtls_platform_zeroize(buf: *mut u8, len: usize);
}

fn ssl_buffering_free_slot(ssl: &mut MbedtlsSslContext, slot: u8) {
    if slot >= 4 {
        return;
    }

    unsafe {
        let hs = &mut *ssl.handshake;
        let hs_buf = &mut hs.buffering.hs[slot as usize];

        if hs_buf.is_valid == 1 {
            hs.buffering.total_bytes_buffered -= hs_buf.data_len;
            mbedtls_platform_zeroize(hs_buf.data, hs_buf.data_len);

            let layout = Layout::from_size_align(hs_buf.data_len, 1).unwrap();
            dealloc(hs_buf.data, layout);

            ptr::write_bytes(hs_buf as *mut MbedtlsSslHsBuffer, 0, 1);
        }
    }
}
