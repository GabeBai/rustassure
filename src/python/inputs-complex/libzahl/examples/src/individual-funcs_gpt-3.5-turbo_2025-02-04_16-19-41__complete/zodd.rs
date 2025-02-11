#![allow(unaligned_references)]
use std::os::raw::{c_int, c_ulong};
use std::slice;

type zahl_char_t = u64;

#[repr(C, packed)]struct Zahl {
    sign: c_int,
    padding__: c_int,
    used: c_ulong,
    alloced: c_ulong,
    chars: *mut zahl_char_t,
}

type Zt = [Zahl; 1];

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

impl Zahl {
#[no_mangle]
#[no_mangle]
    fn zodd(&self) -> bool {
        self.sign != 0 && unsafe { slice::from_raw_parts(self.chars, self.used as usize)[0] & 1 != 0 }
    }
}
