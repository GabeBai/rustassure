#[repr(C)]
#[derive(Debug, Copy, Clone)]
pub enum mbedtls_pk_type_t {
    MBEDTLS_PK_NONE = 0,
    MBEDTLS_PK_RSA,
    MBEDTLS_PK_ECKEY,
    MBEDTLS_PK_ECKEY_DH,
    MBEDTLS_PK_ECDSA,
    MBEDTLS_PK_RSA_ALT,
    MBEDTLS_PK_RSASSA_PSS,
    MBEDTLS_PK_OPAQUE,
}

pub fn mbedtls_ssl_sig_from_pk_alg(type_: mbedtls_pk_type_t) -> u8 {
    match type_ {
        mbedtls_pk_type_t::MBEDTLS_PK_RSA => 1,
        mbedtls_pk_type_t::MBEDTLS_PK_ECDSA | mbedtls_pk_type_t::MBEDTLS_PK_ECKEY => 3,
        _ => 0,
    }
}
