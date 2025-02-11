#![allow(unaligned_references)]
use std::os::raw::{c_ulonglong, c_ulong};

type zahl_char_t = c_ulonglong;

#[repr(C, packed)]struct Zahl {
    sign: i32,
    padding__: i32,
    used: c_ulong,
    alloced: c_ulong,
    chars: *mut zahl_char_t,
}

type Zt = [Zahl; 1];

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

impl Zahl {
#[no_mangle]
#[no_mangle]
    fn zsignum(&self) -> i32 {
        self.sign
    }
}
