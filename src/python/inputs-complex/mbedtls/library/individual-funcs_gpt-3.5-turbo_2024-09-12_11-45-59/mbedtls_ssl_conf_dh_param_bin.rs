use std::os::raw::{c_uchar, c_uint, c_ulong, c_void};

type mbedtls_time_t = c_long;
type mbedtls_mpi_uint = u64;

#[repr(C)]
pub struct mbedtls_mpi {
    s: c_int,
    n: usize,
    p: *mut mbedtls_mpi_uint,
}

extern "C" {
    pub fn mbedtls_mpi_free(X: *mut mbedtls_mpi);
    pub fn mbedtls_mpi_read_binary(X: *mut mbedtls_mpi, buf: *const c_uchar, buflen: usize) -> c_int;
}

#[repr(C)]
pub enum mbedtls_ecp_group_id {
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
pub struct mbedtls_ecp_curve_info {
    grp_id: mbedtls_ecp_group_id,
    tls_id: u16,
    bit_size: u16,
    name: *const c_char,
}

#[repr(C)]
pub struct mbedtls_ecp_point {
    X: mbedtls_mpi,
    Y: mbedtls_mpi,
    Z: mbedtls_mpi,
}

#[repr(C)]
pub struct mbedtls_ecp_group {
    id: mbedtls_ecp_group_id,
    P: mbedtls_mpi,
    A: mbedtls_mpi,
    B: mbedtls_mpi,
    G: mbedtls_ecp_point,
    N: mbedtls_mpi,
    pbits: usize,
    nbits: usize,
    h: c_uint,
    modp: extern "C" fn(*mut mbedtls_mpi) -> c_int,
    t_pre: extern "C" fn(*mut mbedtls_ecp_point, *mut c_void) -> c_int,
    t_post: extern "C" fn(*mut mbedtls_ecp_point, *mut c_void) -> c_int,
    t_data: *mut c_void,
    T: *mut mbedtls_ecp_point,
    T_size: usize,
}

#[repr(C)]
pub enum mbedtls_md_type_t {
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
pub struct mbedtls_md_info_t;

#[repr(C)]
pub struct mbedtls_md_context_t {
    md_info: *const mbedtls_md_info_t,
    md_ctx: *mut c_void,
    hmac_ctx: *mut c_void,
}

#[repr(C)]
pub enum mbedtls_pk_type_t {
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
pub struct mbedtls_pk_info_t;

#[repr(C)]
pub struct mbedtls_pk_context {
    pk_info: *const mbedtls_pk_info_t,
    pk_ctx: *mut c_void,
}

#[repr(C)]
pub enum mbedtls_cipher_type_t {
    // Add all the enum variants here
}

// Add the rest of the C code translations to Rust here
