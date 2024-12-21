extern crate ring;

use ring::digest::{Context, SHA256, SHA384, SHA512, Digest};
use ring::error::Unspecified;

struct MbedtlsSslContext {
    handshake: HandshakeParams,
}

struct HandshakeParams {
    randbytes: [u8; 64],
}

fn mbedtls_ssl_get_key_exchange_md_tls1_2(
    ssl: &MbedtlsSslContext,
    hash: &mut [u8],
    data: &[u8],
    md_alg: &str,
) -> Result<(), Unspecified> {
    let digest_alg = match md_alg {
        "SHA256" => &SHA256,
        "SHA384" => &SHA384,
        "SHA512" => &SHA512,
        _ => return Err(Unspecified),
    };

    let mut ctx = Context::new(digest_alg);
    ctx.update(&ssl.handshake.randbytes);
    ctx.update(data);
    let digest = ctx.finish();

    hash.copy_from_slice(digest.as_ref());
    Ok(())
}

fn main() {
    // Example usage
    let ssl = MbedtlsSslContext {
        handshake: HandshakeParams {
            randbytes: [0u8; 64],
        },
    };

    let data = b"example data";
    let mut hash = vec![0u8; 32]; // Adjust size based on the hash algorithm

    match mbedtls_ssl_get_key_exchange_md_tls1_2(&ssl, &mut hash, data, "SHA256") {
        Ok(_) => println!("Hash computed successfully: {:?}", hash),
        Err(_) => println!("Failed to compute hash"),
    }
}
