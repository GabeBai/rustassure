#[repr(C)]
#[derive(Debug, Clone, Copy)]
pub enum MbedtlsMdType {
    None = 0,
    Md2,
    Md4,
    Md5,
    Sha1,
    Sha224,
    Sha256,
    Sha384,
    Sha512,
    Ripemd160,
}

#[repr(C)]
pub struct MbedtlsMdContext {
    md_info: *const MbedtlsMdInfo,
    md_ctx: *mut std::ffi::c_void,
    hmac_ctx: *mut std::ffi::c_void,
}

#[repr(C)]
pub struct MbedtlsMdInfo;

impl Default for MbedtlsMdContext {
    fn default() -> Self {
        MbedtlsMdContext {
            md_info: std::ptr::null(),
            md_ctx: std::ptr::null_mut(),
            hmac_ctx: std::ptr::null_mut(),
        }
    }
}

impl MbedtlsMdContext {
    pub fn new() -> Self {
        Self::default()
    }
}

pub fn mbedtls_ssl_sig_hash_set_const_hash(set: &mut MbedtlsSslSigHashSet, md_alg: MbedtlsMdType) {
    set.rsa = md_alg;
    set.ecdsa = md_alg;
}

pub fn mbedtls_ssl_sig_hash_set_init(set: &mut MbedtlsSslSigHashSet) {
    mbedtls_ssl_sig_hash_set_const_hash(set, MbedtlsMdType::None);
}

#[repr(C)]
pub struct MbedtlsSslSigHashSet {
    rsa: MbedtlsMdType,
    ecdsa: MbedtlsMdType,
}

impl Default for MbedtlsSslSigHashSet {
    fn default() -> Self {
        MbedtlsSslSigHashSet {
            rsa: MbedtlsMdType::None,
            ecdsa: MbedtlsMdType::None,
        }
    }
}

impl MbedtlsSslSigHashSet {
    pub fn new() -> Self {
        Self::default()
    }
}
