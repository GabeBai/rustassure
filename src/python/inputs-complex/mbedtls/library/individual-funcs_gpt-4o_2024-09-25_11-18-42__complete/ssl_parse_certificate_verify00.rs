use std::ptr;
use std::slice;
use std::ffi::CStr;
use std::os::raw::{c_int, c_uint, c_void};

#[repr(C)]
struct MbedtlsSslContext {
    state: c_int,
    minor_ver: c_int,
    in_msgtype: c_int,
    in_msg: *const u8,
    in_hslen: usize,
    session_negotiate: *mut MbedtlsSslSession,
    handshake: *mut MbedtlsSslHandshakeParams,
}

#[repr(C)]
struct MbedtlsSslSession {
    peer_cert: *mut MbedtlsX509Crt,
}

#[repr(C)]
struct MbedtlsX509Crt {
    pk: MbedtlsPkContext,
}

#[repr(C)]
struct MbedtlsPkContext {
    // Fields omitted for brevity
}

#[repr(C)]
struct MbedtlsSslHandshakeParams {
    ciphersuite_info: *const MbedtlsSslCiphersuite,
    calc_verify: Option<extern "C" fn(*const MbedtlsSslContext, *mut u8, *mut usize)>,
}

#[repr(C)]
struct MbedtlsSslCiphersuite {
    // Fields omitted for brevity
}

#[repr(C)]
enum MbedtlsMdType {
    MBEDTLS_MD_NONE = 0,
    MBEDTLS_MD_SHA1,
    // Other variants omitted for brevity
}

#[repr(C)]
enum MbedtlsPkType {
    MBEDTLS_PK_NONE = 0,
    MBEDTLS_PK_ECDSA,
    // Other variants omitted for brevity
}

extern "C" {
    fn mbedtls_ssl_read_record(ssl: *mut MbedtlsSslContext, update_hs_digest: c_int) -> c_int;
    fn mbedtls_pk_can_do(ctx: *const MbedtlsPkContext, type_: MbedtlsPkType) -> c_int;
    fn mbedtls_pk_verify(ctx: *const MbedtlsPkContext, md_alg: MbedtlsMdType, hash: *const u8, hash_len: usize, sig: *const u8, sig_len: usize) -> c_int;
    fn mbedtls_ssl_update_handshake_status(ssl: *mut MbedtlsSslContext);
    fn mbedtls_ssl_md_alg_from_hash(hash: u8) -> MbedtlsMdType;
    fn mbedtls_ssl_pk_alg_from_sig(sig: u8) -> MbedtlsPkType;
    fn mbedtls_ssl_set_calc_verify_md(ssl: *mut MbedtlsSslContext, md: u8) -> c_int;
    fn mbedtls_debug_print_msg(ssl: *const MbedtlsSslContext, level: c_int, file: *const i8, line: c_int, format: *const i8, ...);
    fn mbedtls_debug_print_ret(ssl: *const MbedtlsSslContext, level: c_int, file: *const i8, line: c_int, text: *const i8, ret: c_int);
}

const MBEDTLS_ERR_SSL_BAD_HS_CERTIFICATE_VERIFY: c_int = -0x7D80;
const MBEDTLS_ERR_SSL_INTERNAL_ERROR: c_int = -0x6C00;

unsafe fn ssl_parse_certificate_verify00(ssl: *mut MbedtlsSslContext) -> c_int {
    let mut ret = -0x7080;
    let mut i: usize;
    let mut sig_len: usize;
    let mut hash = [0u8; 48];
    let mut hash_start = hash.as_mut_ptr();
    let mut hashlen: usize;
    let mut pk_alg: MbedtlsPkType;
    let mut md_alg: MbedtlsMdType;
    let ciphersuite_info = (*(*ssl).handshake).ciphersuite_info;
    let peer_pk: *mut MbedtlsPkContext;

    mbedtls_debug_print_msg(ssl, 2, cstr!("ssl_srv.c"), 4205, cstr!("=> parse certificate verify"));

    if !mbedtls_ssl_ciphersuite_cert_req_allowed(ciphersuite_info) {
        mbedtls_debug_print_msg(ssl, 2, cstr!("ssl_srv.c"), 4209, cstr!("<= skip parse certificate verify"));
        (*ssl).state += 1;
        return 0;
    }

    if (*(*ssl).session_negotiate).peer_cert.is_null() {
        mbedtls_debug_print_msg(ssl, 2, cstr!("ssl_srv.c"), 4217, cstr!("<= skip parse certificate verify"));
        (*ssl).state += 1;
        return 0;
    }

    ret = mbedtls_ssl_read_record(ssl, 0);
    if ret != 0 {
        mbedtls_debug_print_ret(ssl, 1, cstr!("ssl_srv.c"), 4234, cstr!("mbedtls_ssl_read_record"), ret);
        return ret;
    }

    (*ssl).state += 1;

    if (*ssl).in_msgtype != 22 || *(*ssl).in_msg != 15 {
        mbedtls_debug_print_msg(ssl, 1, cstr!("ssl_srv.c"), 4244, cstr!("bad certificate verify message"));
        return MBEDTLS_ERR_SSL_BAD_HS_CERTIFICATE_VERIFY;
    }

    i = mbedtls_ssl_hs_hdr_len(ssl);

    if (*(*ssl).session_negotiate).peer_cert.is_null() {
        return MBEDTLS_ERR_SSL_INTERNAL_ERROR;
    }

    peer_pk = &mut (*(*(*ssl).session_negotiate).peer_cert).pk;

    if (*ssl).minor_ver != 3 {
        md_alg = MbedtlsMdType::MBEDTLS_MD_NONE;
        hashlen = 36;
        if mbedtls_pk_can_do(peer_pk, MbedtlsPkType::MBEDTLS_PK_ECDSA) != 0 {
            hash_start = hash_start.add(16);
            hashlen -= 16;
            md_alg = MbedtlsMdType::MBEDTLS_MD_SHA1;
        }
    } else if (*ssl).minor_ver == 3 {
        if i + 2 > (*ssl).in_hslen {
            mbedtls_debug_print_msg(ssl, 1, cstr!("ssl_srv.c"), 4290, cstr!("bad certificate verify message"));
            return MBEDTLS_ERR_SSL_BAD_HS_CERTIFICATE_VERIFY;
        }

        md_alg = mbedtls_ssl_md_alg_from_hash(*(*ssl).in_msg.add(i));
        if md_alg == MbedtlsMdType::MBEDTLS_MD_NONE || mbedtls_ssl_set_calc_verify_md(ssl, *(*ssl).in_msg.add(i)) != 0 {
            mbedtls_debug_print_msg(ssl, 1, cstr!("ssl_srv.c"), 4302, cstr!("peer not adhering to requested sig_alg for verify message"));
            return MBEDTLS_ERR_SSL_BAD_HS_CERTIFICATE_VERIFY;
        }

        if md_alg == MbedtlsMdType::MBEDTLS_MD_SHA1 {
            hash_start = hash_start.add(16);
        }

        hashlen = 0;
        i += 1;

        pk_alg = mbedtls_ssl_pk_alg_from_sig(*(*ssl).in_msg.add(i));
        if pk_alg == MbedtlsPkType::MBEDTLS_PK_NONE {
            mbedtls_debug_print_msg(ssl, 1, cstr!("ssl_srv.c"), 4323, cstr!("peer not adhering to requested sig_alg for verify message"));
            return MBEDTLS_ERR_SSL_BAD_HS_CERTIFICATE_VERIFY;
        }

        if mbedtls_pk_can_do(peer_pk, pk_alg) == 0 {
            mbedtls_debug_print_msg(ssl, 1, cstr!("ssl_srv.c"), 4332, cstr!("sig_alg doesn't match cert key"));
            return MBEDTLS_ERR_SSL_BAD_HS_CERTIFICATE_VERIFY;
        }

        i += 1;
    } else {
        mbedtls_debug_print_msg(ssl, 1, cstr!("ssl_srv.c"), 4341, cstr!("should never happen"));
        return MBEDTLS_ERR_SSL_INTERNAL_ERROR;
    }

    if i + 2 > (*ssl).in_hslen {
        mbedtls_debug_print_msg(ssl, 1, cstr!("ssl_srv.c"), 4347, cstr!("bad certificate verify message"));
        return MBEDTLS_ERR_SSL_BAD_HS_CERTIFICATE_VERIFY;
    }

    sig_len = ((*(*ssl).in_msg.add(i) as usize) << 8) | *(*ssl).in_msg.add(i + 1) as usize;
    i += 2;

    if i + sig_len != (*ssl).in_hslen {
        mbedtls_debug_print_msg(ssl, 1, cstr!("ssl_srv.c"), 4356, cstr!("bad certificate verify message"));
        return MBEDTLS_ERR_SSL_BAD_HS_CERTIFICATE_VERIFY;
    }

    let mut dummy_hlen: usize = 0;
    if let Some(calc_verify) = (*(*ssl).handshake).calc_verify {
        calc_verify(ssl, hash.as_mut_ptr(), &mut dummy_hlen);
    }

    ret = mbedtls_pk_verify(peer_pk, md_alg, hash_start, hashlen, (*ssl).in_msg.add(i), sig_len);
    if ret != 0 {
        mbedtls_debug_print_ret(ssl, 1, cstr!("ssl_srv.c"), 4370, cstr!("mbedtls_pk_verify"), ret);
        return ret;
    }

    mbedtls_ssl_update_handshake_status(ssl);
    mbedtls_debug_print_msg(ssl, 2, cstr!("ssl_srv.c"), 4376, cstr!("<= parse certificate verify"));

    ret
}

unsafe fn mbedtls_ssl_hs_hdr_len(ssl: *mut MbedtlsSslContext) -> usize {
    // Implement this function based on the C code logic
    0
}

unsafe fn mbedtls_ssl_ciphersuite_cert_req_allowed(ciphersuite_info: *const MbedtlsSslCiphersuite) -> bool {
    // Implement this function based on the C code logic
    true
}

macro_rules! cstr {
    ($s:expr) => {
        CStr::from_bytes_with_nul_unchecked(concat!($s, "\0").as_bytes()).as_ptr()
    };
}
