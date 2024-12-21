extern crate rustls;

use rustls::SupportedCipherSuite;
use rustls::ALL_CIPHERSUITES;

fn get_ciphersuite_name(ciphersuite_id: u16) -> &'static str {
    for &suite in ALL_CIPHERSUITES.iter() {
        if suite.suite == ciphersuite_id {
            return suite.name;
        }
    }
    "unknown"
}

fn main() {
    let ciphersuite_id = 0x1301; // Example ciphersuite ID
    let name = get_ciphersuite_name(ciphersuite_id);
    println!("Ciphersuite name: {}", name);
}
