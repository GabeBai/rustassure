#![allow(unaligned_references)]
use std::os::raw::{c_long, c_ulong, c_ulonglong};

type ZahlCharT = c_ulonglong;

#[repr(C, packed)]struct Zahl {
    sign: i32,
    padding__: i32,
    used: usize,
    alloced: usize,
    chars: *mut ZahlCharT,
}

type ZT = [Zahl; 1];

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

#[no_mangle]
#[no_mangle]
fn zswap(a: &mut ZT, b: &mut ZT) {
    let mut t: c_long;
    unsafe {
        t = (*a.as_mut_ptr()).sign as c_long;
        (*a.as_mut_ptr()).sign = (*b.as_mut_ptr()).sign;
        (*b.as_mut_ptr()).sign = t as i32;

        t = (*a.as_mut_ptr()).padding__ as c_long;
        (*a.as_mut_ptr()).padding__ = (*b.as_mut_ptr()).padding__;
        (*b.as_mut_ptr()).padding__ = t as i32;

        t = (*a.as_mut_ptr()).used as c_long;
        (*a.as_mut_ptr()).used = (*b.as_mut_ptr()).used;
        (*b.as_mut_ptr()).used = t as usize;

        t = (*a.as_mut_ptr()).alloced as c_long;
        (*a.as_mut_ptr()).alloced = (*b.as_mut_ptr()).alloced;
        (*b.as_mut_ptr()).alloced = t as usize;

        let temp_chars = (*a.as_mut_ptr()).chars;
        (*a.as_mut_ptr()).chars = (*b.as_mut_ptr()).chars;
        (*b.as_mut_ptr()).chars = temp_chars;
    }
}
