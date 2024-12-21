fn mbedtls_ssl_hash_from_md_alg(md: i32) -> u8 {
    match md {
        MBEDTLS_MD_MD5 => 1,
        MBEDTLS_MD_SHA1 => 2,
        MBEDTLS_MD_SHA224 => 3,
        MBEDTLS_MD_SHA256 => 4,
        MBEDTLS_MD_SHA384 => 5,
        MBEDTLS_MD_SHA512 => 6,
        _ => 0,
    }
}
