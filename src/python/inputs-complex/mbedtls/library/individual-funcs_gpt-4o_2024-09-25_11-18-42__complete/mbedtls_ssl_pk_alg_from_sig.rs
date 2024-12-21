// Define the mbedtls_pk_type_t enum in Rust
#[derive(Debug, PartialEq)]
enum MbedtlsPkType {
    None = 0,
    Rsa,
    Ecdsa,
    // Add other variants if needed
}

// Function to map the signature to the corresponding mbedtls_pk_type_t variant
fn mbedtls_ssl_pk_alg_from_sig(sig: u8) -> MbedtlsPkType {
    match sig {
        1 => MbedtlsPkType::Rsa,
        3 => MbedtlsPkType::Ecdsa,
        _ => MbedtlsPkType::None,
    }
}

fn main() {
    // Example usage
    let sig = 1;
    let pk_type = mbedtls_ssl_pk_alg_from_sig(sig);
    println!("{:?}", pk_type); // Output: Rsa
}
