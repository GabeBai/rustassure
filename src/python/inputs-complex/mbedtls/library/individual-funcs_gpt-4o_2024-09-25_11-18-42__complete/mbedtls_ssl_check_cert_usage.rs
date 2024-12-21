#[derive(Debug, PartialEq)]
enum MbedtlsKeyExchangeType {
    None,
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

#[derive(Debug)]
struct MbedtlsSslCiphersuite {
    key_exchange: MbedtlsKeyExchangeType,
}

#[derive(Debug)]
struct MbedtlsX509Crt;

impl MbedtlsX509Crt {
    fn check_key_usage(&self, usage: u32) -> Result<(), ()> {
        // Placeholder for actual implementation
        Ok(())
    }

    fn check_extended_key_usage(&self, ext_oid: &[u8]) -> Result<(), ()> {
        // Placeholder for actual implementation
        Ok(())
    }
}

fn mbedtls_ssl_check_cert_usage(
    cert: &MbedtlsX509Crt,
    ciphersuite: &MbedtlsSslCiphersuite,
    cert_endpoint: i32,
    flags: &mut u32,
) -> i32 {
    let mut ret = 0;
    let mut usage = 0;

    if cert_endpoint == 1 {
        usage = match ciphersuite.key_exchange {
            MbedtlsKeyExchangeType::Rsa | MbedtlsKeyExchangeType::RsaPsk => 0x20,
            MbedtlsKeyExchangeType::DheRsa
            | MbedtlsKeyExchangeType::EcdheRsa
            | MbedtlsKeyExchangeType::EcdheEcdsa => 0x80,
            MbedtlsKeyExchangeType::EcdhRsa | MbedtlsKeyExchangeType::EcdhEcdsa => 0x08,
            _ => 0,
        };
    } else {
        usage = 0x80;
    }

    if cert.check_key_usage(usage).is_err() {
        *flags |= 0x0800;
        ret = -1;
    }

    let (ext_oid, ext_len) = if cert_endpoint == 1 {
        (b"\x2b\x06\x01\x05\x05\x07\x03\x01", 8)
    } else {
        (b"\x2b\x06\x01\x05\x05\x07\x03\x02", 8)
    };

    if cert.check_extended_key_usage(&ext_oid[..ext_len]).is_err() {
        *flags |= 0x1000;
        ret = -1;
    }

    ret
}

fn main() {
    let cert = MbedtlsX509Crt;
    let ciphersuite = MbedtlsSslCiphersuite {
        key_exchange: MbedtlsKeyExchangeType::Rsa,
    };
    let mut flags = 0;
    let result = mbedtls_ssl_check_cert_usage(&cert, &ciphersuite, 1, &mut flags);
    println!("Result: {}, Flags: {}", result, flags);
}
