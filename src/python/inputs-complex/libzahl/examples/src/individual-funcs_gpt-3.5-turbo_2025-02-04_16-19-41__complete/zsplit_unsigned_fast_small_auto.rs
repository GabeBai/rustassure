#![allow(unaligned_references)]
use std::os::raw::{c_ulong, c_uchar};

type zahl_char_t = u64;

#[repr(C, packed)]struct Zahl {
    sign: i32,
    padding__: i32,
    used: usize,
    alloced: usize,
    chars: *mut zahl_char_t,
}

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

union Sigval {
    sival_int: i32,
    sival_ptr: *mut std::ffi::c_void,
}

union SigActionU {
    __sa_handler: extern "C" fn(i32),
    __sa_sigaction: extern "C" fn(i32, *mut __SigInfo, *mut std::ffi::c_void),
}

#[no_mangle]
#[no_mangle]
fn zsplit_unsigned_fast_small_auto(high: &mut Zahl, low: &mut Zahl, a: &Zahl, n: usize) {
    let mask: zahl_char_t = 1;
    let mask = (mask << n) - 1;
    high.sign = 1;
    high.used = 1;
    unsafe {
        (*high.chars.offset(0)) = (*a.chars.offset(0)) >> n;
    }
    if a.used == 2 {
        unsafe {
            (*high.chars.offset(1)) = (*a.chars.offset(1)) >> n;
            high.used += if (*high.chars.offset(1)) != 0 { 1 } else { 0 };
            let n = 64 - n;
            (*high.chars.offset(0)) |= ((*a.chars.offset(1)) & mask) << n;
        }
    }
    low.sign = 1;
    low.used = 1;
    unsafe {
        (*low.chars.offset(0)) = (*a.chars.offset(0)) & mask;
    }
    if !(*low.chars.offset(0) != 0) {
        low.sign = 0;
    }
}
