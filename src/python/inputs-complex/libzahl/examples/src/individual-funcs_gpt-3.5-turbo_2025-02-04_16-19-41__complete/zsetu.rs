#![allow(unaligned_references)]
use std::os::raw::{c_ulong, c_ulonglong};

#[repr(C)]
#[repr(C, packed)]struct Zahl {
    sign: i32,
    padding__: i32,
    used: usize,
    alloced: usize,
    chars: *mut c_ulonglong,
}

extern "C" {
#[no_mangle]
#[no_mangle]
    fn libzahl_realloc(a: *mut Zahl, size: usize);
}

#[derive(Clone, Copy)]
enum ZPrimality {
    NonPrime = 0,
    ProbablyPrime,
    Prime,
}

#[derive(Clone, Copy)]
enum ZRandDev {
    FastRandom = 0,
    SecureRandom,
    DefaultRandom,
    FastestRandom,
    LibcRandRandom,
    LibcRandomRandom,
    LibcRand48Random,
}

#[derive(Clone, Copy)]
enum ZRandDist {
    QuasiUniform = 0,
    Uniform,
    ModUniform,
}

#[derive(Clone, Copy)]
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
fn zsetu(a: &mut Zahl, b: c_ulonglong) {
    if b == 0 {
        a.sign = 0;
        return;
    }
    if a.alloced < 1 {
        unsafe {
            libzahl_realloc(a, 1);
        }
    }
    a.sign = 1;
    unsafe {
        (*a.chars) = b;
    }
    a.used = 1;
}

#[no_mangle]
#[no_mangle]
fn main() {
    let mut a = Zahl {
        sign: 0,
        padding__: 0,
        used: 0,
        alloced: 0,
        chars: std::ptr::null_mut(),
    };
    zsetu(&mut a, 42);
}
