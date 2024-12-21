#[derive(Debug, PartialEq)]
enum MbedtlsMdType {
    None = 0,
    Md2,
    Md4,
    Md5,
    Sha1,
    Sha224,
    Sha256,
    Sha384,
    Sha512,
    Ripemd160,
}

fn mbedtls_ssl_md_alg_from_hash(hash: u8) -> MbedtlsMdType {
    match hash {
        1 => MbedtlsMdType::Md5,
        2 => MbedtlsMdType::Sha1,
        3 => MbedtlsMdType::Sha224,
        4 => MbedtlsMdType::Sha256,
        5 => MbedtlsMdType::Sha384,
        6 => MbedtlsMdType::Sha512,
        _ => MbedtlsMdType::None,
    }
}

fn main() {
    // Example usage
    let hash = 4;
    let md_type = mbedtls_ssl_md_alg_from_hash(hash);
    println!("{:?}", md_type); // Output: Sha256
}
