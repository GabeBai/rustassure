#[repr(C)]
pub struct MbedtlsX509Buf {
    pub tag: i32,
    pub len: usize,
    pub p: *mut u8,
}

#[repr(C)]
pub struct MbedtlsX509Time {
    pub year: i32,
    pub mon: i32,
    pub day: i32,
    pub hour: i32,
    pub min: i32,
    pub sec: i32,
}

#[repr(C)]
pub struct MbedtlsPkContext {
    pub pk_info: *const MbedtlsPkInfoT,
    pub pk_ctx: *mut std::ffi::c_void,
}

#[repr(C)]
pub struct MbedtlsX509Crt {
    pub own_buffer: i32,
    pub raw: MbedtlsX509Buf,
    pub tbs: MbedtlsX509Buf,
    pub version: i32,
    pub serial: MbedtlsX509Buf,
    pub sig_oid: MbedtlsX509Buf,
    pub issuer_raw: MbedtlsX509Buf,
    pub subject_raw: MbedtlsX509Buf,
    pub issuer: MbedtlsX509Name,
    pub subject: MbedtlsX509Name,
    pub valid_from: MbedtlsX509Time,
    pub valid_to: MbedtlsX509Time,
    pub pk_raw: MbedtlsX509Buf,
    pub pk: MbedtlsPkContext,
    pub issuer_id: MbedtlsX509Buf,
    pub subject_id: MbedtlsX509Buf,
    pub v3_ext: MbedtlsX509Buf,
    pub subject_alt_names: MbedtlsX509Sequence,
    pub certificate_policies: MbedtlsX509Sequence,
    pub ext_types: i32,
    pub ca_istrue: i32,
    pub max_pathlen: i32,
    pub key_usage: u32,
    pub ext_key_usage: MbedtlsX509Sequence,
    pub ns_cert_type: u8,
    pub sig: MbedtlsX509Buf,
    pub sig_md: MbedtlsMdTypeT,
    pub sig_pk: MbedtlsPkTypeT,
    pub sig_opts: *mut std::ffi::c_void,
    pub next: *mut MbedtlsX509Crt,
}

// Define other dependent structs and enums here
#[repr(C)]
pub struct MbedtlsX509Name {
    pub oid: MbedtlsX509Buf,
    pub val: MbedtlsX509Buf,
    pub next: *mut MbedtlsX509Name,
    pub next_merged: u8,
}

#[repr(C)]
pub struct MbedtlsX509Sequence {
    pub buf: MbedtlsX509Buf,
    pub next: *mut MbedtlsX509Sequence,
}

#[repr(C)]
pub struct MbedtlsPkInfoT;

#[repr(C)]
pub enum MbedtlsMdTypeT {
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
pub enum MbedtlsPkTypeT {
    MBEDTLS_PK_NONE = 0,
    MBEDTLS_PK_RSA,
    MBEDTLS_PK_ECKEY,
    MBEDTLS_PK_ECKEY_DH,
    MBEDTLS_PK_ECDSA,
    MBEDTLS_PK_RSA_ALT,
    MBEDTLS_PK_RSASSA_PSS,
    MBEDTLS_PK_OPAQUE,
}
