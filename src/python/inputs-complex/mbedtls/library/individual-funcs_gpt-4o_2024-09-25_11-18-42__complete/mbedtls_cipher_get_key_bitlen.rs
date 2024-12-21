use std::ffi::CStr;
use std::os::raw::{c_char, c_int, c_uint, c_void};

#[repr(C)]
#[derive(Debug)]
pub enum MbedtlsCipherType {
    None = 0,
    Null,
    Aes128Ecb,
    Aes192Ecb,
    Aes256Ecb,
    Aes128Cbc,
    Aes192Cbc,
    Aes256Cbc,
    Aes128Cfb128,
    Aes192Cfb128,
    Aes256Cfb128,
    Aes128Ctr,
    Aes192Ctr,
    Aes256Ctr,
    Aes128Gcm,
    Aes192Gcm,
    Aes256Gcm,
    Camellia128Ecb,
    Camellia192Ecb,
    Camellia256Ecb,
    Camellia128Cbc,
    Camellia192Cbc,
    Camellia256Cbc,
    Camellia128Cfb128,
    Camellia192Cfb128,
    Camellia256Cfb128,
    Camellia128Ctr,
    Camellia192Ctr,
    Camellia256Ctr,
    Camellia128Gcm,
    Camellia192Gcm,
    Camellia256Gcm,
    DesEcb,
    DesCbc,
    DesEdeEcb,
    DesEdeCbc,
    DesEde3Ecb,
    DesEde3Cbc,
    BlowfishEcb,
    BlowfishCbc,
    BlowfishCfb64,
    BlowfishCtr,
    Arc4128,
    Aes128Ccm,
    Aes192Ccm,
    Aes256Ccm,
    Camellia128Ccm,
    Camellia192Ccm,
    Camellia256Ccm,
    Aria128Ecb,
    Aria192Ecb,
    Aria256Ecb,
    Aria128Cbc,
    Aria192Cbc,
    Aria256Cbc,
    Aria128Cfb128,
    Aria192Cfb128,
    Aria256Cfb128,
    Aria128Ctr,
    Aria192Ctr,
    Aria256Ctr,
    Aria128Gcm,
    Aria192Gcm,
    Aria256Gcm,
    Aria128Ccm,
    Aria192Ccm,
    Aria256Ccm,
    Aes128Ofb,
    Aes192Ofb,
    Aes256Ofb,
    Aes128Xts,
    Aes256Xts,
    Chacha20,
    Chacha20Poly1305,
    Aes128Kw,
    Aes192Kw,
    Aes256Kw,
    Aes128Kwp,
    Aes192Kwp,
    Aes256Kwp,
}

#[repr(C)]
#[derive(Debug)]
pub enum MbedtlsCipherMode {
    None = 0,
    Ecb,
    Cbc,
    Cfb,
    Ofb,
    Ctr,
    Gcm,
    Stream,
    Ccm,
    Xts,
    Chachapoly,
    Kw,
    Kwp,
}

#[repr(C)]
#[derive(Debug)]
pub enum MbedtlsOperation {
    None = -1,
    Decrypt = 0,
    Encrypt,
}

#[repr(C)]
#[derive(Debug)]
pub struct MbedtlsCipherBase;

#[repr(C)]
#[derive(Debug)]
pub struct MbedtlsCipherInfo {
    pub type_: MbedtlsCipherType,
    pub mode: MbedtlsCipherMode,
    pub key_bitlen: c_uint,
    pub name: *const c_char,
    pub iv_size: c_uint,
    pub flags: c_int,
    pub block_size: c_uint,
    pub base: *const MbedtlsCipherBase,
}

#[repr(C)]
#[derive(Debug)]
pub struct MbedtlsCipherContext {
    pub cipher_info: *const MbedtlsCipherInfo,
    pub key_bitlen: c_int,
    pub operation: MbedtlsOperation,
    pub add_padding: Option<unsafe extern "C" fn(*mut u8, usize, usize)>,
    pub get_padding: Option<unsafe extern "C" fn(*mut u8, usize, *mut usize) -> c_int>,
    pub unprocessed_data: [u8; 16],
    pub unprocessed_len: usize,
    pub iv: [u8; 16],
    pub iv_size: usize,
    pub cipher_ctx: *mut c_void,
}

pub const MBEDTLS_KEY_LENGTH_NONE: c_int = 0;
pub const MBEDTLS_KEY_LENGTH_DES: c_int = 64;
pub const MBEDTLS_KEY_LENGTH_DES_EDE: c_int = 128;
pub const MBEDTLS_KEY_LENGTH_DES_EDE3: c_int = 192;

pub fn mbedtls_cipher_get_key_bitlen(ctx: *const MbedtlsCipherContext) -> c_int {
    unsafe {
        if (*ctx).cipher_info.is_null() {
            return MBEDTLS_KEY_LENGTH_NONE;
        }
        (*(*ctx).cipher_info).key_bitlen as c_int
    }
}
