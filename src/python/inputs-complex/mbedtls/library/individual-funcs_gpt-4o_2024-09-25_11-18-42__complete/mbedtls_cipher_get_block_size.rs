use std::fmt;

#[derive(Debug)]
enum MbedtlsCipherType {
    None,
    Null,
    Aes128Ecb,
    // ... other variants ...
    Aes256Kwp,
}

#[derive(Debug)]
enum MbedtlsCipherMode {
    None,
    Ecb,
    // ... other variants ...
    Kwp,
}

#[derive(Debug)]
enum MbedtlsOperation {
    None = -1,
    Decrypt = 0,
    Encrypt,
}

#[derive(Debug)]
struct MbedtlsCipherBase;

#[derive(Debug)]
struct MbedtlsCipherInfo {
    type_: MbedtlsCipherType,
    mode: MbedtlsCipherMode,
    key_bitlen: u32,
    name: &'static str,
    iv_size: u32,
    flags: i32,
    block_size: u32,
    base: *const MbedtlsCipherBase,
}

struct MbedtlsCipherContext {
    cipher_info: Option<&'static MbedtlsCipherInfo>,
    key_bitlen: i32,
    operation: MbedtlsOperation,
    add_padding: Option<fn(&mut [u8], usize, usize)>,
    get_padding: Option<fn(&[u8], usize, &mut usize) -> i32>,
    unprocessed_data: [u8; 16],
    unprocessed_len: usize,
    iv: [u8; 16],
    iv_size: usize,
    cipher_ctx: *mut std::ffi::c_void,
}

impl fmt::Debug for MbedtlsCipherContext {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        f.debug_struct("MbedtlsCipherContext")
            .field("cipher_info", &self.cipher_info)
            .field("key_bitlen", &self.key_bitlen)
            .field("operation", &self.operation)
            .field("add_padding", &self.add_padding.map(|_| "fn"))
            .field("get_padding", &self.get_padding.map(|_| "fn"))
            .field("unprocessed_data", &self.unprocessed_data)
            .field("unprocessed_len", &self.unprocessed_len)
            .field("iv", &self.iv)
            .field("iv_size", &self.iv_size)
            .field("cipher_ctx", &self.cipher_ctx)
            .finish()
    }
}

fn mbedtls_cipher_get_block_size(ctx: &MbedtlsCipherContext) -> u32 {
    if let Some(cipher_info) = ctx.cipher_info {
        cipher_info.block_size
    } else {
        0
    }
}
