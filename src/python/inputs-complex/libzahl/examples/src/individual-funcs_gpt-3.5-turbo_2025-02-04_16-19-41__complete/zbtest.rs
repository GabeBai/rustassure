#![allow(unaligned_references)]
use std::os::raw::{c_ulong, c_uchar};

type ZahlCharT = u64;

#[repr(C, packed)]struct Zahl {
    sign: i32,
    padding__: i32,
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

#[no_mangle]
#[no_mangle]
fn zzero(a: &ZT) -> bool {
    a[0].used == 0
}

#[no_mangle]
#[no_mangle]
fn zbtest(a: &ZT, bit: usize) -> i32 {
    let mut chars: usize;
    if zzero(a) {
        return 0;
    }
    chars = bit >> 6;
    if chars >= a[0].used {
        return 0;
    }
    let bit = bit & (64 - 1);
    unsafe {
        let char_ptr = a[0].chars.offset(chars as isize);
        let char_val = *char_ptr >> bit;
        return (char_val & 1) as i32;
    }
}
