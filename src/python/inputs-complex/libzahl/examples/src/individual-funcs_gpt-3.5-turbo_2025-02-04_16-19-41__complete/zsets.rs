#![allow(unaligned_references)]
use std::os::raw::{c_int, c_ulonglong};

#[repr(C)]
#[repr(C, packed)]struct Zahl {
    sign: c_int,
    padding__: c_int,
    used: usize,
    alloced: usize,
    chars: *mut ZahlChar,
}

type ZahlChar = u64;

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
    fn isdigit(c: c_int) -> c_int;
#[no_mangle]
#[no_mangle]
    fn zset(a: *mut Zahl, b: *mut Zahl);
#[no_mangle]
#[no_mangle]
    fn zadd(a: *mut Zahl, b: *mut Zahl, c: *mut Zahl);
#[no_mangle]
#[no_mangle]
    fn zmul(a: *mut Zahl, b: *mut Zahl, c: *mut Zahl);
#[no_mangle]
#[no_mangle]
    fn zsignum(a: *mut Zahl) -> c_int;
#[no_mangle]
#[no_mangle]
    fn zsets(a: *mut Zahl, str: *const u8) -> c_int;
#[no_mangle]
#[no_mangle]
    fn __error() -> *mut c_int;
}

static mut LIBZAHL_TMP_STR_NUM: Zahl = Zahl {
    sign: 0,
    padding__: 0,
    used: 0,
    alloced: 0,
    chars: std::ptr::null_mut(),
};

static mut LIBZAHL_CONST_1E19: Zahl = Zahl {
    sign: 0,
    padding__: 0,
    used: 0,
    alloced: 0,
    chars: std::ptr::null_mut(),
};

#[no_mangle]
#[no_mangle]
fn main() {
    // Your main function logic here
}
