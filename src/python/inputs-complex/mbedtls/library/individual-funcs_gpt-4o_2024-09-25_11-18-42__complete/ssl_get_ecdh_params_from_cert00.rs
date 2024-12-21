extern crate mbedtls;

use mbedtls::pk::Pk;
use mbedtls::ecp::{EcGroup, EcPoint};
use mbedtls::ssl::{Context, Handshake};
use mbedtls::x509::Certificate;
use mbedtls::error::Result;

fn ssl_get_ecdh_params_from_cert(ssl: &mut Context) -> Result<()> {
    let peer_cert = ssl.session().peer_cert().ok_or(mbedtls::error::Error::SslBadInputData)?;
    let peer_pk = peer_cert.public_key();

    if !peer_pk.can_do(mbedtls::pk::Type::Eckey) {
        eprintln!("server key not ECDH capable");
        return Err(mbedtls::error::Error::SslBadInputData);
    }

    let peer_key = peer_pk.ec_key().ok_or(mbedtls::error::Error::SslBadInputData)?;
    let mut ecdh_ctx = ssl.handshake().ecdh_ctx();

    ecdh_ctx.set_params(peer_key, mbedtls::ecp::Side::Theirs)?;

    if ssl_check_server_ecdh_params(ssl)? {
        eprintln!("bad server certificate (ECDH curve)");
        return Err(mbedtls::error::Error::SslBadInputData);
    }

    Ok(())
}

fn ssl_check_server_ecdh_params(ssl: &Context) -> Result<bool> {
    // Implement the logic to check server ECDH parameters
    // This is a placeholder function and should be implemented as per your requirements
    Ok(true)
}

fn main() {
    // Example usage
    let mut ssl = Context::new();
    match ssl_get_ecdh_params_from_cert(&mut ssl) {
        Ok(_) => println!("ECDH parameters obtained successfully"),
        Err(e) => eprintln!("Failed to obtain ECDH parameters: {:?}", e),
    }
}
