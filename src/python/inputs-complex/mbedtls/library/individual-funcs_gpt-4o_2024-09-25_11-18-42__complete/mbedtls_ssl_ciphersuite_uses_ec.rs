#[derive(Debug)]
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
    key_exchange: MbedtlsKeyExchangeType,
    // other fields...
}

fn mbedtls_ssl_ciphersuite_uses_ec(info: &MbedtlsSslCiphersuite) -> i32 {
    match info.key_exchange {
        MbedtlsKeyExchangeType::EcdheRsa |
        MbedtlsKeyExchangeType::EcdheEcdsa |
        MbedtlsKeyExchangeType::EcdhePsk |
        MbedtlsKeyExchangeType::EcdhRsa |
        MbedtlsKeyExchangeType::EcdhEcdsa |
        MbedtlsKeyExchangeType::Ecjpake => 1,
        _ => 0,
    }
}

fn main() {
    let ciphersuite = MbedtlsSslCiphersuite {
        key_exchange: MbedtlsKeyExchangeType::EcdheRsa,
        // initialize other fields...
    };

    let uses_ec = mbedtls_ssl_ciphersuite_uses_ec(&ciphersuite);
    println!("Uses EC: {}", uses_ec);
}
