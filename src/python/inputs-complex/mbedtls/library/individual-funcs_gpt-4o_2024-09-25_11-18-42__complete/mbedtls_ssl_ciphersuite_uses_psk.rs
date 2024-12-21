#[derive(Debug, PartialEq)]
enum MbedtlsKeyExchangeType {
    None = 0,
    Rsa,
    DheRsa,
    EcdheRsa,
    EcdheEcdsa,
    Psk,
    DhePsk,
    RsaPsk,
    EcdhePsk,
    EcdhRsa,
    EcdhEcdsa,
    Ecjpake,
}

struct MbedtlsSslCiphersuite {
    id: i32,
    name: &'static str,
    cipher: i32, // Placeholder type
    mac: i32,    // Placeholder type
    key_exchange: MbedtlsKeyExchangeType,
    min_major_ver: i32,
    min_minor_ver: i32,
    max_major_ver: i32,
    max_minor_ver: i32,
    flags: u8,
}

fn mbedtls_ssl_ciphersuite_uses_psk(info: &MbedtlsSslCiphersuite) -> bool {
    match info.key_exchange {
        MbedtlsKeyExchangeType::Psk
        | MbedtlsKeyExchangeType::RsaPsk
        | MbedtlsKeyExchangeType::DhePsk
        | MbedtlsKeyExchangeType::EcdhePsk => true,
        _ => false,
    }
}

fn main() {
    let ciphersuite = MbedtlsSslCiphersuite {
        id: 1,
        name: "Example",
        cipher: 0, // Placeholder value
        mac: 0,    // Placeholder value
        key_exchange: MbedtlsKeyExchangeType::Psk,
        min_major_ver: 1,
        min_minor_ver: 0,
        max_major_ver: 1,
        max_minor_ver: 2,
        flags: 0,
    };

    let uses_psk = mbedtls_ssl_ciphersuite_uses_psk(&ciphersuite);
    println!("Uses PSK: {}", uses_psk);
}
