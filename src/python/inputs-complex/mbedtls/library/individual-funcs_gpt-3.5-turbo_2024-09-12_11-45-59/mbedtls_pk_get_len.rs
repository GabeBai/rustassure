use std::os::raw::c_long;

struct mbedtls_pk_info_t;

struct mbedtls_pk_context {
    pk_info: *const mbedtls_pk_info_t,
    pk_ctx: *mut std::ffi::c_void,
}

union pthread_attr_t {
    __size: [u8; 56],
    __align: c_long,
}

extern {
    fn mbedtls_pk_get_bitlen(ctx: *const mbedtls_pk_context) -> usize;
}

fn mbedtls_pk_get_len(ctx: *const mbedtls_pk_context) -> usize {
    return (unsafe { mbedtls_pk_get_bitlen(ctx) } + 7) / 8;
}
