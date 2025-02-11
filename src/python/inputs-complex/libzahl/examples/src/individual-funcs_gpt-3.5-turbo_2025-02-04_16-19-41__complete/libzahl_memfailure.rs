#![allow(unaligned_references)]
extern crate libc;

use libc::{c_int, c_void};

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

extern "C" {
#[no_mangle]
#[no_mangle]
    fn __error() -> *mut c_int;
#[no_mangle]
#[no_mangle]
    fn libzahl_failure(error: c_int);
}

union Sigval {
    sival_int: c_int,
    sival_ptr: *mut c_void,
}

#[repr(C)]
union SigActionU {
    __sa_handler: extern "C" fn(c_int),
    __sa_sigaction: extern "C" fn(c_int, *mut libc::siginfo_t, *mut c_void),
}

#[no_mangle]
#[no_mangle]
fn libzahl_memfailure() {
    if unsafe { *__error() } == 0 {
        unsafe {
            *__error() = 2;
        }
    }
    unsafe {
        libzahl_failure(*__error());
    }
}
