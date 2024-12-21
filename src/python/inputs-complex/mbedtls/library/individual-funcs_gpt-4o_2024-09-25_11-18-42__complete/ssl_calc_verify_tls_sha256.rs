extern crate ring;
extern crate log;

use ring::digest::{Context, SHA256};
use log::{info, debug};

fn ssl_calc_verify_tls_sha256(ssl: &mbedtls_ssl_context, hash: &mut [u8; 32], hlen: &mut usize) {
    let mut sha256 = Context::new(&SHA256);
    info!("=> calc verify sha256");

    // Assuming `ssl.handshake.fin_sha256` is a byte slice
    sha256.update(&ssl.handshake.fin_sha256);
    let digest = sha256.finish();
    hash.copy_from_slice(digest.as_ref());
    *hlen = 32;

    debug!("calculated verify result: {:?}", &hash[..*hlen]);
    info!("<- calc verify");
}

// Define your mbedtls_ssl_context and other necessary structs here
struct mbedtls_ssl_context {
    handshake: HandshakeParams,
}

struct HandshakeParams {
    fin_sha256: Vec<u8>,
}

fn main() {
    // Initialize the logger
    env_logger::init();

    // Example usage
    let handshake = HandshakeParams {
        fin_sha256: vec![0; 32], // Example data
    };
    let ssl = mbedtls_ssl_context { handshake };
    let mut hash = [0u8; 32];
    let mut hlen = 0;
    ssl_calc_verify_tls_sha256(&ssl, &mut hash, &mut hlen);
}
