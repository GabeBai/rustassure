#![allow(unaligned_references)]
use std::os::raw::{c_ulong, c_uchar, c_int};

type ZahlCharT = u64;

#[repr(C, packed)]struct Zahl {
    sign: c_int,
    padding__: c_int,
    used: usize,
    alloced: usize,
    chars: *mut ZahlCharT,
}

type ZT = [Zahl; 1];

enum ZPrimality {
    NonPrime = 0,
    ProbablyPrime,
    Prime,
}

enum ZRandDev {
    FastRandom = 0,
    SecureRandom,
    DefaultRandom,
    FastestRandom,
    LibcRandRandom,
    LibcRandomRandom,
    LibcRand48Random,
}

enum ZRandDist {
    QuasiUniform = 0,
    Uniform,
    ModUniform,
}

enum ZError {
    ZErrorErrnoSet = 0,
    ZError0Pow0,
    ZError0Div0,
    ZErrorDiv0,
    ZErrorNegative,
    ZErrorInvalidRadix,
}

#[repr(C)]
union Sigval {
    sival_int: c_int,
    sival_ptr: *mut c_void,
}

#[repr(C)]
union SigActionU {
    __sa_handler: extern "C" fn(c_int),
    __sa_sigaction: extern "C" fn(c_int, *mut c_void, *mut c_void),
}

extern "C" {
    static mut libzahl_tmp_gcd_u: ZT;
    static mut libzahl_tmp_gcd_v: ZT;

#[no_mangle]
#[no_mangle]
    fn zset(a: ZT, b: ZT);
#[no_mangle]
#[no_mangle]
    fn zcmpmag(a: ZT, b: ZT) -> c_int;
#[no_mangle]
#[no_mangle]
    fn zsub_positive_assign(a: ZT, b: ZT);
#[no_mangle]
#[no_mangle]
    fn zlsh(a: ZT, b: ZT, c: usize);
#[no_mangle]
#[no_mangle]
    fn zrsh(a: ZT, b: ZT, c: usize);
#[no_mangle]
#[no_mangle]
    fn zlsb(a: ZT) -> usize;
#[no_mangle]
#[no_mangle]
    fn zzero(a: ZT) -> c_int;
#[no_mangle]
#[no_mangle]
    fn zsignum(a: ZT) -> c_int;
}

#[no_mangle]
#[no_mangle]
fn zgcd(a: ZT, b: ZT, c: ZT) {
    let mut shifts: usize;
    let mut u_orig: *mut ZahlCharT;
    let mut v_orig: *mut ZahlCharT;
    let mut u_lsb: usize;
    let mut v_lsb: usize;
    let mut neg: c_int;
    let mut cmpmag: c_int;

    if zzero(b) != 0 {
        if a != c {
            zset(a, c);
        }
        return;
    }

    if zzero(c) != 0 {
        if a != b {
            zset(a, b);
        }
        return;
    }

    neg = if zsignum(b) & zsignum(c) < 0 { 1 } else { 0 };
    u_lsb = zlsb(b);
    v_lsb = zlsb(c);
    shifts = if u_lsb < v_lsb { u_lsb } else { v_lsb };

    unsafe {
        zrsh(libzahl_tmp_gcd_u, b, u_lsb);
        zrsh(libzahl_tmp_gcd_v, c, v_lsb);
        u_orig = (*libzahl_tmp_gcd_u.as_mut_ptr()).chars;
        v_orig = (*libzahl_tmp_gcd_v.as_mut_ptr()).chars;

        loop {
            cmpmag = zcmpmag(libzahl_tmp_gcd_u, libzahl_tmp_gcd_v);
            if cmpmag >= 0 {
                if cmpmag == 0 {
                    break;
                }
                // zswap_tainted_unsigned(libzahl_tmp_gcd_u, libzahl_tmp_gcd_v);
            }
            zsub_positive_assign(libzahl_tmp_gcd_v, libzahl_tmp_gcd_u);
            // zrsh_taint(libzahl_tmp_gcd_v, zlsb(libzahl_tmp_gcd_v));
        }

        zlsh(a, libzahl_tmp_gcd_u, shifts);
        (*a.as_mut_ptr()).sign = if neg != 0 { -1 } else { 1 };
        (*libzahl_tmp_gcd_u.as_mut_ptr()).chars = u_orig;
        (*libzahl_tmp_gcd_v.as_mut_ptr()).chars = v_orig;
    }
}
