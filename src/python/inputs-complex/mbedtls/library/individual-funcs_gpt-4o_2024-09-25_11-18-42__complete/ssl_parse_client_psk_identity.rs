#[repr(C)]
pub struct MbedtlsX509Crt {
    // Add the fields from the C struct here
    // For example:
    own_buffer: i32,
    raw: MbedtlsAsn1Buf,
    tbs: MbedtlsAsn1Buf,
    version: i32,
    serial: MbedtlsAsn1Buf,
    sig_oid: MbedtlsAsn1Buf,
    issuer_raw: MbedtlsAsn1Buf,
    subject_raw: MbedtlsAsn1Buf,
    issuer: MbedtlsX509Name,
    subject: MbedtlsX509Name,
    valid_from: MbedtlsX509Time,
    valid_to: MbedtlsX509Time,
    pk_raw: MbedtlsAsn1Buf,
    pk: MbedtlsPkContext,
    issuer_id: MbedtlsAsn1Buf,
    subject_id: MbedtlsAsn1Buf,
    v3_ext: MbedtlsAsn1Buf,
    subject_alt_names: MbedtlsAsn1Sequence,
    certificate_policies: MbedtlsAsn1Sequence,
    ext_types: i32,
    ca_istrue: i32,
    max_pathlen: i32,
    key_usage: u32,
    ext_key_usage: MbedtlsAsn1Sequence,
    ns_cert_type: u8,
    sig: MbedtlsAsn1Buf,
    sig_md: MbedtlsMdType,
    sig_pk: MbedtlsPkType,
    sig_opts: *mut std::ffi::c_void,
    next: *mut MbedtlsX509Crt,
}

#[repr(C)]
pub struct MbedtlsTlsPrfTypes {
    // Add the fields from the C enum here
    // For example:
    MBEDTLS_SSL_TLS_PRF_NONE: i32,
    MBEDTLS_SSL_TLS_PRF_SSL3: i32,
    MBEDTLS_SSL_TLS_PRF_TLS1: i32,
    MBEDTLS_SSL_TLS_PRF_SHA384: i32,
    MBEDTLS_SSL_TLS_PRF_SHA256: i32,
}

#[repr(C)]
pub struct MbedtlsX509CrtProfile {
    allowed_mds: u32,
    allowed_pks: u32,
    allowed_curves: u32,
    rsa_min_bitlen: u32,
}

#[repr(C)]
pub struct MbedtlsSslConfig {
    // Other fields...
    f_vrfy: Option<fn(*mut std::ffi::c_void, *mut MbedtlsX509Crt, i32, *mut u32) -> i32>,
    // Other fields...
    f_export_keys_ext: Option<fn(*mut std::ffi::c_void, *const u8, *const u8, usize, usize, usize, *const u8, *const u8, MbedtlsTlsPrfTypes) -> i32>,
    // Other fields...
    cert_profile: *const MbedtlsX509CrtProfile,
    // Other fields...
}

fn ssl_parse_client_psk_identity(ssl: &mut MbedtlsSslContext, p: &mut *mut u8, end: *const u8) -> i32 {
    let mut ret = 0;
    let n: u16;

    if ssl_conf_has_psk_or_cb(ssl.conf) == 0 {
        mbedtls_debug_print_msg(ssl, 1, "ssl_srv.c", 3814, "got no pre-shared key");
        return -0x7600;
    }

    if end.offset_from(*p) < 2 {
        mbedtls_debug_print_msg(ssl, 1, "ssl_srv.c", 3823, "bad client key exchange message");
        return -0x7C00;
    }

    n = ((*p)[0] as u16) << 8 | (*p)[1] as u16;
    *p = p.add(2);

    if n == 0 || n > end.offset_from(*p) as u16 {
        mbedtls_debug_print_msg(ssl, 1, "ssl_srv.c", 3832, "bad client key exchange message");
        return -0x7C00;
    }

    if let Some(f_psk) = ssl.conf.f_psk {
        if f_psk(ssl.conf.p_psk, ssl, *p, n as usize) != 0 {
            ret = -0x6C80;
        }
    } else {
        if n as usize != ssl.conf.psk_identity_len || mbedtls_ssl_safer_memcmp(ssl.conf.psk_identity, *p, n as usize) != 0 {
            ret = -0x6C80;
        }
    }

    if ret == -0x6C80 {
        mbedtls_debug_print_buf(ssl, 3, "ssl_srv.c", 3854, "Unknown PSK identity", *p, n as usize);
        mbedtls_ssl_send_alert_message(ssl, 2, 115);
        return -0x6C80;
    }

    *p = p.add(n as usize);
    0
}
