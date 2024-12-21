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

// Add the rest of the struct and enum translations here
// ...
