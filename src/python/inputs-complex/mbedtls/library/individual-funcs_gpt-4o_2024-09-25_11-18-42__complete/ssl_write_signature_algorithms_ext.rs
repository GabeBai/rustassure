use std::ptr;
use std::slice;
use std::ffi::CStr;
use std::os::raw::{c_char, c_int, c_uint, c_uchar, c_void};

#[repr(C)]
struct MbedtlsSslContext {
    conf: *const MbedtlsSslConfig,
    // other fields...
}

#[repr(C)]
struct MbedtlsSslConfig {
    max_minor_ver: c_int,
    sig_hashes: *const c_int,
    // other fields...
}

extern "C" {
    fn mbedtls_debug_print_msg(
        ssl: *const MbedtlsSslContext,
        level: c_int,
        file: *const c_char,
        line: c_int,
        format: *const c_char,
        ...
    );
    fn mbedtls_ssl_hash_from_md_alg(md: c_int) -> c_uchar;
}

const MBEDTLS_MD_NONE: c_int = 0;
const MBEDTLS_ERR_SSL_BAD_INPUT_DATA: c_int = -0x5E80;
const MBEDTLS_ERR_SSL_BUFFER_TOO_SMALL: c_int = -0x6A00;

fn ssl_write_signature_algorithms_ext(
    ssl: &mut MbedtlsSslContext,
    buf: &mut [u8],
    end: *const u8,
    olen: &mut usize,
) -> c_int {
    let mut p = buf.as_mut_ptr();
    let mut sig_alg_len = 0;
    let sig_alg_list = unsafe { buf.as_mut_ptr().add(6) };
    *olen = 0;

    if unsafe { (*ssl.conf).max_minor_ver } != 3 {
        return 0;
    }

    unsafe {
        mbedtls_debug_print_msg(
            ssl,
            3,
            CStr::from_bytes_with_nul_unchecked(b"ssl_cli.c\0").as_ptr(),
            225,
            CStr::from_bytes_with_nul_unchecked(b"client hello, adding signature_algorithms extension\0").as_ptr(),
        );
    }

    let sig_hashes = unsafe { (*ssl.conf).sig_hashes };
    if sig_hashes.is_null() {
        return MBEDTLS_ERR_SSL_BAD_INPUT_DATA;
    }

    let mut md = sig_hashes;
    while unsafe { *md } != MBEDTLS_MD_NONE {
        sig_alg_len += 2;
        sig_alg_len += 2;
        if sig_alg_len > 65534 {
            unsafe {
                mbedtls_debug_print_msg(
                    ssl,
                    3,
                    CStr::from_bytes_with_nul_unchecked(b"ssl_cli.c\0").as_ptr(),
                    241,
                    CStr::from_bytes_with_nul_unchecked(b"length in bytes of sig-hash-alg extension too big\0").as_ptr(),
                );
            }
            return MBEDTLS_ERR_SSL_BAD_INPUT_DATA;
        }
        md = unsafe { md.add(1) };
    }

    if sig_alg_len == 0 {
        return MBEDTLS_ERR_SSL_BAD_INPUT_DATA;
    }

    if buf.len() < sig_alg_len + 6 {
        return MBEDTLS_ERR_SSL_BUFFER_TOO_SMALL;
    }

    sig_alg_len = 0;
    md = sig_hashes;
    while unsafe { *md } != MBEDTLS_MD_NONE {
        unsafe {
            *sig_alg_list.add(sig_alg_len) = mbedtls_ssl_hash_from_md_alg(*md);
            sig_alg_len += 1;
            *sig_alg_list.add(sig_alg_len) = 3;
            sig_alg_len += 1;
            *sig_alg_list.add(sig_alg_len) = mbedtls_ssl_hash_from_md_alg(*md);
            sig_alg_len += 1;
            *sig_alg_list.add(sig_alg_len) = 1;
            sig_alg_len += 1;
        }
        md = unsafe { md.add(1) };
    }

    unsafe {
        *p = (13 >> 8) as u8;
        p = p.add(1);
        *p = 13 as u8;
        p = p.add(1);
        *p = ((sig_alg_len + 2) >> 8) as u8;
        p = p.add(1);
        *p = (sig_alg_len + 2) as u8;
        p = p.add(1);
        *p = (sig_alg_len >> 8) as u8;
        p = p.add(1);
        *p = sig_alg_len as u8;
    }

    *olen = 6 + sig_alg_len;
    0
}
