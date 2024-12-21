#[derive(Copy, Clone, Debug, PartialEq, Eq)]
enum MbedtlsOperation {
    None = -1,
    Decrypt = 0,
    Encrypt,
}

#[derive(Debug)]
struct MbedtlsCipherInfo {
    // Add fields as necessary
}

#[derive(Debug)]
struct MbedtlsCipherContext {
    cipher_info: Option<MbedtlsCipherInfo>,
    key_bitlen: i32,
    operation: MbedtlsOperation,
    // Add other fields as necessary
}

fn mbedtls_cipher_get_operation(ctx: *const MbedtlsCipherContext) -> MbedtlsOperation {
    unsafe {
        if (*ctx).cipher_info.is_none() {
            MbedtlsOperation::None
        } else {
            (*ctx).operation
        }
    }
}

fn main() {
    // Example usage
    let cipher_info = MbedtlsCipherInfo {
        // Initialize fields
    };

    let ctx = MbedtlsCipherContext {
        cipher_info: Some(cipher_info),
        key_bitlen: 128,
        operation: MbedtlsOperation::Encrypt,
        // Initialize other fields
    };

    let ctx_ptr = &ctx as *const MbedtlsCipherContext;
    let operation = mbedtls_cipher_get_operation(ctx_ptr);
    println!("{:?}", operation);
}
