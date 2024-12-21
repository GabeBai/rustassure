extern crate mbedtls;

use mbedtls::pk::{Pk, PkType};
use mbedtls::rng::OsEntropy;
use mbedtls::rng::CtrDrbg;
use mbedtls::ssl::Config;
use mbedtls::x509::Certificate;
use std::ptr;

struct SslContext<'a> {
    conf: &'a Config,
    handshake: Handshake,
    session_negotiate: Option<Session>,
    out_msg: Vec<u8>,
    minor_ver: u8,
}

struct Handshake {
    premaster: Vec<u8>,
    pmslen: usize,
}

struct Session {
    peer_cert: Option<Certificate>,
}

fn ssl_write_encrypted_pms(ssl: &mut SslContext, offset: usize, olen: &mut usize, pms_offset: usize) -> Result<(), i32> {
    let len_bytes = if ssl.minor_ver == 0 { 0 } else { 2 };
    let p = &mut ssl.handshake.premaster[pms_offset..];
    let peer_pk;

    if offset + len_bytes > 16384 {
        eprintln!("buffer too small for encrypted pms");
        return Err(-0x6A00);
    }

    ssl_write_version(ssl.conf.max_major_ver(), ssl.conf.max_minor_ver(), ssl.conf.transport(), p);

    let mut rng = CtrDrbg::new(OsEntropy::new(), None).map_err(|_| -0x006E)?;
    rng.random(&mut p[2..48]).map_err(|_| -0x006E)?;

    ssl.handshake.pmslen = 48;

    if ssl.session_negotiate.as_ref().and_then(|s| s.peer_cert.as_ref()).is_none() {
        eprintln!("should never happen");
        return Err(-0x6C00);
    }

    peer_pk = ssl.session_negotiate.as_ref().unwrap().peer_cert.as_ref().unwrap().public_key();

    if !peer_pk.can_do(PkType::Rsa) {
        eprintln!("certificate key type mismatch");
        return Err(-0x6D00);
    }

    let mut encrypted = vec![0u8; 16384 - offset - len_bytes];
    let encrypted_len = peer_pk.encrypt(&p[..ssl.handshake.pmslen], &mut encrypted, &mut rng).map_err(|_| -0x006E)?;

    ssl.out_msg[offset..offset + len_bytes + encrypted_len].copy_from_slice(&encrypted[..encrypted_len]);

    if len_bytes == 2 {
        ssl.out_msg[offset] = (encrypted_len >> 8) as u8;
        ssl.out_msg[offset + 1] = encrypted_len as u8;
        *olen = encrypted_len + 2;
    } else {
        *olen = encrypted_len;
    }

    Ok(())
}

fn ssl_write_version(major: u8, minor: u8, transport: u8, p: &mut [u8]) {
    p[0] = major;
    p[1] = minor;
    // Assuming transport is not used in this function
}
