use std::fmt::Debug;

#[derive(Debug)]
struct MbedtlsSslSigHashSet {
    rsa: MbedtlsMdType,
    ecdsa: MbedtlsMdType,
}

#[derive(Debug)]
enum MbedtlsMdType {
    None,
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

#[derive(Debug)]
enum MbedtlsPkType {
    None,
    Rsa,
    Ecdsa,
}

fn mbedtls_ssl_sig_hash_set_add(set: &mut MbedtlsSslSigHashSet, sig_alg: MbedtlsPkType, md_alg: MbedtlsMdType) {
    match sig_alg {
        MbedtlsPkType::Rsa => {
            if let MbedtlsMdType::None = set.rsa {
                set.rsa = md_alg;
            }
        }
        MbedtlsPkType::Ecdsa => {
            if let MbedtlsMdType::None = set.ecdsa {
                set.ecdsa = md_alg;
            }
        }
        _ => {}
    }
}

fn main() {
    let mut set = MbedtlsSslSigHashSet {
        rsa: MbedtlsMdType::None,
        ecdsa: MbedtlsMdType::None,
    };

    mbedtls_ssl_sig_hash_set_add(&mut set, MbedtlsPkType::Rsa, MbedtlsMdType::Sha256);
    mbedtls_ssl_sig_hash_set_add(&mut set, MbedtlsPkType::Ecdsa, MbedtlsMdType::Sha384);

    println!("{:?}", set);
}
