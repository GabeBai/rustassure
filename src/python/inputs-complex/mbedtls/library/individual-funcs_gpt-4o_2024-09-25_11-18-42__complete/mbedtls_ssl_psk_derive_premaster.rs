use std::ptr;
use std::slice;
use std::mem;
use std::ffi::c_void;

#[repr(C)]
struct MbedtlsSslContext {
    conf: *const MbedtlsSslConfig,
    handshake: *mut MbedtlsSslHandshakeParams,
    // other fields...
}

#[repr(C)]
struct MbedtlsSslConfig {
    f_rng: Option<extern "C" fn(*mut c_void, *mut u8, usize) -> i32>,
    p_rng: *mut c_void,
    // other fields...
}

#[repr(C)]
struct MbedtlsSslHandshakeParams {
    premaster: [u8; 1024], // Adjust size as needed
    dhm_ctx: MbedtlsDhmContext,
    ecdh_ctx: MbedtlsEcdhContext,
    pmslen: usize,
    // other fields...
}

#[repr(C)]
struct MbedtlsDhmContext {
    // fields...
}

#[repr(C)]
struct MbedtlsEcdhContext {
    // fields...
}

extern "C" {
    fn mbedtls_dhm_calc_secret(
        ctx: *mut MbedtlsDhmContext,
        output: *mut u8,
        output_size: usize,
        olen: *mut usize,
        f_rng: Option<extern "C" fn(*mut c_void, *mut u8, usize) -> i32>,
        p_rng: *mut c_void,
    ) -> i32;

    fn mbedtls_ecdh_calc_secret(
        ctx: *mut MbedtlsEcdhContext,
        olen: *mut usize,
        buf: *mut u8,
        blen: usize,
        f_rng: Option<extern "C" fn(*mut c_void, *mut u8, usize) -> i32>,
        p_rng: *mut c_void,
    ) -> i32;

    fn mbedtls_ssl_get_psk(
        ssl: *mut MbedtlsSslContext,
        psk: *mut *const u8,
        psk_len: *mut usize,
    ) -> i32;

    fn mbedtls_debug_print_msg(
        ssl: *const MbedtlsSslContext,
        level: i32,
        file: *const i8,
        line: i32,
        format: *const i8,
    );

    fn mbedtls_debug_print_ret(
        ssl: *const MbedtlsSslContext,
        level: i32,
        file: *const i8,
        line: i32,
        text: *const i8,
        ret: i32,
    );

    fn mbedtls_debug_print_mpi(
        ssl: *const MbedtlsSslContext,
        level: i32,
        file: *const i8,
        line: i32,
        text: *const i8,
        X: *const MbedtlsMpi,
    );

    fn mbedtls_debug_printf_ecdh(
        ssl: *const MbedtlsSslContext,
        level: i32,
        file: *const i8,
        line: i32,
        ecdh: *const MbedtlsEcdhContext,
        attr: MbedtlsDebugEcdhAttr,
    );
}

#[repr(C)]
struct MbedtlsMpi {
    // fields...
}

#[repr(C)]
enum MbedtlsDebugEcdhAttr {
    MBEDTLS_DEBUG_ECDH_Q,
    MBEDTLS_DEBUG_ECDH_QP,
    MBEDTLS_DEBUG_ECDH_Z,
}

#[repr(C)]
enum MbedtlsKeyExchangeType {
    MBEDTLS_KEY_EXCHANGE_NONE = 0,
    MBEDTLS_KEY_EXCHANGE_PSK,
    MBEDTLS_KEY_EXCHANGE_RSA_PSK,
    MBEDTLS_KEY_EXCHANGE_DHE_PSK,
    MBEDTLS_KEY_EXCHANGE_ECDHE_PSK,
    // other variants...
}

const MBEDTLS_ERR_SSL_INTERNAL_ERROR: i32 = -0x6C00;
const MBEDTLS_ERR_SSL_BUFFER_TOO_SMALL: i32 = -0x7100;
const MBEDTLS_ERR_SSL_PRIVATE_KEY_REQUIRED: i32 = -0x7600;

fn mbedtls_ssl_psk_derive_premaster(
    ssl: &mut MbedtlsSslContext,
    key_ex: MbedtlsKeyExchangeType,
) -> i32 {
    unsafe {
        let handshake = &mut *ssl.handshake;
        let mut p = handshake.premaster.as_mut_ptr();
        let end = p.add(handshake.premaster.len());
        let mut psk: *const u8 = ptr::null();
        let mut psk_len: usize = 0;

        if mbedtls_ssl_get_psk(ssl, &mut psk, &mut psk_len) == MBEDTLS_ERR_SSL_PRIVATE_KEY_REQUIRED {
            mbedtls_debug_print_msg(
                ssl,
                1,
                cstr!("ssl_tls.c"),
                1868,
                cstr!("should never happen"),
            );
            return MBEDTLS_ERR_SSL_INTERNAL_ERROR;
        }

        match key_ex {
            MbedtlsKeyExchangeType::MBEDTLS_KEY_EXCHANGE_PSK => {
                if end.offset_from(p) < 2 {
                    return MBEDTLS_ERR_SSL_BUFFER_TOO_SMALL;
                }
                *p = (psk_len >> 8) as u8;
                p = p.add(1);
                *p = psk_len as u8;
                p = p.add(1);

                if end.offset_from(p) < psk_len as isize {
                    return MBEDTLS_ERR_SSL_BUFFER_TOO_SMALL;
                }
                ptr::copy_nonoverlapping(psk, p, psk_len);
                p = p.add(psk_len);
            }
            MbedtlsKeyExchangeType::MBEDTLS_KEY_EXCHANGE_RSA_PSK => {
                if end.offset_from(p) < 2 {
                    return MBEDTLS_ERR_SSL_BUFFER_TOO_SMALL;
                }
                *p = 0;
                p = p.add(1);
                *p = 48;
                p = p.add(48);
            }
            MbedtlsKeyExchangeType::MBEDTLS_KEY_EXCHANGE_DHE_PSK => {
                let mut len: usize = 0;
                let ret = mbedtls_dhm_calc_secret(
                    &mut handshake.dhm_ctx,
                    p.add(2),
                    end.offset_from(p.add(2)) as usize,
                    &mut len,
                    (*ssl.conf).f_rng,
                    (*ssl.conf).p_rng,
                );
                if ret != 0 {
                    mbedtls_debug_print_ret(
                        ssl,
                        1,
                        cstr!("ssl_tls.c"),
                        1923,
                        cstr!("mbedtls_dhm_calc_secret"),
                        ret,
                    );
                    return ret;
                }
                *p = (len >> 8) as u8;
                p = p.add(1);
                *p = len as u8;
                p = p.add(len);
                mbedtls_debug_print_mpi(
                    ssl,
                    3,
                    cstr!("ssl_tls.c"),
                    1930,
                    cstr!("DHM: K "),
                    &handshake.dhm_ctx.K,
                );
            }
            MbedtlsKeyExchangeType::MBEDTLS_KEY_EXCHANGE_ECDHE_PSK => {
                let mut zlen: usize = 0;
                let ret = mbedtls_ecdh_calc_secret(
                    &mut handshake.ecdh_ctx,
                    &mut zlen,
                    p.add(2),
                    end.offset_from(p.add(2)) as usize,
                    (*ssl.conf).f_rng,
                    (*ssl.conf).p_rng,
                );
                if ret != 0 {
                    mbedtls_debug_print_ret(
                        ssl,
                        1,
                        cstr!("ssl_tls.c"),
                        1944,
                        cstr!("mbedtls_ecdh_calc_secret"),
                        ret,
                    );
                    return ret;
                }
                *p = (zlen >> 8) as u8;
                p = p.add(1);
                *p = zlen as u8;
                p = p.add(zlen);
                mbedtls_debug_printf_ecdh(
                    ssl,
                    3,
                    cstr!("ssl_tls.c"),
                    1953,
                    &handshake.ecdh_ctx,
                    MbedtlsDebugEcdhAttr::MBEDTLS_DEBUG_ECDH_Z,
                );
            }
            _ => {
                mbedtls_debug_print_msg(
                    ssl,
                    1,
                    cstr!("ssl_tls.c"),
                    1958,
                    cstr!("should never happen"),
                );
                return MBEDTLS_ERR_SSL_INTERNAL_ERROR;
            }
        }

        if end.offset_from(p) < 2 {
            return MBEDTLS_ERR_SSL_BUFFER_TOO_SMALL;
        }
        *p = (psk_len >> 8) as u8;
        p = p.add(1);
        *p = psk_len as u8;
        p = p.add(1);

        if end.offset_from(p) < psk_len as isize {
            return MBEDTLS_ERR_SSL_BUFFER_TOO_SMALL;
        }
        ptr::copy_nonoverlapping(psk, p, psk_len);
        p = p.add(psk_len);

        handshake.pmslen = p.offset_from(handshake.premaster.as_mut_ptr()) as usize;
        0
    }
}

macro_rules! cstr {
    ($s:expr) => {
        concat!($s, "\0").as_ptr() as *const i8
    };
}
