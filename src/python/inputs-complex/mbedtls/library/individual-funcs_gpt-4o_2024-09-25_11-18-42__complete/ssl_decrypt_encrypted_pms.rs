extern crate rustls;

use rustls::{PrivateKey, ServerConfig, TLSError};
use std::sync::Arc;

fn ssl_decrypt_encrypted_pms(
    private_key: &PrivateKey,
    encrypted_pms: &[u8],
    peer_pms: &mut [u8],
) -> Result<usize, TLSError> {
    // Create a server config with the provided private key
    let mut config = ServerConfig::new(rustls::NoClientAuth::new());
    config.set_single_cert(vec![], private_key.clone()).map_err(|_| TLSError::General("Failed to set certificate".into()))?;
    let config = Arc::new(config);

    // Create a server session
    let mut session = rustls::ServerSession::new(&config);

    // Decrypt the encrypted pre-master secret
    let decrypted_len = session.decrypt(encrypted_pms, peer_pms).map_err(|_| TLSError::DecryptError)?;

    Ok(decrypted_len)
}

fn main() {
    // Example usage
    let private_key = PrivateKey(vec![/* your private key bytes here */]);
    let encrypted_pms = vec![/* your encrypted pre-master secret bytes here */];
    let mut peer_pms = vec![0u8; 256]; // Adjust the size as needed

    match ssl_decrypt_encrypted_pms(&private_key, &encrypted_pms, &mut peer_pms) {
        Ok(len) => println!("Decrypted pre-master secret length: {}", len),
        Err(e) => eprintln!("Failed to decrypt pre-master secret: {:?}", e),
    }
}
