#[derive(Debug, Clone, Copy)]
enum MbedtlsCipherType {
    MbedtlsCipherNone = 0,
    MbedtlsCipherNull,
    MbedtlsCipherAes128Ecb,
    MbedtlsCipherAes192Ecb,
    MbedtlsCipherAes256Ecb,
    MbedtlsCipherAes128Cbc,
    MbedtlsCipherAes192Cbc,
    MbedtlsCipherAes256Cbc,
    MbedtlsCipherAes128Cfb128,
    MbedtlsCipherAes192Cfb128,
    MbedtlsCipherAes256Cfb128,
    MbedtlsCipherAes128Ctr,
    MbedtlsCipherAes192Ctr,
    MbedtlsCipherAes256Ctr,
    MbedtlsCipherAes128Gcm,
    MbedtlsCipherAes192Gcm,
    MbedtlsCipherAes256Gcm,
    MbedtlsCipherCamellia128Ecb,
    MbedtlsCipherCamellia192Ecb,
    MbedtlsCipherCamellia256Ecb,
    MbedtlsCipherCamellia128Cbc,
    MbedtlsCipherCamellia192Cbc,
    MbedtlsCipherCamellia256Cbc,
    MbedtlsCipherCamellia128Cfb128,
    MbedtlsCipherCamellia192Cfb128,
    MbedtlsCipherCamellia256Cfb128,
    MbedtlsCipherCamellia128Ctr,
    MbedtlsCipherCamellia192Ctr,
    MbedtlsCipherCamellia256Ctr,
    MbedtlsCipherCamellia128Gcm,
    MbedtlsCipherCamellia192Gcm,
    MbedtlsCipherCamellia256Gcm,
    MbedtlsCipherDesEcb,
    MbedtlsCipherDesCbc,
    MbedtlsCipherDesEdeEcb,
    MbedtlsCipherDesEdeCbc,
    MbedtlsCipherDesEde3Ecb,
    MbedtlsCipherDesEde3Cbc,
    MbedtlsCipherBlowfishEcb,
    MbedtlsCipherBlowfishCbc,
    MbedtlsCipherBlowfishCfb64,
    MbedtlsCipherBlowfishCtr,
    MbedtlsCipherArc4128,
    MbedtlsCipherAes128Ccm,
    MbedtlsCipherAes192Ccm,
    MbedtlsCipherAes256Ccm,
    MbedtlsCipherCamellia128Ccm,
    MbedtlsCipherCamellia192Ccm,
    MbedtlsCipherCamellia256Ccm,
    MbedtlsCipherAria128Ecb,
    MbedtlsCipherAria192Ecb,
    MbedtlsCipherAria256Ecb,
    MbedtlsCipherAria128Cbc,
    MbedtlsCipherAria192Cbc,
    MbedtlsCipherAria256Cbc,
    MbedtlsCipherAria128Cfb128,
    MbedtlsCipherAria192Cfb128,
    MbedtlsCipherAria256Cfb128,
    MbedtlsCipherAria128Ctr,
    MbedtlsCipherAria192Ctr,
    MbedtlsCipherAria256Ctr,
    MbedtlsCipherAria128Gcm,
    MbedtlsCipherAria192Gcm,
    MbedtlsCipherAria256Gcm,
    MbedtlsCipherAria128Ccm,
    MbedtlsCipherAria192Ccm,
    MbedtlsCipherAria256Ccm,
    MbedtlsCipherAes128Ofb,
    MbedtlsCipherAes192Ofb,
    MbedtlsCipherAes256Ofb,
    MbedtlsCipherAes128Xts,
    MbedtlsCipherAes256Xts,
    MbedtlsCipherChacha20,
    MbedtlsCipherChacha20Poly1305,
    MbedtlsCipherAes128Kw,
    MbedtlsCipherAes192Kw,
    MbedtlsCipherAes256Kw,
    MbedtlsCipherAes128Kwp,
    MbedtlsCipherAes192Kwp,
    MbedtlsCipherAes256Kwp,
}

#[derive(Debug)]
struct MbedtlsCipherInfo {
    type_: MbedtlsCipherType,
    // other fields...
}

#[derive(Debug)]
struct MbedtlsCipherContext {
    cipher_info: Option<Box<MbedtlsCipherInfo>>,
    // other fields...
}

fn mbedtls_cipher_get_type(ctx: &MbedtlsCipherContext) -> MbedtlsCipherType {
    if let Some(ref cipher_info) = ctx.cipher_info {
        cipher_info.type_
    } else {
        MbedtlsCipherType::MbedtlsCipherNone
    }
}

fn main() {
    let cipher_info = MbedtlsCipherInfo {
        type_: MbedtlsCipherType::MbedtlsCipherAes128Ecb,
        // other fields...
    };

    let ctx = MbedtlsCipherContext {
        cipher_info: Some(Box::new(cipher_info)),
        // other fields...
    };

    let cipher_type = mbedtls_cipher_get_type(&ctx);
    println!("{:?}", cipher_type);
}
