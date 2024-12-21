extern crate mbedtls;
extern crate ring;

use mbedtls::pk::Pk;
use mbedtls::pk::PkType;

fn mbedtls_ssl_sig_from_pk(pk: &Pk) -> u8 {
    if pk.can_do(PkType::Rsa) {
        return 1;
    }
    if pk.can_do(PkType::Ecdsa) {
        return 3;
    }
    0
}

fn main() {
    // Example usage
    let pk = Pk::from_public_key_pem(b"-----BEGIN PUBLIC KEY-----\n...").unwrap();
    let sig = mbedtls_ssl_sig_from_pk(&pk);
    println!("Signature type: {}", sig);
}

extern crate mbedtls;
extern crate ring;

use mbedtls::pk::Pk;
use mbedtls::pk::PkType;

fn mbedtls_ssl_sig_from_pk(pk: &Pk) -> u8 {
    if pk.can_do(PkType::Rsa) {
        return 1;
    }
    if pk.can_do(PkType::Ecdsa) {
        return 3;
    }
    0
}

fn main() {
    // Example usage
    let pk = Pk::from_public_key_pem(b"-----BEGIN PUBLIC KEY-----\n...").unwrap();
    let sig = mbedtls_ssl_sig_from_pk(&pk);
    println!("Signature type: {}", sig);
}
