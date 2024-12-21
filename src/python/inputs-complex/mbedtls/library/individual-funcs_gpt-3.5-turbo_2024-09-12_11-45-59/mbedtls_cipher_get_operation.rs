#[repr(C)]
pub enum MbedTlsCipherType {
    MbedTlsCipherNone = 0,
    MbedTlsCipherNull,
    MbedTlsCipherAes128Ecb,
    MbedTlsCipherAes192Ecb,
    MbedTlsCipherAes256Ecb,
    // Add other cipher types here
}

#[repr(C)]
pub enum MbedTlsCipherMode {
    MbedTlsModeNone = 0,
    MbedTlsModeEcb,
    MbedTlsModeCbc,
    // Add other cipher modes here
}

#[repr(C)]
pub enum MbedTlsOperation {
    MbedTlsOperationNone = -1,
    MbedTlsDecrypt = 0,
    MbedTlsEncrypt,
}

pub struct MbedTlsCipherInfo {
    pub cipher_type: MbedTlsCipherType,
    pub mode: MbedTlsCipherMode,
    pub key_bitlen: u32,
    pub name: *const libc::c_char,
    pub iv_size: u32,
    pub flags: i32,
    pub block_size: u32,
    pub base: *const MbedTlsCipherBase,
}

pub struct MbedTlsCipherContext {
    pub cipher_info: *const MbedTlsCipherInfo,
    pub key_bitlen: i32,
    pub operation: MbedTlsOperation,
    pub add_padding: Option<extern "C" fn(*mut u8, usize, usize)>,
    pub get_padding: Option<extern "C" fn(*mut u8, usize, *mut usize) -> i32>,
    pub unprocessed_data: [u8; 16],
    pub unprocessed_len: usize,
    pub iv: [u8; 16],
    pub iv_size: usize,
    pub cipher_ctx: *mut libc::c_void,
}

impl MbedTlsCipherContext {
    pub fn get_operation(&self) -> MbedTlsOperation {
        if self.cipher_info.is_null() {
            return MbedTlsOperation::MbedTlsOperationNone;
        }
        self.operation
    }
}
