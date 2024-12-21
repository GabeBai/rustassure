use std::ptr;
use std::slice;

#[repr(C)]
pub struct MbedtlsSslContext {
    session_negotiate: *mut MbedtlsSslSession,
    minor_ver: i32,
}

#[repr(C)]
pub struct MbedtlsSslSession {
    encrypt_then_mac: i32,
    ciphersuite: i32,
}

#[repr(C)]
pub struct MbedtlsSslCiphersuite {
    cipher: MbedtlsCipherType,
}

#[repr(C)]
pub struct MbedtlsCipherInfo {
    mode: MbedtlsCipherMode,
}

#[repr(C)]
pub enum MbedtlsCipherType {
    MBEDTLS_CIPHER_AES_128_ECB,
    MBEDTLS_CIPHER_AES_192_ECB,
    MBEDTLS_CIPHER_AES_256_ECB,
    // Add other variants as needed
}

#[repr(C)]
pub enum MbedtlsCipherMode {
    MBEDTLS_MODE_NONE,
    MBEDTLS_MODE_ECB,
    MBEDTLS_MODE_CBC,
    // Add other variants as needed
}

extern "C" {
    fn mbedtls_ssl_ciphersuite_from_id(ciphersuite_id: i32) -> *const MbedtlsSslCiphersuite;
    fn mbedtls_cipher_info_from_type(cipher_type: MbedtlsCipherType) -> *const MbedtlsCipherInfo;
    fn mbedtls_debug_print_msg(ssl: *const MbedtlsSslContext, level: i32, file: *const i8, line: i32, format: *const i8, ...);
}

pub fn ssl_write_encrypt_then_mac_ext(ssl: &mut MbedtlsSslContext, buf: &mut [u8]) -> usize {
    let mut olen = 0;
    let p = buf.as_mut_ptr();

    unsafe {
        if (*ssl.session_negotiate).encrypt_then_mac == 0 || ssl.minor_ver == 0 {
            return olen;
        }

        let suite = mbedtls_ssl_ciphersuite_from_id((*ssl.session_negotiate).ciphersuite);
        if suite.is_null() {
            return olen;
        }

        let cipher = mbedtls_cipher_info_from_type((*suite).cipher);
        if cipher.is_null() || (*cipher).mode != MbedtlsCipherMode::MBEDTLS_MODE_CBC {
            return olen;
        }

        mbedtls_debug_print_msg(ssl, 3, b"ssl_srv.c\0".as_ptr() as *const i8, 2261, b"server hello, adding encrypt then mac extension\0".as_ptr() as *const i8);

        ptr::write(p, (22 >> 8) as u8);
        ptr::write(p.add(1), 22 as u8);
        ptr::write(p.add(2), 0x00);
        ptr::write(p.add(3), 0x00);
        olen = 4;
    }

    olen
}
