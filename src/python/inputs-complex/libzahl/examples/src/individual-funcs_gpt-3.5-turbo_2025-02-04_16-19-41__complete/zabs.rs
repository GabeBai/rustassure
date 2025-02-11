#![allow(unaligned_references)]
use std::os::raw::{c_ulonglong, c_void};
use std::mem;

type size_t = usize;
type zahl_char_t = c_ulonglong;

#[repr(C, packed)]struct Zahl {
    sign: i32,
    padding__: i32,
    used: size_t,
    alloced: size_t,
    chars: *mut zahl_char_t,
}

impl Clone for Zahl {
#[no_mangle]
#[no_mangle]
    fn clone(&self) -> Self {
        Self {
            sign: self.sign,
            padding__: self.padding__,
            used: self.used,
            alloced: self.alloced,
            chars: self.chars,
        }
    }
}

impl Copy for Zahl {}

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

#[no_mangle]
#[no_mangle]
fn zset(a: &mut [Zahl], b: &[Zahl]) {
    a[0] = b[0].clone();
}

#[no_mangle]
#[no_mangle]
fn zabs(a: &mut [Zahl], b: &[Zahl]) {
    if a.as_ptr() != b.as_ptr() {
        zset(a, b);
    }
    a[0].sign &= 1;
}
