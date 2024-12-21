extern crate mbedtls;

use mbedtls::ssl::{Config, Context, Ciphersuite};
use mbedtls::pk::PkType;
use mbedtls::md::MdType;
use mbedtls::ecp::CurveInfo;
use mbedtls::x509::Certificate;
use mbedtls::mpi::Mpi;
use mbedtls::debug::debug_print_msg;

fn ssl_ciphersuite_match(ssl: &mut Context, suite_id: i32) -> Result<(), i32> {
    let suite_info = Ciphersuite::from_id(suite_id).ok_or(-0x6C00)?;

    debug_print_msg(ssl, 3, "ssl_srv.rs", 931, &format!("trying ciphersuite: {:04x} ({})", suite_id, suite_info.name()));

    if suite_info.min_minor_ver() > ssl.minor_ver() || suite_info.max_minor_ver() < ssl.minor_ver() {
        debug_print_msg(ssl, 3, "ssl_srv.rs", 936, "ciphersuite mismatch: version");
        return Ok(());
    }

    if ssl.conf().transport == 1 && (suite_info.flags() & 0x04) != 0 {
        return Ok(());
    }

    if ssl.conf().arc4_disabled == 1 && suite_info.cipher() == mbedtls::cipher::Cipher::Arc4_128 {
        debug_print_msg(ssl, 3, "ssl_srv.rs", 950, "ciphersuite mismatch: rc4");
        return Ok(());
    }

    if suite_info.uses_ec() && (ssl.handshake().curves.is_none() || ssl.handshake().curves.unwrap().is_empty()) {
        debug_print_msg(ssl, 3, "ssl_srv.rs", 972, "ciphersuite mismatch: no common elliptic curve");
        return Ok(());
    }

    if suite_info.uses_psk() && !ssl.conf().has_psk_or_cb() {
        debug_print_msg(ssl, 3, "ssl_srv.rs", 983, "ciphersuite mismatch: no pre-shared key");
        return Ok(());
    }

    if ssl.minor_ver() == 3 {
        let sig_type = suite_info.sig_alg();
        if sig_type != PkType::None && ssl.handshake().hash_algs.find(sig_type) == MdType::None {
            debug_print_msg(ssl, 3, "ssl_srv.rs", 999, &format!("ciphersuite mismatch: no suitable hash algorithm for signature algorithm {}", sig_type));
            return Ok(());
        }
    }

    if ssl.pick_cert(suite_info).is_err() {
        debug_print_msg(ssl, 3, "ssl_srv.rs", 1018, "ciphersuite mismatch: no suitable certificate");
        return Ok(());
    }

    ssl.set_ciphersuite_info(suite_info);
    Ok(())
}
