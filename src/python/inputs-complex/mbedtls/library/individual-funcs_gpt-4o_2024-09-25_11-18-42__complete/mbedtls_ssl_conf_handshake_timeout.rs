extern crate mbedtls;

use mbedtls::ssl::{Config, Context};
use mbedtls::x509::Certificate;
use mbedtls::pk::Pk;
use mbedtls::rng::OsEntropy;
use mbedtls::rng::CtrDrbg;
use std::time::Duration;

fn main() {
    // Initialize the RNG
    let mut entropy = OsEntropy::new();
    let mut ctr_drbg = CtrDrbg::new(&mut entropy, None).unwrap();

    // Load the server certificate and private key
    let server_cert = Certificate::from_pem(include_bytes!("server-cert.pem")).unwrap();
    let server_key = Pk::from_private_key(include_bytes!("server-key.pem"), None).unwrap();

    // Create and configure the SSL context
    let mut config = Config::new().unwrap();
    config.set_rng(Some(&mut ctr_drbg));
    config.set_own_cert(server_cert, server_key).unwrap();
    config.set_handshake_timeout(Some(Duration::from_secs(1)), Some(Duration::from_secs(10)));

    // Create the SSL context
    let mut ssl = Context::new(&config);

    // Set up the SSL context for a server
    ssl.setup(true).unwrap();

    // Now you can use the `ssl` context to perform SSL/TLS operations
}
