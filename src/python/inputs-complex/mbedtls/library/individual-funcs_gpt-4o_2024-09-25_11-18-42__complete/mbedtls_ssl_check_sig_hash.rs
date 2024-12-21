#[derive(Debug, PartialEq)]
enum MbedtlsMdType {
    MBEDTLS_MD_NONE = 0,
    MBEDTLS_MD_MD2,
    MBEDTLS_MD_MD4,
    MBEDTLS_MD_MD5,
    MBEDTLS_MD_SHA1,
    MBEDTLS_MD_SHA224,
    MBEDTLS_MD_SHA256,
    MBEDTLS_MD_SHA384,
    MBEDTLS_MD_SHA512,
    MBEDTLS_MD_RIPEMD160,
}

struct MbedtlsSslConfig {
    sig_hashes: Option<Vec<MbedtlsMdType>>,
}

struct MbedtlsSslContext<'a> {
    conf: &'a MbedtlsSslConfig,
}

fn mbedtls_ssl_check_sig_hash(ssl: &MbedtlsSslContext, md: MbedtlsMdType) -> i32 {
    if let Some(sig_hashes) = &ssl.conf.sig_hashes {
        for &cur in sig_hashes {
            if cur == md {
                return 0;
            }
        }
    }
    -1
}

fn main() {
    let config = MbedtlsSslConfig {
        sig_hashes: Some(vec![
            MbedtlsMdType::MBEDTLS_MD_SHA256,
            MbedtlsMdType::MBEDTLS_MD_SHA384,
        ]),
    };

    let ssl_context = MbedtlsSslContext { conf: &config };

    let result = mbedtls_ssl_check_sig_hash(&ssl_context, MbedtlsMdType::MBEDTLS_MD_SHA256);
    println!("Result: {}", result); // Should print "Result: 0"

    let result = mbedtls_ssl_check_sig_hash(&ssl_context, MbedtlsMdType::MBEDTLS_MD_MD5);
    println!("Result: {}", result); // Should print "Result: -1"
}
