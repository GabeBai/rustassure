#![allow(unaligned_references)]
use libc::{c_int, c_void, siginfo_t};

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

union SigVal {
    sival_int: i32,
    sival_ptr: *mut c_void,
}

union SigActionU {
    __sa_handler: extern "C" fn(c_int),
    __sa_sigaction: extern "C" fn(c_int, *mut siginfo_t, *mut c_void),
}

#[repr(C, packed)]struct SBuf {
    _base: *mut u8,
    _size: c_int,
}

#[repr(C, packed)]struct SFileX;

#[no_mangle]
#[no_mangle]
fn cmemmove(d: &mut [u8], s: &[u8]) {
    for (dst, src) in d.iter_mut().zip(s.iter()) {
        *dst = *src;
    }
}
