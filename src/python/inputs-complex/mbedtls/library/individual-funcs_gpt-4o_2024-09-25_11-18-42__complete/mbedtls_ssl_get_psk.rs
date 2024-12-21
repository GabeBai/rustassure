use std::ptr;

#[repr(C)]
struct MbedtlsSslContext {
    handshake: *const MbedtlsSslHandshakeParams,
    conf: *const MbedtlsSslConfig,
}

#[repr(C)]
struct MbedtlsSslHandshakeParams {
    psk: *const u8,
    psk_len: usize,
}

#[repr(C)]
struct MbedtlsSslConfig {
    psk: *const u8,
    psk_len: usize,
}

fn mbedtls_ssl_get_psk(ssl: &MbedtlsSslContext) -> Result<(*const u8, usize), i32> {
    unsafe {
        if !(*ssl.handshake).psk.is_null() && (*ssl.handshake).psk_len > 0 {
            Ok(((*ssl.handshake).psk, (*ssl.handshake).psk_len))
        } else if !(*ssl.conf).psk.is_null() && (*ssl.conf).psk_len > 0 {
            Ok(((*ssl.conf).psk, (*ssl.conf).psk_len))
        } else {
            Err(-0x7600)
        }
    }
}

fn main() {
    // Example usage
    let handshake = MbedtlsSslHandshakeParams {
        psk: ptr::null(),
        psk_len: 0,
    };
    let conf = MbedtlsSslConfig {
        psk: ptr::null(),
        psk_len: 0,
    };
    let ssl = MbedtlsSslContext {
        handshake: &handshake,
        conf: &conf,
    };

    match mbedtls_ssl_get_psk(&ssl) {
        Ok((psk, psk_len)) => {
            println!("PSK found with length: {}", psk_len);
        }
        Err(err) => {
            println!("Error: {}", err);
        }
    }
}
