extern crate mbedtls;

use mbedtls::pk::{Pk, Type};
use mbedtls::ecp::{EcGroup, EcPoint};
use mbedtls::ecdh::Context as EcdhContext;
use mbedtls::ssl::Context as SslContext;
use mbedtls::x509::Certificate;
use mbedtls::error::Error;

fn ssl_get_ecdh_params_from_cert(ssl: &mut SslContext) -> Result<(), Error> {
    let own_key = ssl.own_key().ok_or(Error::SslBadInputData)?;
    
    if !own_key.can_do(Type::Eckey) {
        eprintln!("server key not ECDH capable");
        return Err(Error::SslBadInputData);
    }

    let ecdh_ctx = ssl.handshake_mut().ecdh_ctx_mut();
    let keypair = own_key.ec_keypair().ok_or(Error::SslBadInputData)?;

    ecdh_ctx.set_params(keypair, mbedtls::ecdh::Side::Our)?;

    Ok(())
}
