use std::os::raw::{c_char, c_int, c_uchar, c_uint, c_ulong, c_void};

type size_t = c_ulong;
type uint8_t = c_uchar;
type uint16_t = c_uchar;
type uint32_t = c_uint;
type uint64_t = u64;
type mbedtls_mpi_uint = uint64_t;

#[repr(C)]
struct mbedtls_mpi {
    s: c_int,
    n: size_t,
    p: *mut mbedtls_mpi_uint,
}

#[repr(C)]
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
    tls_id: uint16_t,
    bit_size: uint16_t,
    name: *const c_char,
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
    pbits: size_t,
    nbits: size_t,
    h: c_uint,
    modp: extern "C" fn(*mut mbedtls_mpi) -> c_int,
    t_pre: extern "C" fn(*mut mbedtls_ecp_point, *mut c_void) -> c_int,
    t_post: extern "C" fn(*mut mbedtls_ecp_point, *mut c_void) -> c_int,
    t_data: *mut c_void,
    T: *mut mbedtls_ecp_point,
    T_size: size_t,
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

#[repr(C)]
struct mbedtls_md_info_t;

#[repr(C)]
struct mbedtls_md_context_t {
    md_info: *const mbedtls_md_info_t,
    md_ctx: *mut c_void,
    hmac_ctx: *mut c_void,
}

#[repr(C)]
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
    pk_ctx: *mut c_void,
}

#[repr(C)]
enum mbedtls_cipher_type_t {
    MBEDTLS_CIPHER_NONE = 0,
    MBEDTLS_CIPHER_NULL,
    MBEDTLS_CIPHER_AES_128_ECB,
    MBEDTLS_CIPHER_AES_192_ECB,
    MBEDTLS_CIPHER_AES_256_ECB,
    // Add all other enum variants here
}

#[repr(C)]
enum mbedtls_cipher_mode_t {
    MBEDTLS_MODE_NONE = 0,
    MBEDTLS_MODE_ECB,
    MBEDTLS_MODE_CBC,
    MBEDTLS_MODE_CFB,
    // Add all other enum variants here
}

#[repr(C)]
struct mbedtls_cipher_info_t {
    type_: mbedtls_cipher_type_t,
    mode: mbedtls_cipher_mode_t,
    key_bitlen: c_uint,
    name: *const c_char,
    iv_size: c_uint,
    flags: c_int,
    block_size: c_uint,
    base: *const mbedtls_cipher_base_t,
}

#[repr(C)]
struct mbedtls_cipher_context_t {
    cipher_info: *const mbedtls_cipher_info_t,
    key_bitlen: c_int,
    operation: mbedtls_operation_t,
    add_padding: extern "C" fn(*mut c_uchar, size_t, size_t),
    get_padding: extern "C" fn(*mut c_uchar, size_t, *mut size_t) -> c_int,
    unprocessed_data: [c_uchar; 16],
    unprocessed_len: size_t,
    iv: [c_uchar; 16],
    iv_size: size_t,
    cipher_ctx: *mut c_void,
}

#[repr(C)]
enum mbedtls_key_exchange_type_t {
    MBEDTLS_KEY_EXCHANGE_NONE = 0,
    MBEDTLS_KEY_EXCHANGE_RSA,
    MBEDTLS_KEY_EXCHANGE_DHE_RSA,
    MBEDTLS_KEY_EXCHANGE_ECDHE_RSA,
    // Add all other enum variants here
}

#[repr(C)]
struct mbedtls_ssl_ciphersuite_t {
    id: c_int,
    name: *const c_char,
    cipher: mbedtls_cipher_type_t,
    mac: mbedtls_md_type_t,
    key_exchange: mbedtls_key_exchange_type_t,
    min_major_ver: c_int,
    min_minor_ver: c_int,
    max_major_ver: c_int,
    max_minor_ver: c_int,
    flags: c_uchar,
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
    allowed_mds: u32,
    allowed_pks: u32,
    allowed_curves: u32,
    rsa_min_bitlen: u32,
}

#[repr(C)]
struct mbedtls_dhm_context {
    len: size_t,
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
    point_format: c_int,
    Vi: mbedtls_ecp_point,
    Vf: mbedtls_ecp_point,
    _d: mbedtls_mpi,
}

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

type mbedtls_ssl_send_t = extern "C" fn(*mut c_void, *const c_uchar, size_t) -> c_int;
type mbedtls_ssl_recv_t = extern "C" fn(*mut c_void, *mut c_uchar, size_t) -> c_int;
type mbedtls_ssl_recv_timeout_t = extern "C" fn(*mut c_void, *mut c_uchar, size_t, u32) -> c_int;
type mbedtls_ssl_set_timer_t = extern "C" fn(*mut c_void, u32, u32);
type mbedtls_ssl_get_timer_t = extern "C" fn(*mut c_void);

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

extern "C" {
    fn mbedtls_ssl_conf_fallback(conf: *mut mbedtls_ssl_config, fallback: c_char);
}
