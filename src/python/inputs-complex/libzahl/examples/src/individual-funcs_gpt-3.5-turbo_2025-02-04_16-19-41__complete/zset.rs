#![allow(unaligned_references)]
use std::os::raw::{c_ulong, c_ulonglong};

type zahl_char_t = c_ulonglong;

#[repr(C, packed)]struct Zahl {
    sign: i32,
    padding__: i32,
    used: usize,
    alloced: usize,
    chars: *mut zahl_char_t,
}

impl Zahl {
#[no_mangle]
#[no_mangle]
    fn new() -> Self {
        Zahl {
            sign: 0,
            padding__: 0,
            used: 0,
            alloced: 0,
            chars: std::ptr::null_mut(),
        }
    }
}

#[no_mangle]
#[no_mangle]
fn libzahl_realloc(z: &mut Zahl, size: usize) {
    // Implementation of libzahl_realloc
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

#[no_mangle]
#[no_mangle]
fn libzahl_memcpy(dest: *mut zahl_char_t, src: *const zahl_char_t, size: usize) {
    unsafe {
        std::ptr::copy_nonoverlapping(src, dest, size);
    }
}

#[no_mangle]
#[no_mangle]
fn zset(a: &mut Zt, b: &Zt) {
    if b[0].sign == 0 {
        a[0].sign = 0;
    } else {
        a[0].sign = b[0].sign;
        a[0].used = b[0].used;
        if a[0].alloced < b[0].used {
            libzahl_realloc(&mut a[0], b[0].used);
        }
        libzahl_memcpy(a[0].chars, b[0].chars, b[0].used);
    }
}
