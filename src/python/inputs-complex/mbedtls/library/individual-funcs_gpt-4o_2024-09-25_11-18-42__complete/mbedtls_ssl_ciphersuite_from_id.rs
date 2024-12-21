const CIPHERSUITE_DEFINITIONS: &[MbedtlsSslCiphersuite] = &[
    MbedtlsSslCiphersuite {
        id: 0xCCA8,
        name: "TLS-ECDHE-RSA-WITH-CHACHA20-POLY1305-SHA256",
        cipher: MbedtlsCipherType::MbedtlsCipherChacha20Poly1305,
        mac: MbedtlsMdType::MbedtlsMdSha256,
        key_exchange: MbedtlsKeyExchangeType::MbedtlsKeyExchangeEcdheRsa,
        min_major_ver: 3,
        min_minor_ver: 3,
        max_major_ver: 3,
        max_minor_ver: 3,
        flags: 0,
    },
    // ... (other ciphersuite definitions)
    MbedtlsSslCiphersuite {
        id: 0,
        name: "",
        cipher: MbedtlsCipherType::MbedtlsCipherNone,
        mac: MbedtlsMdType::MbedtlsMdNone,
        key_exchange: MbedtlsKeyExchangeType::MbedtlsKeyExchangeNone,
        min_major_ver: 0,
        min_minor_ver: 0,
        max_major_ver: 0,
        max_minor_ver: 0,
        flags: 0,
    },
];

pub fn mbedtls_ssl_ciphersuite_from_id(ciphersuite: i32) -> Option<&'static MbedtlsSslCiphersuite> {
    CIPHERSUITE_DEFINITIONS.iter().find(|&cur| cur.id == ciphersuite)
}

#[derive(Debug, Clone, Copy)]
pub enum MbedtlsCipherType {
    MbedtlsCipherNone = 0,
    MbedtlsCipherChacha20Poly1305,
    // ... (other cipher types)
}

#[derive(Debug, Clone, Copy)]
pub enum MbedtlsMdType {
    MbedtlsMdNone = 0,
    MbedtlsMdSha256,
    // ... (other md types)
}

#[derive(Debug, Clone, Copy)]
pub enum MbedtlsKeyExchangeType {
    MbedtlsKeyExchangeNone = 0,
    MbedtlsKeyExchangeEcdheRsa,
    // ... (other key exchange types)
}

#[derive(Debug)]
pub struct MbedtlsSslCiphersuite {
    pub id: i32,
    pub name: &'static str,
    pub cipher: MbedtlsCipherType,
    pub mac: MbedtlsMdType,
    pub key_exchange: MbedtlsKeyExchangeType,
    pub min_major_ver: i32,
    pub min_minor_ver: i32,
    pub max_major_ver: i32,
    pub max_minor_ver: i32,
    pub flags: u8,
}
