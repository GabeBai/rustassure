use std::ptr::NonNull;
use std::option::Option;

struct MbedtlsSslKeyCert;
struct MbedtlsX509Crt;
struct MbedtlsPkContext;

unsafe fn ssl_append_key_cert(
    sni_key_cert: &mut Option<NonNull<MbedtlsSslKeyCert>>,
    own_cert: NonNull<MbedtlsX509Crt>,
    pk_key: NonNull<MbedtlsPkContext>,
) -> Result<(), i32> {
    // Your implementation here
    Ok(())
}

struct MbedtlsSslContext {
    handshake: HandshakeParams,
}

struct HandshakeParams {
    sni_key_cert: Option<NonNull<MbedtlsSslKeyCert>>,
}

fn mbedtls_ssl_set_hs_own_cert(
    ssl: &mut MbedtlsSslContext,
    own_cert: NonNull<MbedtlsX509Crt>,
    pk_key: NonNull<MbedtlsPkContext>,
) -> Result<(), i32> {
    unsafe {
        ssl_append_key_cert(&mut ssl.handshake.sni_key_cert, own_cert, pk_key)
    }
}

fn main() {
    // Example usage
    let mut ssl_context = MbedtlsSslContext {
        handshake: HandshakeParams {
            sni_key_cert: None,
        },
    };

    let own_cert = NonNull::dangling();
    let pk_key = NonNull::dangling();

    match mbedtls_ssl_set_hs_own_cert(&mut ssl_context, own_cert, pk_key) {
        Ok(_) => println!("Certificate set successfully"),
        Err(e) => println!("Failed to set certificate: {}", e),
    }
}
