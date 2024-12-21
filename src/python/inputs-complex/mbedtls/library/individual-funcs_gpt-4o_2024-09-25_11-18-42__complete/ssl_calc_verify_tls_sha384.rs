extern crate sha2;
extern crate log;

use sha2::{Sha512, Digest};
use log::{info, debug};

struct MbedtlsSslContext {
    handshake: HandshakeParams,
}

struct HandshakeParams {
    fin_sha512: Sha512,
}

fn ssl_calc_verify_tls_sha384(ssl: &MbedtlsSslContext, hash: &mut [u8; 48], hlen: &mut usize) {
    let mut sha512 = Sha512::new();
    info!("=> calc verify sha384");

    // Clone the internal state of the SHA-512 context
    sha512.clone_from(&ssl.handshake.fin_sha512);

    // Finalize the hash computation
    let result = sha512.finalize();
    hash.copy_from_slice(&result[..48]);
    *hlen = 48;

    debug!("calculated verify result: {:?}", &hash[..*hlen]);
    info!("<= calc verify");
}

fn main() {
    // Initialize logging
    env_logger::init();

    // Example usage
    let handshake = HandshakeParams {
        fin_sha512: Sha512::new(),
    };
    let ssl = MbedtlsSslContext { handshake };
    let mut hash = [0u8; 48];
    let mut hlen = 0;

    ssl_calc_verify_tls_sha384(&ssl, &mut hash, &mut hlen);
}
