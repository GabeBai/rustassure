#![allow(unaligned_references)]
use std::os::raw::{c_int, c_void};

type size_t = usize;
type uint64_t = u64;
type zahl_char_t = uint64_t;

#[repr(C, packed)]struct Zahl {
    sign: i32,
    padding__: i32,
    used: size_t,
    alloced: size_t,
    chars: *mut zahl_char_t,
}

extern "C" {
#[no_mangle]
#[no_mangle]
    fn libzahl_realloc(z: *mut Zahl, size: size_t);
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

union SigVal {
    sival_int: i32,
    sival_ptr: *mut c_void,
}

#[repr(C)]
union SigActionU {
    __sa_handler: extern "C" fn(c_int),
    __sa_sigaction: extern "C" fn(c_int, *mut SigInfo, *mut c_void),
}

#[no_mangle]
#[no_mangle]
fn zmul_ll_single_char(a: &mut Zahl, b: &Zahl, c: &Zahl) {
    if a.alloced < 1 {
        unsafe { libzahl_realloc(a, 1) };
    }
    a.used = 1;
    unsafe {
        (*a.chars.offset(0)) = (*b.chars.offset(0)) * (*c.chars.offset(0));
    }
    a.sign = 1;
}
