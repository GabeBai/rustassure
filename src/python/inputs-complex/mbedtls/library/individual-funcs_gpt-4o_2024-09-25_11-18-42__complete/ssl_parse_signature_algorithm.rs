use std::ptr;

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

#[derive(Debug, PartialEq)]
enum MbedtlsPkType {
    MBEDTLS_PK_NONE = 0,
    MBEDTLS_PK_RSA,
    MBEDTLS_PK_ECKEY,
    MBEDTLS_PK_ECKEY_DH,
    MBEDTLS_PK_ECDSA,
    MBEDTLS_PK_RSA_ALT,
    MBEDTLS_PK_RSASSA_PSS,
    MBEDTLS_PK_OPAQUE,
}

struct MbedtlsSslContext {
    minor_ver: u8,
}

fn mbedtls_ssl_md_alg_from_hash(hash: u8) -> MbedtlsMdType {
    match hash {
        0 => MbedtlsMdType::MBEDTLS_MD_NONE,
        1 => MbedtlsMdType::MBEDTLS_MD_MD2,
        2 => MbedtlsMdType::MBEDTLS_MD_MD4,
        3 => MbedtlsMdType::MBEDTLS_MD_MD5,
        4 => MbedtlsMdType::MBEDTLS_MD_SHA1,
        5 => MbedtlsMdType::MBEDTLS_MD_SHA224,
        6 => MbedtlsMdType::MBEDTLS_MD_SHA256,
        7 => MbedtlsMdType::MBEDTLS_MD_SHA384,
        8 => MbedtlsMdType::MBEDTLS_MD_SHA512,
        9 => MbedtlsMdType::MBEDTLS_MD_RIPEMD160,
        _ => MbedtlsMdType::MBEDTLS_MD_NONE,
    }
}

fn mbedtls_ssl_pk_alg_from_sig(sig: u8) -> MbedtlsPkType {
    match sig {
        0 => MbedtlsPkType::MBEDTLS_PK_NONE,
        1 => MbedtlsPkType::MBEDTLS_PK_RSA,
        2 => MbedtlsPkType::MBEDTLS_PK_ECKEY,
        3 => MbedtlsPkType::MBEDTLS_PK_ECKEY_DH,
        4 => MbedtlsPkType::MBEDTLS_PK_ECDSA,
        5 => MbedtlsPkType::MBEDTLS_PK_RSA_ALT,
        6 => MbedtlsPkType::MBEDTLS_PK_RSASSA_PSS,
        7 => MbedtlsPkType::MBEDTLS_PK_OPAQUE,
        _ => MbedtlsPkType::MBEDTLS_PK_NONE,
    }
}

fn mbedtls_ssl_check_sig_hash(ssl: &MbedtlsSslContext, md: &MbedtlsMdType) -> i32 {
    // Dummy implementation for the sake of example
    if *md == MbedtlsMdType::MBEDTLS_MD_NONE {
        return -1;
    }
    0
}

fn mbedtls_debug_print_msg(ssl: &MbedtlsSslContext, level: i32, file: &str, line: i32, format: &str, arg: u8) {
    println!("{}:{} [{}] - {}", file, line, level, format.replace("{}", &arg.to_string()));
}

fn ssl_parse_signature_algorithm(
    ssl: &mut MbedtlsSslContext,
    p: &mut &[u8],
    end: &[u8],
    md_alg: &mut MbedtlsMdType,
    pk_alg: &mut MbedtlsPkType,
) -> i32 {
    *md_alg = MbedtlsMdType::MBEDTLS_MD_NONE;
    *pk_alg = MbedtlsPkType::MBEDTLS_PK_NONE;

    if ssl.minor_ver != 3 {
        return 0;
    }

    if p.len() < 2 {
        return -0x7B00;
    }

    let md = mbedtls_ssl_md_alg_from_hash(p[0]);
    if md == MbedtlsMdType::MBEDTLS_MD_NONE {
        mbedtls_debug_print_msg(ssl, 1, "ssl_cli.c", 2696, "Server used unsupported HashAlgorithm {}", p[0]);
        return -0x7B00;
    }

    let pk = mbedtls_ssl_pk_alg_from_sig(p[1]);
    if pk == MbedtlsPkType::MBEDTLS_PK_NONE {
        mbedtls_debug_print_msg(ssl, 1, "ssl_cli.c", 2707, "server used unsupported SignatureAlgorithm {}", p[1]);
        return -0x7B00;
    }

    if mbedtls_ssl_check_sig_hash(ssl, &md) != 0 {
        mbedtls_debug_print_msg(ssl, 1, "ssl_cli.c", 2717, "server used HashAlgorithm {} that was not offered", p[0]);
        return -0x7B00;
    }

    mbedtls_debug_print_msg(ssl, 2, "ssl_cli.c", 2722, "Server used SignatureAlgorithm {}", p[1]);
    mbedtls_debug_print_msg(ssl, 2, "ssl_cli.c", 2724, "Server used HashAlgorithm {}", p[0]);

    *md_alg = md;
    *pk_alg = pk;
    *p = &p[2..];

    0
}

fn main() {
    let mut ssl = MbedtlsSslContext { minor_ver: 3 };
    let mut p: &[u8] = &[4, 1];
    let end: &[u8] = &[];
    let mut md_alg = MbedtlsMdType::MBEDTLS_MD_NONE;
    let mut pk_alg = MbedtlsPkType::MBEDTLS_PK_NONE;

    let result = ssl_parse_signature_algorithm(&mut ssl, &mut p, end, &mut md_alg, &mut pk_alg);
    println!("Result: {}", result);
    println!("md_alg: {:?}", md_alg);
    println!("pk_alg: {:?}", pk_alg);
}
