// Define the necessary structs and enums
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
    Eckey,
    EckeyDh,
    Ecdsa,
    RsaAlt,
    RsassaPss,
    Opaque,
}

#[derive(Debug)]
struct MbedtlsX509Crt {
    // Define the fields as per the C struct
    // For simplicity, we are not defining all fields here
}

#[derive(Debug)]
struct MbedtlsSslKeyCert {
    cert: Option<Box<MbedtlsX509Crt>>,
    key: Option<Box<MbedtlsPkContext>>,
    next: Option<Box<MbedtlsSslKeyCert>>,
}

#[derive(Debug)]
struct MbedtlsSslConfig {
    key_cert: Option<Box<MbedtlsSslKeyCert>>,
    // Other fields are omitted for simplicity
}

#[derive(Debug)]
struct MbedtlsSslHandshakeParams {
    key_cert: Option<Box<MbedtlsSslKeyCert>>,
    // Other fields are omitted for simplicity
}

#[derive(Debug)]
struct MbedtlsSslContext {
    conf: Box<MbedtlsSslConfig>,
    handshake: Option<Box<MbedtlsSslHandshakeParams>>,
    // Other fields are omitted for simplicity
}

#[derive(Debug)]
struct MbedtlsPkContext {
    // Define the fields as per the C struct
    // For simplicity, we are not defining all fields here
}

// The function equivalent in Rust
fn mbedtls_ssl_own_cert(ssl: &MbedtlsSslContext) -> Option<&MbedtlsX509Crt> {
    let key_cert = if let Some(ref handshake) = ssl.handshake {
        if let Some(ref key_cert) = handshake.key_cert {
            Some(key_cert)
        } else {
            ssl.conf.key_cert.as_ref()
        }
    } else {
        ssl.conf.key_cert.as_ref()
    };

    key_cert.and_then(|kc| kc.cert.as_ref().map(|cert| cert.as_ref()))
}

fn main() {
    // Example usage
    let cert = MbedtlsX509Crt {};
    let key_cert = MbedtlsSslKeyCert {
        cert: Some(Box::new(cert)),
        key: None,
        next: None,
    };
    let ssl_config = MbedtlsSslConfig {
        key_cert: Some(Box::new(key_cert)),
    };
    let ssl_context = MbedtlsSslContext {
        conf: Box::new(ssl_config),
        handshake: None,
    };

    if let Some(cert) = mbedtls_ssl_own_cert(&ssl_context) {
        println!("Certificate found: {:?}", cert);
    } else {
        println!("No certificate found");
    }
}
