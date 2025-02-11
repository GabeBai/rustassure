#![allow(unaligned_references)]
use std::os::raw::{c_ulonglong, c_int, c_void};

type size_t = usize;
type uint64_t = u64;
type zahl_char_t = uint64_t;

#[repr(C, packed)]struct Zahl {
    sign: c_int,
    padding__: c_int,
    used: size_t,
    alloced: size_t,
    chars: *mut zahl_char_t,
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

#[derive(Debug)]
union Sigval {
    sival_int: c_int,
    sival_ptr: *mut c_void,
}

#[derive(Debug)]
union SigActionU {
    __sa_handler: extern "C" fn(c_int),
    __sa_sigaction: extern "C" fn(c_int, *mut __SigInfo, *mut c_void),
}

extern "C" {
    static mut libzahl_tmp_pow_b: ZT;
    static mut libzahl_tmp_pow_d: ZT;

#[no_mangle]
#[no_mangle]
    fn zset(a: *mut Zahl, b: *mut Zahl);
#[no_mangle]
#[no_mangle]
    fn zsetu(a: *mut Zahl, b: uint64_t);
#[no_mangle]
#[no_mangle]
    fn zmodmul(a: *mut Zahl, b: *mut Zahl, c: *mut Zahl, d: *mut Zahl);
#[no_mangle]
#[no_mangle]
    fn zmod(a: *mut Zahl, b: *mut Zahl, c: *mut Zahl);
#[no_mangle]
#[no_mangle]
    fn zmodsqr(a: *mut Zahl, b: *mut Zahl, c: *mut Zahl);
#[no_mangle]
#[no_mangle]
    fn libzahl_failure(err: c_int);
}

#[no_mangle]
#[no_mangle]
fn zmodpowu(a: *mut Zahl, b: *mut Zahl, c: c_ulonglong, d: *mut Zahl) {
    if c == 0 {
        if zzero(b) != 0 {
            unsafe { libzahl_failure(-(ZError::ZError0Pow0 as c_int)); }
        } else if zzero(d) != 0 {
            unsafe { libzahl_failure(-(ZError::ZErrorDiv0 as c_int)); }
        } else {
            zsetu(a, 1);
        }
        return;
    } else if zzero(d) != 0 {
        unsafe { libzahl_failure(-(ZError::ZErrorDiv0 as c_int)); }
    } else if zzero(b) != 0 {
        unsafe { (*a).sign = 0; }
        return;
    }

    unsafe {
        zmod(libzahl_tmp_pow_b.as_mut_ptr(), b, d);
        zset(libzahl_tmp_pow_d.as_mut_ptr(), d);
    }

    if c & 1 != 0 {
        unsafe { zset(a, libzahl_tmp_pow_b.as_mut_ptr()); }
    } else {
        zsetu(a, 1);
    }

    let mut c = c;
    while c > 0 {
        c >>= 1;
        unsafe {
            zmodsqr(libzahl_tmp_pow_b.as_mut_ptr(), libzahl_tmp_pow_b.as_mut_ptr(), libzahl_tmp_pow_d.as_mut_ptr());
            if c & 1 != 0 {
                zmodmul(a, a, libzahl_tmp_pow_b.as_mut_ptr(), libzahl_tmp_pow_d.as_mut_ptr());
            }
        }
    }
}

#[no_mangle]
#[no_mangle]
fn zzero(z: *mut Zahl) -> c_int {
    unsafe { (*z).used == 0 }
}

#[repr(C, packed)]struct __SigInfo;

#[no_mangle]
#[no_mangle]
fn main() {
    // Your main function code here
}
