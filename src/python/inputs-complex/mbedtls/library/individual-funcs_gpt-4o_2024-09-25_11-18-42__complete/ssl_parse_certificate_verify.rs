use std::os::raw::{c_int, c_uint, c_void};
use std::ptr;

#[repr(C)]
pub struct MbedtlsX509Crt {
    own_buffer: c_int,
    raw: MbedtlsX509Buf,
    tbs: MbedtlsX509Buf,
    version: c_int,
    serial: MbedtlsX509Buf,
    sig_oid: MbedtlsX509Buf,
    issuer_raw: MbedtlsX509Buf,
    subject_raw: MbedtlsX509Buf,
    issuer: MbedtlsX509Name,
    subject: MbedtlsX509Name,
    valid_from: MbedtlsX509Time,
    valid_to: MbedtlsX509Time,
    pk_raw: MbedtlsX509Buf,
    pk: MbedtlsPkContext,
    issuer_id: MbedtlsX509Buf,
    subject_id: MbedtlsX509Buf,
    v3_ext: MbedtlsX509Buf,
    subject_alt_names: MbedtlsX509Sequence,
    certificate_policies: MbedtlsX509Sequence,
    ext_types: c_int,
    ca_istrue: c_int,
    max_pathlen: c_int,
    key_usage: c_uint,
    ext_key_usage: MbedtlsX509Sequence,
    ns_cert_type: u8,
    sig: MbedtlsX509Buf,
    sig_md: MbedtlsMdType,
    sig_pk: MbedtlsPkType,
    sig_opts: *mut c_void,
    next: *mut MbedtlsX509Crt,
}

#[repr(C)]
pub struct MbedtlsX509Buf {
    tag: c_int,
    len: usize,
    p: *mut u8,
}

#[repr(C)]
pub struct MbedtlsX509Name {
    oid: MbedtlsX509Buf,
    val: MbedtlsX509Buf,
    next: *mut MbedtlsX509Name,
    next_merged: u8,
}

#[repr(C)]
pub struct MbedtlsX509Time {
    year: c_int,
    mon: c_int,
    day: c_int,
    hour: c_int,
    min: c_int,
    sec: c_int,
}

#[repr(C)]
pub struct MbedtlsPkContext {
    pk_info: *const MbedtlsPkInfo,
    pk_ctx: *mut c_void,
}

#[repr(C)]
pub struct MbedtlsPkInfo;

#[repr(C)]
pub struct MbedtlsX509Sequence {
    buf: MbedtlsX509Buf,
    next: *mut MbedtlsX509Sequence,
}

#[repr(C)]
pub enum MbedtlsMdType {
    MBEDTLS_MD_NONE = 0,
    MBEDTLS_MD_MD2,
    MBEDTLS_MD_MD4,
    MBEDTLS_MD_MD5,
    MBEDTLS_MD_SHA1,
    MBEDTLS_MD_SHA224,
    MBEDTLS_MD_SHA256,
    MBEDTLS_MD_SHA384,
    MBEDTLS_MD_SHA512,
    MBEDTLS_MD_RIPEMD160,
}

#[repr(C)]
pub enum MbedtlsPkType {
    MBEDTLS_PK_NONE = 0,
    MBEDTLS_PK_RSA,
    MBEDTLS_PK_ECKEY,
    MBEDTLS_PK_ECKEY_DH,
    MBEDTLS_PK_ECDSA,
    MBEDTLS_PK_RSA_ALT,
    MBEDTLS_PK_RSASSA_PSS,
    MBEDTLS_PK_OPAQUE,
}

#[repr(C)]
pub struct MbedtlsSslContext {
    conf: *const MbedtlsSslConfig,
    handshake: *mut MbedtlsSslHandshakeParams,
    session_negotiate: *mut MbedtlsSslSession,
    f_vrfy: Option<extern "C" fn(*mut c_void, *mut MbedtlsX509Crt, c_int, *mut u32) -> c_int>,
    p_vrfy: *mut c_void,
    hostname: *const u8,
}

#[repr(C)]
pub struct MbedtlsSslConfig {
    f_vrfy: Option<extern "C" fn(*mut c_void, *mut MbedtlsX509Crt, c_int, *mut u32) -> c_int>,
    p_vrfy: *mut c_void,
    ca_chain: *mut MbedtlsX509Crt,
    ca_crl: *mut MbedtlsX509Crl,
    cert_profile: *const MbedtlsX509CrtProfile,
    endpoint: c_int,
}

#[repr(C)]
pub struct MbedtlsSslHandshakeParams {
    sni_ca_chain: *mut MbedtlsX509Crt,
    sni_ca_crl: *mut MbedtlsX509Crl,
    ciphersuite_info: *const MbedtlsSslCiphersuite,
}

#[repr(C)]
pub struct MbedtlsSslSession {
    verify_result: u32,
}

#[repr(C)]
pub struct MbedtlsSslCiphersuite;

#[repr(C)]
pub struct MbedtlsX509Crl;

#[repr(C)]
pub struct MbedtlsX509CrtProfile;

extern "C" {
    fn mbedtls_x509_crt_verify_restartable(
        crt: *mut MbedtlsX509Crt,
        trust_ca: *mut MbedtlsX509Crt,
        ca_crl: *mut MbedtlsX509Crl,
        profile: *const MbedtlsX509CrtProfile,
        cn: *const u8,
        flags: *mut u32,
        f_vrfy: Option<extern "C" fn(*mut c_void, *mut MbedtlsX509Crt, c_int, *mut u32) -> c_int>,
        p_vrfy: *mut c_void,
        rs_ctx: *mut c_void,
    ) -> c_int;

    fn mbedtls_pk_can_do(ctx: *const MbedtlsPkContext, type_: MbedtlsPkType) -> c_int;
    fn mbedtls_ssl_check_curve(ssl: *const MbedtlsSslContext, grp_id: c_int) -> c_int;
    fn mbedtls_ssl_check_cert_usage(
        cert: *const MbedtlsX509Crt,
        ciphersuite: *const MbedtlsSslCiphersuite,
        cert_endpoint: c_int,
        flags: *mut u32,
    ) -> c_int;
    fn mbedtls_ssl_send_alert_message(
        ssl: *mut MbedtlsSslContext,
        level: u8,
        message: u8,
    ) -> c_int;
}

fn ssl_parse_certificate_verify(
    ssl: *mut MbedtlsSslContext,
    authmode: c_int,
    chain: *mut MbedtlsX509Crt,
    rs_ctx: *mut c_void,
) -> c_int {
    let mut ret = 0;
    let ciphersuite_info = unsafe { (*(*ssl).handshake).ciphersuite_info };
    let mut have_ca_chain = 0;
    let (f_vrfy, p_vrfy) = if unsafe { (*ssl).f_vrfy.is_some() } {
        (unsafe { (*ssl).f_vrfy }, unsafe { (*ssl).p_vrfy })
    } else {
        (unsafe { (*(*ssl).conf).f_vrfy }, unsafe { (*(*ssl).conf).p_vrfy })
    };

    if authmode == 0 {
        return 0;
    }

    let (ca_chain, ca_crl) = if unsafe { (*(*ssl).handshake).sni_ca_chain.is_null() } {
        (unsafe { (*(*ssl).conf).ca_chain }, unsafe { (*(*ssl).conf).ca_crl })
    } else {
        (
            unsafe { (*(*ssl).handshake).sni_ca_chain },
            unsafe { (*(*ssl).handshake).sni_ca_crl },
        )
    };

    if !ca_chain.is_null() {
        have_ca_chain = 1;
    }

    ret = unsafe {
        mbedtls_x509_crt_verify_restartable(
            chain,
            ca_chain,
            ca_crl,
            (*(*ssl).conf).cert_profile,
            (*ssl).hostname,
            &mut (*(*ssl).session_negotiate).verify_result,
            f_vrfy,
            p_vrfy,
            rs_ctx,
        )
    };

    if ret != 0 {
        // Handle error
    }

    let pk = unsafe { &(*chain).pk };
    if unsafe { mbedtls_pk_can_do(pk, MbedtlsPkType::MBEDTLS_PK_ECKEY) } != 0
        && unsafe { mbedtls_ssl_check_curve(ssl, (*pk).grp.id) } != 0
    {
        unsafe {
            (*(*ssl).session_negotiate).verify_result |= 0x010000;
        }
        if ret == 0 {
            ret = -0x7A00;
        }
    }

    if unsafe {
        mbedtls_ssl_check_cert_usage(
            chain,
            ciphersuite_info,
            !(*(*ssl).conf).endpoint,
            &mut (*(*ssl).session_negotiate).verify_result,
        )
    } != 0
    {
        if ret == 0 {
            ret = -0x7A00;
        }
    }

    if authmode == 1 && (ret == -0x2700 || ret == -0x7A00) {
        ret = 0;
    }

    if have_ca_chain == 0 && authmode == 2 {
        ret = -0x7680;
    }

    if ret != 0 {
        let alert = if unsafe { (*(*ssl).session_negotiate).verify_result } & 0x0100 != 0 {
            49
        } else if unsafe { (*(*ssl).session_negotiate).verify_result } & 0x04 != 0 {
            42
        } else if unsafe { (*(*ssl).session_negotiate).verify_result } & 0x0800 != 0 {
            43
        } else if unsafe { (*(*ssl).session_negotiate).verify_result } & 0x1000 != 0 {
            43
        } else if unsafe { (*(*ssl).session_negotiate).verify_result } & 0x2000 != 0 {
            43
        } else if unsafe { (*(*ssl).session_negotiate).verify_result } & 0x8000 != 0 {
            43
        } else if unsafe { (*(*ssl).session_negotiate).verify_result } & 0x010000 != 0 {
            43
        } else if unsafe { (*(*ssl).session_negotiate).verify_result } & 0x01 != 0 {
            45
        } else if unsafe { (*(*ssl).session_negotiate).verify_result } & 0x02 != 0 {
            44
        } else if unsafe { (*(*ssl).session_negotiate).verify_result } & 0x08 != 0 {
            48
        } else {
            46
        };
        unsafe {
            mbedtls_ssl_send_alert_message(ssl, 2, alert);
        }
    }

    ret
}
