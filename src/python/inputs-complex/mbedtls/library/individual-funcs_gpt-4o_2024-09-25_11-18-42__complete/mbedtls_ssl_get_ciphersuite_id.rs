use std::time::SystemTime;

type size_t = usize;
type uint8_t = u8;
type uint16_t = u16;
type uint32_t = u32;
type uint64_t = u64;
type time_t = SystemTime;

#[repr(C)]
struct Sigevent;

type mbedtls_time_t = time_t;

#[repr(C)]
struct IoFile;

#[repr(C)]
union PthreadAttrT {
    __size: [u8; 56],
    __align: i64,
}

#[repr(C)]
enum MbedtlsMdTypeT {
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

type mbedtls_mpi_uint = uint64_t;

#[repr(C)]
struct MbedtlsMpi {
    s: i32,
    n: size_t,
    p: *mut mbedtls_mpi_uint,
}

#[repr(C)]
enum MbedtlsEcpGroupId {
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
enum MbedtlsPkTypeT {
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
struct MbedtlsPkInfoT;

#[repr(C)]
struct MbedtlsPkContext {
    pk_info: *const MbedtlsPkInfoT,
    pk_ctx: *mut std::ffi::c_void,
}

#[repr(C)]
enum MbedtlsCipherTypeT {
    MBEDTLS_CIPHER_NONE = 0,
    MBEDTLS_CIPHER_NULL,
    MBEDTLS_CIPHER_AES_128_ECB,
    MBEDTLS_CIPHER_AES_192_ECB,
    MBEDTLS_CIPHER_AES_256_ECB,
    MBEDTLS_CIPHER_AES_128_CBC,
    MBEDTLS_CIPHER_AES_192_CBC,
    MBEDTLS_CIPHER_AES_256_CBC,
    MBEDTLS_CIPHER_AES_128_CFB128,
    MBEDTLS_CIPHER_AES_192_CFB128,
    MBEDTLS_CIPHER_AES_256_CFB128,
    MBEDTLS_CIPHER_AES_128_CTR,
    MBEDTLS_CIPHER_AES_192_CTR,
    MBEDTLS_CIPHER_AES_256_CTR,
    MBEDTLS_CIPHER_AES_128_GCM,
    MBEDTLS_CIPHER_AES_192_GCM,
    MBEDTLS_CIPHER_AES_256_GCM,
    MBEDTLS_CIPHER_CAMELLIA_128_ECB,
    MBEDTLS_CIPHER_CAMELLIA_192_ECB,
    MBEDTLS_CIPHER_CAMELLIA_256_ECB,
    MBEDTLS_CIPHER_CAMELLIA_128_CBC,
    MBEDTLS_CIPHER_CAMELLIA_192_CBC,
    MBEDTLS_CIPHER_CAMELLIA_256_CBC,
    MBEDTLS_CIPHER_CAMELLIA_128_CFB128,
    MBEDTLS_CIPHER_CAMELLIA_192_CFB128,
    MBEDTLS_CIPHER_CAMELLIA_256_CFB128,
    MBEDTLS_CIPHER_CAMELLIA_128_CTR,
    MBEDTLS_CIPHER_CAMELLIA_192_CTR,
    MBEDTLS_CIPHER_CAMELLIA_256_CTR,
    MBEDTLS_CIPHER_CAMELLIA_128_GCM,
    MBEDTLS_CIPHER_CAMELLIA_192_GCM,
    MBEDTLS_CIPHER_CAMELLIA_256_GCM,
    MBEDTLS_CIPHER_DES_ECB,
    MBEDTLS_CIPHER_DES_CBC,
    MBEDTLS_CIPHER_DES_EDE_ECB,
    MBEDTLS_CIPHER_DES_EDE_CBC,
    MBEDTLS_CIPHER_DES_EDE3_ECB,
    MBEDTLS_CIPHER_DES_EDE3_CBC,
    MBEDTLS_CIPHER_BLOWFISH_ECB,
    MBEDTLS_CIPHER_BLOWFISH_CBC,
    MBEDTLS_CIPHER_BLOWFISH_CFB64,
    MBEDTLS_CIPHER_BLOWFISH_CTR,
    MBEDTLS_CIPHER_ARC4_128,
    MBEDTLS_CIPHER_AES_128_CCM,
    MBEDTLS_CIPHER_AES_192_CCM,
    MBEDTLS_CIPHER_AES_256_CCM,
    MBEDTLS_CIPHER_CAMELLIA_128_CCM,
    MBEDTLS_CIPHER_CAMELLIA_192_CCM,
    MBEDTLS_CIPHER_CAMELLIA_256_CCM,
    MBEDTLS_CIPHER_ARIA_128_ECB,
    MBEDTLS_CIPHER_ARIA_192_ECB,
    MBEDTLS_CIPHER_ARIA_256_ECB,
    MBEDTLS_CIPHER_ARIA_128_CBC,
    MBEDTLS_CIPHER_ARIA_192_CBC,
    MBEDTLS_CIPHER_ARIA_256_CBC,
    MBEDTLS_CIPHER_ARIA_128_CFB128,
    MBEDTLS_CIPHER_ARIA_192_CFB128,
    MBEDTLS_CIPHER_ARIA_256_CFB128,
    MBEDTLS_CIPHER_ARIA_128_CTR,
    MBEDTLS_CIPHER_ARIA_192_CTR,
    MBEDTLS_CIPHER_ARIA_256_CTR,
    MBEDTLS_CIPHER_ARIA_128_GCM,
    MBEDTLS_CIPHER_ARIA_192_GCM,
    MBEDTLS_CIPHER_ARIA_256_GCM,
    MBEDTLS_CIPHER_ARIA_128_CCM,
    MBEDTLS_CIPHER_ARIA_192_CCM,
    MBEDTLS_CIPHER_ARIA_256_CCM,
    MBEDTLS_CIPHER_AES_128_OFB,
    MBEDTLS_CIPHER_AES_192_OFB,
    MBEDTLS_CIPHER_AES_256_OFB,
    MBEDTLS_CIPHER_AES_128_XTS,
    MBEDTLS_CIPHER_AES_256_XTS,
    MBEDTLS_CIPHER_CHACHA20,
    MBEDTLS_CIPHER_CHACHA20_POLY1305,
    MBEDTLS_CIPHER_AES_128_KW,
    MBEDTLS_CIPHER_AES_192_KW,
    MBEDTLS_CIPHER_AES_256_KW,
    MBEDTLS_CIPHER_AES_128_KWP,
    MBEDTLS_CIPHER_AES_192_KWP,
    MBEDTLS_CIPHER_AES_256_KWP,
}

#[repr(C)]
enum MbedtlsKeyLength {
    MBEDTLS_KEY_LENGTH_NONE = 0,
    MBEDTLS_KEY_LENGTH_DES = 64,
    MBEDTLS_KEY_LENGTH_DES_EDE = 128,
    MBEDTLS_KEY_LENGTH_DES_EDE3 = 192,
}

#[repr(C)]
enum MbedtlsKeyExchangeTypeT {
    MBEDTLS_KEY_EXCHANGE_NONE = 0,
    MBEDTLS_KEY_EXCHANGE_RSA,
    MBEDTLS_KEY_EXCHANGE_DHE_RSA,
    MBEDTLS_KEY_EXCHANGE_ECDHE_RSA,
    MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA,
    MBEDTLS_KEY_EXCHANGE_PSK,
    MBEDTLS_KEY_EXCHANGE_DHE_PSK,
    MBEDTLS_KEY_EXCHANGE_RSA_PSK,
    MBEDTLS_KEY_EXCHANGE_ECDHE_PSK,
    MBEDTLS_KEY_EXCHANGE_ECDH_RSA,
    MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA,
    MBEDTLS_KEY_EXCHANGE_ECJPAKE,
}

#[repr(C)]
struct MbedtlsSslCiphersuiteT {
    id: i32,
    name: *const i8,
    cipher: MbedtlsCipherTypeT,
    mac: MbedtlsMdTypeT,
    key_exchange: MbedtlsKeyExchangeTypeT,
    min_major_ver: i32,
    min_minor_ver: i32,
    max_major_ver: i32,
    max_minor_ver: i32,
    flags: u8,
}

extern "C" {
    fn mbedtls_ssl_ciphersuite_from_string(ciphersuite_name: *const i8) -> *const MbedtlsSslCiphersuiteT;
}

fn mbedtls_ssl_get_ciphersuite_id(ciphersuite_name: &str) -> i32 {
    let ciphersuite_name_c = std::ffi::CString::new(ciphersuite_name).unwrap();
    let cur = unsafe { mbedtls_ssl_ciphersuite_from_string(ciphersuite_name_c.as_ptr()) };
    if cur.is_null() {
        0
    } else {
        unsafe { (*cur).id }
    }
}

extern crate bindgen;

fn main() {
    // The bindgen::Builder is the main entry point
    // to bindgen, and lets you build up options for
    // the resulting bindings.
    let bindings = bindgen::Builder::default()
        .header("path/to/header.h")
        // Finish the builder and generate the bindings.
        .generate()
        // Unwrap the Result and panic on failure.
        .expect("Unable to generate bindings");

    // Write the bindings to the $OUT_DIR/bindings.rs file.
    let out_path = std::path::PathBuf::from(std::env::var("OUT_DIR").unwrap());
    bindings
        .write_to_file(out_path.join("bindings.rs"))
        .expect("Couldn't write bindings!");
}
