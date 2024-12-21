type size_t = usize;
type __uint64_t = u64;
type uint64_t = u64;
type mbedtls_mpi_uint = uint64_t;

struct mbedtls_mpi {
    s: i32,
    n: size_t,
    p: *mut mbedtls_mpi_uint,
}

struct mbedtls_rsa_context {
    ver: i32,
    len: size_t,
    N: mbedtls_mpi,
    E: mbedtls_mpi,
    D: mbedtls_mpi,
    P: mbedtls_mpi,
    Q: mbedtls_mpi,
    DP: mbedtls_mpi,
    DQ: mbedtls_mpi,
    QP: mbedtls_mpi,
    RN: mbedtls_mpi,
    RP: mbedtls_mpi,
    RQ: mbedtls_mpi,
    Vi: mbedtls_mpi,
    Vf: mbedtls_mpi,
    padding: i32,
    hash_id: i32,
}

struct mbedtls_pk_info_t;

struct mbedtls_pk_context {
    pk_info: *const mbedtls_pk_info_t,
    pk_ctx: *mut std::ffi::c_void,
}

unsafe fn mbedtls_pk_rsa(pk: mbedtls_pk_context) -> *mut mbedtls_rsa_context {
    pk.pk_ctx as *mut mbedtls_rsa_context
}
