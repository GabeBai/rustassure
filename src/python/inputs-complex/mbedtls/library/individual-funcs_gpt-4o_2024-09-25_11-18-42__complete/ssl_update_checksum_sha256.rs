use sha2::{Sha256, Digest};

struct MbedtlsSslContext {
    handshake: MbedtlsSslHandshakeParams,
}

struct MbedtlsSslHandshakeParams {
    fin_sha256: Sha256,
}

fn ssl_update_checksum_sha256(ssl: &mut MbedtlsSslContext, buf: &[u8]) {
    ssl.handshake.fin_sha256.update(buf);
}

fn main() {
    // Example usage
    let mut ssl_context = MbedtlsSslContext {
        handshake: MbedtlsSslHandshakeParams {
            fin_sha256: Sha256::new(),
        },
    };

    let data = b"example data";
    ssl_update_checksum_sha256(&mut ssl_context, data);

    // To get the result of the hash
    let result = ssl_context.handshake.fin_sha256.finalize();
    println!("{:x}", result);
}
