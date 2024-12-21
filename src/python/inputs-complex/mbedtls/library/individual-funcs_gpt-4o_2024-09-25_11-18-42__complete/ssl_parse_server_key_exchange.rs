use std::ptr;
use std::slice;
use std::result::Result;

#[derive(PartialEq)]
enum MbedtlsKeyExchangeType {
    MBEDTLS_KEY_EXCHANGE_NONE,
    MBEDTLS_KEY_EXCHANGE_RSA,
    MBEDTLS_KEY_EXCHANGE_DHE_RSA,
    MBEDTLS_KEY_EXCHANGE_ECDHE_RSA,
    MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA,
    MBEDTLS_KEY_EXCHANGE_PSK,
    MBEDTLS_KEY_EXCHANGE_DHE_PSK,
    MBEDTLS_KEY_EXCHANGE_RSA_PSK,
    MBEDTLS_KEY_EXCHANGE_ECDHE_PSK,
    MBEDTLS_KEY_EXCHANGE_ECDH_RSA,
    MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA,
    MBEDTLS_KEY_EXCHANGE_ECJPAKE,
}

struct MbedtlsSslContext {
    state: i32,
    in_msgtype: u8,
    in_msg: Vec<u8>,
    in_hslen: usize,
    handshake: HandshakeParams,
    session_negotiate: Option<MbedtlsSslSession>,
}

struct HandshakeParams {
    ciphersuite_info: MbedtlsSslCiphersuite,
}

struct MbedtlsSslCiphersuite {
    key_exchange: MbedtlsKeyExchangeType,
}

struct MbedtlsSslSession {
    peer_cert: Option<MbedtlsX509Crt>,
}

struct MbedtlsX509Crt {
    pk: MbedtlsPkContext,
}

struct MbedtlsPkContext;

impl MbedtlsPkContext {
    fn can_do(&self, _pk_alg: MbedtlsPkType) -> bool {
        // Implement this function
        true
    }

    fn verify_restartable(
        &self,
        _md_alg: MbedtlsMdType,
        _hash: &[u8],
        _sig: &[u8],
        _rs_ctx: Option<&mut MbedtlsPkRestartCtx>,
    ) -> Result<(), i32> {
        // Implement this function
        Ok(())
    }
}

enum MbedtlsMdType {
    MBEDTLS_MD_NONE,
    MBEDTLS_MD_SHA1,
}

enum MbedtlsPkType {
    MBEDTLS_PK_NONE,
    MBEDTLS_PK_RSA,
    MBEDTLS_PK_ECDSA,
}

struct MbedtlsPkRestartCtx;

fn mbedtls_ssl_get_ciphersuite_sig_pk_alg(_info: &MbedtlsSslCiphersuite) -> MbedtlsPkType {
    // Implement this function
    MbedtlsPkType::MBEDTLS_PK_NONE
}

fn mbedtls_ssl_ciphersuite_uses_server_signature(_info: &MbedtlsSslCiphersuite) -> bool {
    // Implement this function
    true
}

fn mbedtls_ssl_read_record(_ssl: &mut MbedtlsSslContext, _update_hs_digest: i32) -> Result<(), i32> {
    // Implement this function
    Ok(())
}

fn mbedtls_ssl_send_alert_message(_ssl: &mut MbedtlsSslContext, _level: u8, _message: u8) -> Result<(), i32> {
    // Implement this function
    Ok(())
}

fn ssl_parse_server_key_exchange(ssl: &mut MbedtlsSslContext) -> Result<(), i32> {
    let ciphersuite_info = &ssl.handshake.ciphersuite_info;
    let mut p: *const u8 = ptr::null();
    let mut end: *const u8 = ptr::null();

    if ciphersuite_info.key_exchange == MbedtlsKeyExchangeType::MBEDTLS_KEY_EXCHANGE_RSA {
        ssl.state += 1;
        return Ok(());
    }

    if ciphersuite_info.key_exchange == MbedtlsKeyExchangeType::MBEDTLS_KEY_EXCHANGE_ECDH_RSA
        || ciphersuite_info.key_exchange == MbedtlsKeyExchangeType::MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA
    {
        // Implement ssl_get_ecdh_params_from_cert00
        ssl.state += 1;
        return Ok(());
    }

    mbedtls_ssl_read_record(ssl, 1)?;

    if ssl.in_msgtype != 22 {
        mbedtls_ssl_send_alert_message(ssl, 2, 10)?;
        return Err(-0x7700);
    }

    if ssl.in_msg[0] != 12 {
        if ciphersuite_info.key_exchange == MbedtlsKeyExchangeType::MBEDTLS_KEY_EXCHANGE_PSK
            || ciphersuite_info.key_exchange == MbedtlsKeyExchangeType::MBEDTLS_KEY_EXCHANGE_RSA_PSK
        {
            ssl.state += 1;
            return Ok(());
        }
        mbedtls_ssl_send_alert_message(ssl, 2, 10)?;
        return Err(-0x7700);
    }

    p = ssl.in_msg.as_ptr().wrapping_add(mbedtls_ssl_hs_hdr_len(ssl));
    end = ssl.in_msg.as_ptr().wrapping_add(ssl.in_hslen);

    if mbedtls_ssl_ciphersuite_uses_server_signature(ciphersuite_info) {
        let mut sig_len: usize;
        let mut hashlen: usize;
        let mut hash = [0u8; 64];
        let mut md_alg = MbedtlsMdType::MBEDTLS_MD_NONE;
        let mut pk_alg = MbedtlsPkType::MBEDTLS_PK_NONE;
        let params = unsafe { slice::from_raw_parts(p, end.offset_from(p) as usize) };
        let params_len = params.len();
        let rs_ctx: Option<&mut MbedtlsPkRestartCtx> = None;
        let peer_pk;

        if ssl.session_negotiate.is_none() {
            return Err(-0x6C00);
        }

        peer_pk = &ssl.session_negotiate.as_ref().unwrap().peer_cert.as_ref().unwrap().pk;

        if !peer_pk.can_do(pk_alg) {
            mbedtls_ssl_send_alert_message(ssl, 2, 40)?;
            return Err(-0x6D00);
        }

        if let Err(ret) = peer_pk.verify_restartable(md_alg, &hash, &params, rs_ctx) {
            mbedtls_ssl_send_alert_message(ssl, 2, 51)?;
            return Err(ret);
        }
    }

    ssl.state += 1;
    Ok(())
}

fn mbedtls_ssl_hs_hdr_len(_ssl: &MbedtlsSslContext) -> usize {
    // Implement this function
    0
}
