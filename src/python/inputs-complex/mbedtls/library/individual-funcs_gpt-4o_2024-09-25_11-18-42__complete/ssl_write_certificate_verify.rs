extern crate mbedtls;

use mbedtls::pk::*;
use mbedtls::md::*;
use mbedtls::ssl::*;
use mbedtls::x509::*;
use mbedtls::mpi::*;
use mbedtls::ecp::*;
use mbedtls::cipher::*;
use mbedtls::asn1::*;
use mbedtls::time::*;
use mbedtls::debug::*;

fn ssl_write_certificate_verify(ssl: &mut mbedtls::ssl::Context) -> Result<(), mbedtls::Error> {
    let ciphersuite_info = ssl.handshake.ciphersuite_info;
    let mut n = 0;
    let mut offset = 0;
    let mut hash = [0u8; 48];
    let mut hash_start = &mut hash[..];
    let mut md_alg = MdType::None;
    let mut hashlen = 0;
    let rs_ctx: Option<&mut mbedtls::pk::RestartContext> = None;

    mbedtls_debug_print_msg(ssl, 2, "ssl_cli.c", 3872, "=> write certificate verify");

    if let Err(ret) = mbedtls_ssl_derive_keys(ssl) {
        mbedtls_debug_print_ret(ssl, 1, "ssl_cli.c", 3884, "mbedtls_ssl_derive_keys", ret);
        return Err(ret);
    }

    if !mbedtls_ssl_ciphersuite_cert_req_allowed(ciphersuite_info) {
        mbedtls_debug_print_msg(ssl, 2, "ssl_cli.c", 3890, "<= skip write certificate verify");
        ssl.state += 1;
        return Ok(());
    }

    if ssl.client_auth == 0 || mbedtls_ssl_own_cert(ssl).is_none() {
        mbedtls_debug_print_msg(ssl, 2, "ssl_cli.c", 3897, "<= skip write certificate verify");
        ssl.state += 1;
        return Ok(());
    }

    if mbedtls_ssl_own_key(ssl).is_none() {
        mbedtls_debug_print_msg(ssl, 1, "ssl_cli.c", 3904, "got no private key for certificate");
        return Err(mbedtls::Error::PkNoPrivateKey);
    }

    ssl.handshake.calc_verify(ssl, &mut hash, &mut hashlen);

    if ssl.minor_ver != 3 {
        md_alg = MdType::None;
        if mbedtls_pk_can_do(mbedtls_ssl_own_key(ssl).unwrap(), PkType::Ecdsa) {
            hash_start = &mut hash[16..];
            hashlen -= 16;
            md_alg = MdType::Sha1;
        }
    } else if ssl.minor_ver == 3 {
        if ssl.handshake.ciphersuite_info.mac == MdType::Sha384 {
            md_alg = MdType::Sha384;
            ssl.out_msg[4] = 5;
        } else {
            md_alg = MdType::Sha256;
            ssl.out_msg[4] = 4;
        }
        ssl.out_msg[5] = mbedtls_ssl_sig_from_pk(mbedtls_ssl_own_key(ssl).unwrap());
        hashlen = 0;
        offset = 2;
    } else {
        mbedtls_debug_print_msg(ssl, 1, "ssl_cli.c", 3989, "should never happen");
        return Err(mbedtls::Error::SslInternalError);
    }

    if let Err(ret) = mbedtls_pk_sign_restartable(
        mbedtls_ssl_own_key(ssl).unwrap(),
        md_alg,
        hash_start,
        hashlen,
        &mut ssl.out_msg[6 + offset..],
        &mut n,
        ssl.conf.f_rng,
        ssl.conf.p_rng,
        rs_ctx,
    ) {
        mbedtls_debug_print_ret(ssl, 1, "ssl_cli.c", 4003, "mbedtls_pk_sign", ret);
        return Err(ret);
    }

    ssl.out_msg[4 + offset] = (n >> 8) as u8;
    ssl.out_msg[5 + offset] = n as u8;
    ssl.out_msglen = 6 + n + offset;
    ssl.out_msgtype = 22;
    ssl.out_msg[0] = 15;
    ssl.state += 1;

    if let Err(ret) = mbedtls_ssl_write_handshake_msg(ssl) {
        mbedtls_debug_print_ret(ssl, 1, "ssl_cli.c", 4022, "mbedtls_ssl_write_handshake_msg", ret);
        return Err(ret);
    }

    mbedtls_debug_print_msg(ssl, 2, "ssl_cli.c", 4026, "<= write certificate verify");
    Ok(())
}
