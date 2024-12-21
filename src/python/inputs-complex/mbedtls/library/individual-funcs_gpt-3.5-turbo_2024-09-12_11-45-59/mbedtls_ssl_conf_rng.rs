use std::os::raw::{c_uchar, c_uint, c_ulong, c_void};

type size_t = c_ulong;
type uint8_t = c_uchar;
type uint16_t = c_ushort;
type uint32_t = c_uint;
type uint64_t = u64;
type mbedtls_mpi_uint = uint64_t;

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

struct mbedtls_ecp_curve_info {
    grp_id: mbedtls_ecp_group_id,
    tls_id: uint16_t,
    bit_size: uint16_t,
    name: *const c_char,
}

struct mbedtls_ecp_point {
    X: mbedtls_mpi,
    Y: mbedtls_mpi,
    Z: mbedtls_mpi,
}

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
    modp: Option<extern "C" fn(*mut mbedtls_mpi) -> c_int>,
    t_pre: Option<extern "C" fn(*mut mbedtls_ecp_point, *mut c_void) -> c_int>,
    t_post: Option<extern "C" fn(*mut mbedtls_ecp_point, *mut c_void) -> c_int>,
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

struct mbedtls_md_info_t;

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

struct mbedtls_pk_info_t;

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
    // Add all other enum variants
}

#[repr(C)]
enum mbedtls_cipher_mode_t {
    MBEDTLS_MODE_NONE = 0,
    MBEDTLS_MODE_ECB,
    MBEDTLS_MODE_CBC,
    MBEDTLS_MODE_CFB,
    // Add all other enum variants
}

#[repr(C)]
enum mbedtls_operation_t {
    MBEDTLS_OPERATION_NONE = -1,
    MBEDTLS_DECRYPT = 0,
    MBEDTLS_ENCRYPT,
}

const MBEDTLS_KEY_LENGTH_NONE: c_uint = 0;
const MBEDTLS_KEY_LENGTH_DES: c_uint = 64;
const MBEDTLS_KEY_LENGTH_DES_EDE: c_uint = 128;
const MBEDTLS_KEY_LENGTH_DES_EDE3: c_uint = 192;

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

struct mbedtls_cipher_context_t {
    cipher_info: *const mbedtls_cipher_info_t,
    key_bitlen: c_int,
    operation: mbedtls_operation_t,
    add_padding: Option<extern "C" fn(*mut c_uchar, size_t, size_t)>,
    get_padding: Option<extern "C" fn(*mut c_uchar, size_t, *mut size_t) -> c_int,
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
    // Add all other enum variants
}

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

struct mbedtls_asn1_buf {
    tag: c_int,
    len: size_t,
    p: *mut c_uchar,
}

struct mbedtls_asn1_sequence {
    buf: mbedtls_asn1_buf,
    next: *mut mbedtls_asn1_sequence,
}

struct mbedtls_asn1_named_data {
    oid: mbedtls_asn1_buf,
    val: mbedtls_asn1_buf,
    next: *mut mbedtls_asn1_named_data,
    next_merged: c_uchar,
}

type mbedtls_x509_buf = mbedtls_asn1_buf;
type mbedtls_x509_name = mbedtls_asn1_named_data;
type mbedtls_x509_sequence = mbedtls_asn1_sequence;

struct mbedtls_x509_time {
    year: c_int,
    mon: c_int,
    day: c_int,
    hour: c_int,
    min: c_int,
    sec: c_int,
}

struct mbedtls_x509_crl_entry {
    raw: mbedtls_x509_buf,
    serial: mbedtls_x509_buf,
    revocation_date: mbedtls_x509_time,
    entry_ext: mbedtls_x509_buf,
    next: *mut mbedtls_x509_crl_entry,
}

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

struct mbedtls_x509_crt_profile {
    allowed_mds: u32,
    allowed_pks: u32,
    allowed_curves: u32,
    rsa_min_bitlen: u32,
}

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

struct mbedtls_ssl_session;
struct mbedtls_ssl_context;
struct mbedtls_ssl_config;
struct mbedtls_ssl_transform;
struct mbedtls_ssl_handshake_params;
struct mbedtls_ssl_sig_hash_set_t;
struct mbedtls_ssl_key_cert;
struct mbedtls_ssl_flight_item;

struct mbedtls_ssl_config {
    ciphersuite_list: [*const c_int; 4],
    f_dbg: Option<extern "C" fn(*mut c_void, c_int, *const c_char, c_int, *const c_char)>,
    p_dbg: *mut c_void,
    f_rng: Option<extern "C" fn(*mut c_void, *mut c_uchar, size_t) -> c_int>,
    p_rng: *mut c_void,
    // Add other fields
}

struct mbedtls_ssl_context {
    conf: *const mbedtls_ssl_config,
    state: c_int,
    renego_status: c_int,
    renego_records_seen: c_int,
    major_ver: c_int,
    minor_ver: c_int,
    badmac_seen: c_uint,
    f_vrfy: Option<extern "C" fn(*mut c_void, *mut mbedtls_x509_crt, c_int, *mut u32) -> c_int>,
    p_vrfy: *mut c_void,
    f_send: mbedtls_ssl_send_t,
    f_recv: mbedtls_ssl_recv_t,
    f_recv_timeout: mbedtls_ssl_recv_timeout_t,
    p_bio: *mut c_void,
    session_in: *mut mbedtls_ssl_session,
    session_out: *mut mbedtls_ssl_session,
    session: *mut mbedtls_ssl_session,
    session_negotiate: *mut mbedtls_ssl_session,
    handshake: *mut mbedtls_ssl_handshake_params,
    transform_in: *mut mbedtls_ssl_transform,
    transform_out: *mut mbedtls_ssl_transform,
    transform: *mut mbedtls_ssl_transform,
    transform_negotiate: *mut mbedtls_ssl_transform,
    p_timer: *mut c_void,
    f_set_timer: mbedtls_ssl_set_timer_t,
    f_get_timer: mbedtls_ssl_get_timer_t,
    in_buf: *mut c_uchar,
    in_ctr: *mut c_uchar,
    in_hdr: *mut c_uchar,
    in_len: *mut c_uchar,
    in_iv: *mut c_uchar,
    in_msg: *mut c_uchar,
    in_offt: *mut c_uchar,
    in_msgtype: c_int,
    in_msglen: size_t,
    in_left: size_t,
    in_epoch: u16,
    next_record_offset: size_t,
    in_window_top: u64,
    in_window: u64,
    in_hslen: size_t,
    nb_zero: c_int,
    keep_current_message: c_int,
    disable_datagram_packing: u8,
    out_buf: *mut c_uchar,
    out_ctr: *mut c_uchar,
    out_hdr: *mut c_uchar,
    out_len: *mut c_uchar,
    out_iv: *mut c_uchar,
    out_msg: *mut c_uchar,
    out_msgtype: c_int,
    out_msglen: size_t,
    out_left: size_t,
    cur_out_ctr: [c_uchar; 8],
    mtu: u16,
    split_done: c_schar,
    client_auth: c_int,
    hostname: *mut c_char,
    alpn_chosen: *const c_char,
    cli_id: *mut c_uchar,
    cli_id_len: size_t,
    secure_renegotiation: c_int,
    verify_data_len: size_t,
    own_verify_data: [c_char; 12],
    peer_verify_data: [c_char; 12],
}
