use std::os::raw::{c_char, c_int, c_uchar, c_uint, c_ulong, c_void};

type size_t = c_ulong;
type uint8_t = c_uchar;
type uint16_t = c_uchar;
type uint32_t = c_uint;
type uint64_t = c_ulong;
type mbedtls_mpi_uint = uint64_t;

#[repr(C)]
struct mbedtls_mpi {
    s: c_int,
    n: size_t,
    p: *mut mbedtls_mpi_uint,
}

#[repr(C)]
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

type mbedtls_md_type_t = mbedtls_md_type_t;

type mbedtls_pk_type_t = c_int;

#[repr(C)]
struct mbedtls_pk_info_t;

#[repr(C)]
struct mbedtls_pk_context {
    pk_info: *const mbedtls_pk_info_t,
    pk_ctx: *mut c_void,
}

#[repr(C)]
enum mbedtls_cipher_type_t {
    MBEDTLS_CIPHER_NONE = 0,
    MBEDTLS_CIPHER_NULL,
    MBEDTLS_CIPHER_AES_128_ECB,
    MBEDTLS_CIPHER_AES_192_ECB,
    MBEDTLS_CIPHER_AES_256_ECB,
    // Add all other variants
}

type mbedtls_cipher_type_t = mbedtls_cipher_type_t;

#[repr(C)]
enum mbedtls_ecp_group_id {
    MBEDTLS_ECP_DP_NONE = 0,
    MBEDTLS_ECP_DP_SECP192R1,
    MBEDTLS_ECP_DP_SECP224R1,
    MBEDTLS_ECP_DP_SECP256R1,
    // Add all other variants
}

type mbedtls_ecp_group_id = mbedtls_ecp_group_id;

#[repr(C)]
struct mbedtls_ssl_ciphersuite_t {
    id: c_int,
    name: *const c_char,
    cipher: mbedtls_cipher_type_t,
    mac: mbedtls_md_type_t,
    key_exchange: c_int,
    min_major_ver: c_int,
    min_minor_ver: c_int,
    max_major_ver: c_int,
    max_minor_ver: c_int,
    flags: c_uchar,
}

extern {
    fn mbedtls_ssl_ciphersuite_from_id(ciphersuite_id: c_int) -> *const mbedtls_ssl_ciphersuite_t;
}

#[repr(C)]
struct mbedtls_asn1_buf {
    tag: c_int,
    len: size_t,
    p: *mut c_uchar,
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
    next_merged: c_uchar,
}

type mbedtls_x509_buf = mbedtls_asn1_buf;
type mbedtls_x509_name = mbedtls_asn1_named_data;
type mbedtls_x509_sequence = mbedtls_asn1_sequence;

#[repr(C)]
struct mbedtls_x509_time {
    year: c_int,
    mon: c_int,
    day: c_int,
    hour: c_int,
    min: c_int,
    sec: c_int,
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
    version: c_int,
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
    sig_opts: *mut c_void,
    next: *mut mbedtls_x509_crl,
}

#[repr(C)]
struct mbedtls_x509_crt {
    own_buffer: c_int,
    raw: mbedtls_x509_buf,
    tbs: mbedtls_x509_buf,
    version: c_int,
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
    ext_types: c_int,
    ca_istrue: c_int,
    max_pathlen: c_int,
    key_usage: c_uint,
    ext_key_usage: mbedtls_x509_sequence,
    ns_cert_type: c_uchar,
    sig: mbedtls_x509_buf,
    sig_md: mbedtls_md_type_t,
    sig_pk: mbedtls_pk_type_t,
    sig_opts: *mut c_void,
    next: *mut mbedtls_x509_crt,
}

#[repr(C)]
struct mbedtls_x509_crt_profile {
    allowed_mds: c_uint,
    allowed_pks: c_uint,
    allowed_curves: c_uint,
    rsa_min_bitlen: c_uint,
}

#[repr(C)]
union mbedtls_ssl_premaster_secret {
    _pms_rsa: [c_uchar; 48],
    _pms_dhm: [c_uchar; 1024],
    _pms_ecdh: [c_uchar; (521 + 7) / 8],
    _pms_psk: [c_uchar; 4 + 2 * 32],
    _pms_dhe_psk: [c_uchar; 4 + 1024 + 32],
    _pms_rsa_psk: [c_uchar; 52 + 32],
    _pms_ecdhe_psk: [c_uchar; 4 + (521 + 7) / 8 + 32],
}

#[repr(C)]
enum mbedtls_tls_prf_types {
    MBEDTLS_SSL_TLS_PRF_NONE,
    MBEDTLS_SSL_TLS_PRF_SSL3,
    MBEDTLS_SSL_TLS_PRF_TLS1,
    MBEDTLS_SSL_TLS_PRF_SHA384,
    MBEDTLS_SSL_TLS_PRF_SHA256,
}

type mbedtls_tls_prf_types = mbedtls_tls_prf_types;

type mbedtls_ssl_send_t = extern "C" fn(*mut c_void, *const c_uchar, size_t) -> c_int;
type mbedtls_ssl_recv_t = extern "C" fn(*mut c_void, *mut c_uchar, size_t) -> c_int;
type mbedtls_ssl_recv_timeout_t = extern "C" fn(*mut c_void, *mut c_uchar, size_t, c_uint) -> c_int;
type mbedtls_ssl_set_timer_t = extern "C" fn(*mut c_void, c_uint, c_uint);
type mbedtls_ssl_get_timer_t = extern "C" fn(*mut c_void);

#[repr(C)]
struct mbedtls_ssl_session {
    start: mbedtls_time_t,
    ciphersuite: c_int,
    compression: c_int,
    id_len: size_t,
    id: [c_uchar; 32],
    master: [c_uchar; 48],
    peer_cert: *mut mbedtls_x509_crt,
    verify_result: c_uint,
    ticket: *mut c_uchar,
    ticket_len: size_t,
    ticket_lifetime: c_uint,
    mfl_code: c_uchar,
    trunc_hmac: c_int,
    encrypt_then_mac: c_int,
}

#[repr(C)]
struct mbedtls_ssl_config {
    ciphersuite_list: [*const c_int; 4],
    f_dbg: extern "C" fn(*mut c_void, c_int, *const c_char, c_int, *const c_char),
    p_dbg: *mut c_void,
    f_rng: extern "C" fn(*mut c_void, *mut c_uchar, size_t) -> c_int,
    p_rng: *mut c_void,
    f_get_cache: extern "C" fn(*mut c_void, *mut mbedtls_ssl_session) -> c_int,
    f_set_cache: extern "C" fn(*mut c_void, *const mbedtls_ssl_session) -> c_int,
    p_cache: *mut c_void,
    // Add all other fields
}

#[repr(C)]
struct mbedtls_ssl_context {
    conf: *const mbedtls_ssl_config,
    state: c_int,
    renego_status: c_int,
    renego_records_seen: c_int,
    major_ver: c_int,
    minor_ver: c_int,
    badmac_seen: c_uint,
    f_vrfy: extern "C" fn(*mut c_void, *mut mbedtls_x509_crt, c_int, *mut c_uint) -> c_int,
    p_vrfy: *mut c_void,
    f_send: mbedtls_ssl_send_t,
    f_recv: mbedtls_ssl_recv_t,
    f_recv_timeout: mbedtls_ssl_recv_timeout_t,
    p_bio: *mut c_void,
    session_in: *mut mbedtls_ssl_session,
    session_out: *mut mbedtls_ssl_session,
    session: *mut mbedtls_ssl_session,
    session_negotiate: *mut mbedtls_ssl_session,
    // Add all other fields
}

extern {
    fn mbedtls_ssl_ciphersuite_from_id(ciphersuite_id: c_int) -> *const mbedtls_ssl_ciphersuite_t;
}
