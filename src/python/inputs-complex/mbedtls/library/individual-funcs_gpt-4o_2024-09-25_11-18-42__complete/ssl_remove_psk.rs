use std::ptr;
use std::slice;
use std::alloc::{dealloc, Layout};

// Define the equivalent Rust structures
struct MbedtlsSslHandshakeParams {
    psk: *mut u8,
    psk_len: usize,
}

struct MbedtlsSslContext {
    handshake: *mut MbedtlsSslHandshakeParams,
}

// Safe wrapper for zeroizing memory
fn zeroize(buf: &mut [u8]) {
    for byte in buf.iter_mut() {
        *byte = 0;
    }
}

fn ssl_remove_psk(ssl: &mut MbedtlsSslContext) {
    unsafe {
        if !ssl.handshake.is_null() {
            let handshake = &mut *ssl.handshake;
            if !handshake.psk.is_null() {
                let psk_slice = slice::from_raw_parts_mut(handshake.psk, handshake.psk_len);
                zeroize(psk_slice);
                let layout = Layout::from_size_align(handshake.psk_len, 1).unwrap();
                dealloc(handshake.psk, layout);
                handshake.psk = ptr::null_mut();
                handshake.psk_len = 0;
            }
        }
    }
}

fn main() {
    // Example usage
    let mut handshake = MbedtlsSslHandshakeParams {
        psk: unsafe { std::alloc::alloc(Layout::from_size_align(32, 1).unwrap()) },
        psk_len: 32,
    };

    let mut ssl = MbedtlsSslContext {
        handshake: &mut handshake,
    };

    ssl_remove_psk(&mut ssl);
}
