use std::ffi::CStr;
use std::os::raw::c_char;
use std::ptr;
use std::slice;

#[repr(C)]
struct MbedtlsSslHandshakeParams {
    resume: i32,
    extended_ms: i32,
    randbytes: [u8; 64],
    premaster: [u8; 1024], // Adjust size as needed
    pmslen: usize,
    tls_prf: Option<extern "C" fn(*const u8, usize, *const c_char, *const u8, usize, *mut u8, usize) -> i32>,
    calc_verify: Option<extern "C" fn(*const MbedtlsSslContext, *mut u8, *mut usize)>,
}

#[repr(C)]
struct MbedtlsSslContext;

extern "C" {
    fn mbedtls_debug_print_msg(ssl: *const MbedtlsSslContext, level: i32, file: *const c_char, line: i32, format: *const c_char, ...);
    fn mbedtls_debug_print_buf(ssl: *const MbedtlsSslContext, level: i32, file: *const c_char, line: i32, text: *const c_char, buf: *const u8, len: usize);
    fn mbedtls_platform_zeroize(buf: *mut u8, len: usize);
}

fn ssl_compute_master(handshake: &mut MbedtlsSslHandshakeParams, master: &mut [u8], ssl: &MbedtlsSslContext) -> i32 {
    const MASTER_SECRET_LEN: usize = 48;
    let mut session_hash = [0u8; 48];
    let mut lbl = CStr::from_bytes_with_nul(b"master secret\0").unwrap();
    let mut salt = handshake.randbytes.as_ptr();
    let mut salt_len = 64;

    if handshake.resume != 0 {
        unsafe {
            mbedtls_debug_print_msg(ssl, 3, CStr::from_bytes_with_nul(b"ssl_tls.c\0").unwrap().as_ptr(), 1492, CStr::from_bytes_with_nul(b"no premaster (session resumed)\0").unwrap().as_ptr());
        }
        return 0;
    }

    if handshake.extended_ms == 1 {
        lbl = CStr::from_bytes_with_nul(b"extended master secret\0").unwrap();
        salt = session_hash.as_mut_ptr();
        if let Some(calc_verify) = handshake.calc_verify {
            unsafe {
                calc_verify(ssl, session_hash.as_mut_ptr(), &mut salt_len);
                mbedtls_debug_print_buf(ssl, 3, CStr::from_bytes_with_nul(b"ssl_tls.c\0").unwrap().as_ptr(), 1504, CStr::from_bytes_with_nul(b"session hash for extended master secret\0").unwrap().as_ptr(), session_hash.as_ptr(), salt_len);
            }
        }
    }

    if let Some(tls_prf) = handshake.tls_prf {
        let ret = unsafe {
            tls_prf(handshake.premaster.as_ptr(), handshake.pmslen, lbl.as_ptr(), salt, salt_len, master.as_mut_ptr(), MASTER_SECRET_LEN)
        };
        if ret != 0 {
            unsafe {
                mbedtls_debug_print_msg(ssl, 1, CStr::from_bytes_with_nul(b"ssl_tls.c\0").unwrap().as_ptr(), 1564, CStr::from_bytes_with_nul(b"prf\0").unwrap().as_ptr(), ret);
            }
            return ret;
        }
        unsafe {
            mbedtls_debug_print_buf(ssl, 3, CStr::from_bytes_with_nul(b"ssl_tls.c\0").unwrap().as_ptr(), 1570, CStr::from_bytes_with_nul(b"premaster secret\0").unwrap().as_ptr(), handshake.premaster.as_ptr(), handshake.pmslen);
            mbedtls_platform_zeroize(handshake.premaster.as_mut_ptr(), handshake.premaster.len());
        }
    }

    0
}
