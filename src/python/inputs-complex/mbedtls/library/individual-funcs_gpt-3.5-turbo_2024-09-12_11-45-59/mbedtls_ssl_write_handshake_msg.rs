use std::mem;

#[repr(C)]
struct mbedtls_mpi {
    s: i32,
    n: usize,
    p: *mut mbedtls_mpi_uint,
}

type mbedtls_mpi_uint = u64;

#[repr(C)]
#[derive(Debug)]
enum mbedtls_ecp_group_id {
    MBEDTLS_ECP_DP_NONE = 0,
    MBEDTLS_ECP_DP_SECP192R1,
    MBEDTLS_ECP_DP_SECP224R1,
    MBEDTLS_ECP_DP_SECP256R1,
    MBEDTLS_ECP_DP_SECP384R1,
    MBEDTLS_ECP_DP_SECP521R1,
    MBEDTLS_ECP_DP_BP256R1,
    MBEDTLS_ECP_DP_BP384R1,
    MBEDTLS_ECP_DP_BP512R1,
    MBEDTLS_ECP_DP_CURVE25519,
    MBEDTLS_ECP_DP_SECP192K1,
    MBEDTLS_ECP_DP_SECP224K1,
    MBEDTLS_ECP_DP_SECP256K1,
    MBEDTLS_ECP_DP_CURVE448,
}

#[repr(C)]
struct mbedtls_ecp_curve_info {
    grp_id: mbedtls_ecp_group_id,
    tls_id: u16,
    bit_size: u16,
    name: *const u8,
}

#[repr(C)]
struct mbedtls_ecp_point {
    X: mbedtls_mpi,
    Y: mbedtls_mpi,
    Z: mbedtls_mpi,
}

#[repr(C)]
struct mbedtls_ecp_group {
    id: mbedtls_ecp_group_id,
    P: mbedtls_mpi,
    A: mbedtls_mpi,
    B: mbedtls_mpi,
    G: mbedtls_ecp_point,
    N: mbedtls_mpi,
    pbits: usize,
    nbits: usize,
    h: u32,
    modp: extern "C" fn(*mut mbedtls_mpi) -> i32,
    t_pre: extern "C" fn(*mut mbedtls_ecp_point, *mut std::ffi::c_void) -> i32,
    t_post: extern "C" fn(*mut mbedtls_ecp_point, *mut std::ffi::c_void) -> i32,
    t_data: *mut std::ffi::c_void,
    T: *mut mbedtls_ecp_point,
    T_size: usize,
}

#[repr(C)]
#[derive(Debug)]
enum mbedtls_md_type_t {
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
struct mbedtls_md_info_t;

#[repr(C)]
struct mbedtls_md_context_t {
    md_info: *const mbedtls_md_info_t,
    md_ctx: *mut std::ffi::c_void,
    hmac_ctx: *mut std::ffi::c_void,
}

#[repr(C)]
#[derive(Debug)]
enum mbedtls_pk_type_t {
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
struct mbedtls_pk_info_t;

#[repr(C)]
struct mbedtls_pk_context {
    pk_info: *const mbedtls_pk_info_t,
    pk_ctx: *mut std::ffi::c_void,
}

#[repr(C)]
#[derive(Debug)]
enum mbedtls_cipher_type_t {
    MBEDTLS_CIPHER_NONE = 0,
    MBEDTLS_CIPHER_NULL,
    MBEDTLS_CIPHER_AES_128_ECB,
    MBEDTLS_CIPHER_AES_192_ECB,
    MBEDTLS_CIPHER_AES_256_ECB,
    // Add all other variants
}

#[repr(C)]
#[derive(Debug)]
enum mbedtls_cipher_mode_t {
    MBEDTLS_MODE_NONE = 0,
    MBEDTLS_MODE_ECB,
    MBEDTLS_MODE_CBC,
    MBEDTLS_MODE_CFB,
    MBEDTLS_MODE_OFB,
    MBEDTLS_MODE_CTR,
    MBEDTLS_MODE_GCM,
    MBEDTLS_MODE_STREAM,
    MBEDTLS_MODE_CCM,
    MBEDTLS_MODE_XTS,
    MBEDTLS_MODE_CHACHAPOLY,
    MBEDTLS_MODE_KW,
    MBEDTLS_MODE_KWP,
}

#[repr(C)]
#[derive(Debug)]
enum mbedtls_operation_t {
    MBEDTLS_OPERATION_NONE = -1,
    MBEDTLS_DECRYPT = 0,
    MBEDTLS_ENCRYPT,
}

#[repr(C)]
struct mbedtls_cipher_info_t {
    type_: mbedtls_cipher_type_t,
    mode: mbedtls_cipher_mode_t,
    key_bitlen: u32,
    name: *const u8,
    iv_size: u32,
    flags: i32,
    block_size: u32,
    base: *const mbedtls_cipher_base_t,
}

#[repr(C)]
struct mbedtls_cipher_context_t {
    cipher_info: *const mbedtls_cipher_info_t,
    key_bitlen: i32,
    operation: mbedtls_operation_t,
    add_padding: extern "C" fn(*mut u8, usize, usize),
    get_padding: extern "C" fn(*mut u8, usize, *mut usize),
    unprocessed_data: [u8; 16],
    unprocessed_len: usize,
    iv: [u8; 16],
    iv_size: usize,
    cipher_ctx: *mut std::ffi::c_void,
}

#[repr(C)]
#[derive(Debug)]
enum mbedtls_key_exchange_type_t {
    MBEDTLS_KEY_EXCHANGE_NONE = 0,
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

#[repr(C)]
struct mbedtls_ssl_ciphersuite_t {
    id: i32,
    name: *const u8,
    cipher: mbedtls_cipher_type_t,
    mac: mbedtls_md_type_t,
    key_exchange: mbedtls_key_exchange_type_t,
    min_major_ver: i32,
    min_minor_ver: i32,
    max_major_ver: i32,
    max_minor_ver: i32,
    flags: u8,
}

#[repr(C)]
struct mbedtls_asn1_buf {
    tag: i32,
    len: usize,
    p: *mut u8,
}

#[repr(C)]
struct mbedtls_asn1_sequence {
    buf: mbedtls_asn1_buf,
    next: *mut mbedtls_asn1_sequence,
}

#[repr(C)]
struct mbedtls_asn1_named_data {
    oid: mbedtls_asn1_buf,
    val: mbedtls_asn1_buf,
    next: *mut mbedtls_asn1_named_data,
    next_merged: u8,
}

#[repr(C)]
type mbedtls_x509_buf = mbedtls_asn1_buf;

#[repr(C)]
type mbedtls_x509_name = mbedtls_asn1_named_data;

#[repr(C)]
type mbedtls_x509_sequence = mbedtls_asn1_sequence;

#[repr(C)]
struct mbedtls_x509_time {
    year: i32,
    mon: i32,
    day: i32,
    hour: i32,
    min: i32,
    sec: i32,
}

#[repr(C)]
struct mbedtls_x509_crl_entry {
    raw: mbedtls_x509_buf,
    serial: mbedtls_x509_buf,
    revocation_date: mbedtls_x509_time,
    entry_ext: mbedtls_x509_buf,
    next: *mut mbedtls_x509_crl_entry,
}

#[repr(C)]
struct mbedtls_x509_crl {
    raw: mbedtls_x509_buf,
    tbs: mbedtls_x509_buf,
    version: i32,
    sig_oid: mbedtls_x509_buf,
    issuer_raw: mbedtls_x509_buf,
    issuer: mbedtls_x509_name,
    this_update: mbedtls_x509_time,
    next_update: mbedtls_x509_time,
    entry: mbedtls_x509_crl_entry,
    crl_ext: mbedtls_x509_buf,
    sig_oid2: mbedtls_x509_buf,
    sig: mbedtls_x509_buf,
    sig_md: mbedtls_md_type_t,
    sig_pk: mbedtls_pk_type_t,
    sig_opts: *mut std::ffi::c_void,
    next: *mut mbedtls_x509_crl,
}

#[repr(C)]
struct mbedtls_x509_crt {
    own_buffer: i32,
    raw: mbedtls_x509_buf,
    tbs: mbedtls_x509_buf,
    version: i32,
    serial: mbedtls_x509_buf,
    sig_oid: mbedtls_x509_buf,
    issuer_raw: mbedtls_x509_buf,
    subject_raw: mbedtls_x509_buf,
    issuer: mbedtls_x509_name,
    subject: mbedtls_x509_name,
    valid_from: mbedtls_x509_time,
    valid_to: mbedtls_x509_time,
    pk_raw: mbedtls_x509_buf,
    pk: mbedtls_pk_context,
    issuer_id: mbedtls_x509_buf,
    subject_id: mbedtls_x509_buf,
    v3_ext: mbedtls_x509_buf,
    subject_alt_names: mbedtls_x509_sequence,
    certificate_policies: mbedtls_x509_sequence,
    ext_types: i32,
    ca_istrue: i32,
    max_pathlen: i32,
    key_usage: u32,
    ext_key_usage: mbedtls_x509_sequence,
    ns_cert_type: u8,
    sig: mbedtls_x509_buf,
    sig_md: mbedtls_md_type_t,
    sig_pk: mbedtls_pk_type_t,
    sig_opts: *mut std::ffi::c_void,
    next: *mut mbedtls_x509_crt,
}

#[repr(C)]
struct mbedtls_x509_crt_profile {
    allowed_mds: u32,
    allowed_pks: u32,
    allowed_curves: u32,
    rsa_min_bitlen: u32,
}

#[repr(C)]
struct mbedtls_dhm_context {
    len: usize,
    P: mbedtls_mpi,
    G: mbedtls_mpi,
    X: mbedtls_mpi,
    GX: mbedtls_mpi,
    GY: mbedtls_mpi,
    K: mbedtls_mpi,
    RP: mbedtls_mpi,
    Vi: mbedtls_mpi,
    Vf: mbedtls_mpi,
    pX: mbedtls_mpi,
}

#[repr(C)]
struct mbedtls_ecdh_context {
    grp: mbedtls_ecp_group,
    d: mbedtls_mpi,
    Q: mbedtls_ecp_point,
    Qp: mbedtls_ecp_point,
    z: mbedtls_mpi,
    point_format: i32,
    Vi: mbedtls_ecp_point,
    Vf: mbedtls_ecp_point,
    _d: mbedtls_mpi,
}

union mbedtls_ssl_premaster_secret {
    _pms_rsa: [u8; 48],
    _pms_dhm: [u8; 1024],
    _pms_ecdh: [u8; (521 + 7) / 8],
    _pms_psk: [u8; 4 + 2 * 32],
    _pms_dhe_psk: [u8; 4 + 1024 + 32],
    _pms_rsa_psk: [u8; 52 + 32],
    _pms_ecdhe_psk: [u8; 4 + (521 + 7) / 8 + 32],
}

#[repr(C)]
enum mbedtls_tls_prf_types {
    MBEDTLS_SSL_TLS_PRF_NONE,
    MBEDTLS_SSL_TLS_PRF_SSL3,
    MBEDTLS_SSL_TLS_PRF_TLS1,
    MBEDTLS_SSL_TLS_PRF_SHA384,
    MBEDTLS_SSL_TLS_PRF_SHA256,
}

type mbedtls_ssl_send_t = extern "C" fn(*mut std::ffi::c_void, *const u8, usize) -> i32;
type mbedtls_ssl_recv_t = extern "C" fn(*mut std::ffi::c_void, *mut u8, usize) -> i32;
type mbedtls_ssl_recv_timeout_t = extern "C" fn(*mut std::ffi::c_void, *mut u8, usize, u32) -> i32;
type mbedtls_ssl_set_timer_t = extern "C" fn(*mut std::ffi::c_void, u32, u32);
type mbedtls_ssl_get_timer_t = extern "C" fn(*mut std::ffi::c_void);

#[repr(C)]
struct mbedtls_ssl_session;

#[repr(C)]
struct mbedtls_ssl_context;

#[repr(C)]
struct mbedtls_ssl_config;

#[repr(C)]
struct mbedtls_ssl_transform;

#[repr(C)]
struct mbedtls_ssl_handshake_params;

#[repr(C)]
struct mbedtls_ssl_sig_hash_set_t;

#[repr(C)]
struct mbedtls_ssl_key_cert;

#[repr(C)]
struct mbedtls_ssl_flight_item;

extern {
    fn memcpy(dest: *mut std::ffi::c_void, src: *const std::ffi::c_void, n: usize) -> *mut std::ffi::c_void;
    fn memmove(dest: *mut std::ffi::c_void, src: *const std::ffi::c_void, n: usize) -> *mut std::ffi::c_void;
    fn memset(s: *mut std::ffi::c_void, c: i32, n: usize) -> *mut std::ffi::c_void;
}

fn mbedtls_ssl_write_handshake_msg(ssl: *mut mbedtls_ssl_context) -> i32 {
    let ret = -0x006E;
    let hs_len = unsafe { (*ssl).out_msglen - 4 };
    let hs_type = unsafe { (*ssl).out_msg[0] };

    if !((*ssl).out_msgtype == 22 && hs_type == 0) && unsafe { (*ssl).handshake.is_null() } {
        return -0x6C00;
    }

    if unsafe { (*ssl).out_msglen } > 16384 {
        return -0x6C00;
    }

    if unsafe { (*ssl).out_msgtype == 22 } {
        unsafe {
            (*ssl).out_msg[1] = (hs_len >> 16) as u8;
            (*ssl).out_msg[2] = (hs_len >> 8) as u8;
            (*ssl).out_msg[3] = hs_len as u8;

            if (*ssl).conf.transport == 1 {
                if 16384 - (*ssl).out_msglen < 8 {
                    return -0x7100;
                }

                memmove((*ssl).out_msg[12..].as_mut_ptr(), (*ssl).out_msg[4..].as_ptr(), hs_len);
                (*ssl).out_msglen += 8;

                if hs_type != 0 {
                    (*ssl).out_msg[4] = ((*ssl).handshake.out_msg_seq >> 8) as u8;
                    (*ssl).out_msg[5] = (*ssl).handshake.out_msg_seq as u8;
                    (*ssl).handshake.out_msg_seq += 1;
                } else {
                    (*ssl).out_msg[4] = 0;
                    (*ssl).out_msg[5] = 0;
                }

                memset((*ssl).out_msg[6..].as_mut_ptr(), 0x00, 3);
                memcpy((*ssl).out_msg[9..].as_mut_ptr(), (*ssl).out_msg[1..].as_ptr(), 3);
            }

            if hs_type != 0 {
                (*ssl).handshake.update_checksum(ssl, (*ssl).out_msg, (*ssl).out_msglen);
            }
        }
    }

    if unsafe { (*ssl).conf.transport == 1 && !((*ssl).out_msgtype == 22 && hs_type == 0) } {
        let append_result = unsafe { ssl_flight_append(ssl) };
        if append_result != 0 {
            return append_result;
        }
    } else {
        let write_result = unsafe { mbedtls_ssl_write_record(ssl, 1) };
        if write_result != 0 {
            return write_result;
        }
    }

    0
}
