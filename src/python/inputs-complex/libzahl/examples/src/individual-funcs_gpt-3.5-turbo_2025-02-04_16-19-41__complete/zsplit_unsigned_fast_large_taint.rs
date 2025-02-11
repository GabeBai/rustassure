#![allow(unaligned_references)]
use std::os::raw::{c_int, c_void};

#[repr(C)]
#[repr(C, packed)]struct ZahlCharT(u64);

#[repr(C)]
#[repr(C, packed)]struct Zahl {
    sign: i32,
    padding__: i32,
    used: usize,
    alloced: usize,
    chars: *mut ZahlCharT,
}

#[repr(C)]
enum ZPrimality {
    NonPrime = 0,
    ProbablyPrime,
    Prime,
}

#[repr(C)]
enum ZRandDev {
    FastRandom = 0,
    SecureRandom,
    DefaultRandom,
    FastestRandom,
    LibcRandRandom,
    LibcRandomRandom,
    LibcRand48Random,
}

#[repr(C)]
enum ZRandDist {
    QuasiUniform = 0,
    Uniform,
    ModUniform,
}

#[repr(C)]
enum ZError {
    ZErrorErrnoSet = 0,
    ZError0Pow0,
    ZError0Div0,
    ZErrorDiv0,
    ZErrorNegative,
    ZErrorInvalidRadix,
}

union SigVal {
    sival_int: i32,
    sival_ptr: *mut c_void,
}

union SigActionU {
    __sa_handler: extern "C" fn(c_int),
    __sa_sigaction: extern "C" fn(c_int, *mut SigInfo, *mut c_void),
}

#[repr(C, packed)]struct SigInfo;

#[no_mangle]
#[no_mangle]
fn zsplit_unsigned_fast_large_taint(high: &mut Zahl, low: &mut Zahl, a: &Zahl, n: usize) {
    let n = n >> 6;
    high.sign = 1;
    high.used = a.used - n;
    high.chars = unsafe { a.chars.add(n) };
    low.sign = 1;
    low.used = n;
    low.chars = a.chars;
    while low.used > 0 && unsafe { (*low.chars.add(low.used - 1)).0 != 0 } {
        low.used -= 1;
    }
    if low.used == 0 {
        low.sign = 0;
    }
}
