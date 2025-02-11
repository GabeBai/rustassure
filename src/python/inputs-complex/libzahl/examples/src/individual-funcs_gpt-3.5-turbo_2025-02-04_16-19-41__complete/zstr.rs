#![allow(unaligned_references)]
use std::os::raw::{c_ulonglong, c_void};

#[repr(C)]
pub struct Zahl {
    sign: i32,
    padding__: i32,
    used: usize,
    alloced: usize,
    chars: *mut ZahlChar,
}

pub type ZT = [Zahl; 1];

#[repr(C)]
pub enum ZPrimality {
    NonPrime = 0,
    ProbablyPrime,
    Prime,
}

#[repr(C)]
pub enum ZRandDev {
    FastRandom = 0,
    SecureRandom,
    DefaultRandom,
    FastestRandom,
    LibcRandRandom,
    LibcRandomRandom,
    LibcRand48Random,
}

#[repr(C)]
pub enum ZRandDist {
    QuasiUniform = 0,
    Uniform,
    ModUniform,
}

#[repr(C)]
pub enum ZError {
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
    fn zabs(a: *mut ZT, b: *mut ZT);
#[no_mangle]
#[no_mangle]
    fn zdivmod(a: *mut ZT, b: *mut ZT, c: *mut ZT, d: *mut ZT);
#[no_mangle]
#[no_mangle]
    fn zzero(a: *mut ZT) -> i32;
#[no_mangle]
#[no_mangle]
    fn zsignum(a: *mut ZT) -> i32;
#[no_mangle]
#[no_mangle]
    fn malloc(size: usize) -> *mut c_void;
}

#[repr(C)]
pub struct Sigval {
    sival_int: i32,
    sival_ptr: *mut c_void,
}

#[repr(C)]
pub union SigActionU {
    __sa_handler: extern "C" fn(i32),
    __sa_sigaction: extern "C" fn(i32, *mut c_void, *mut c_void),
}

#[repr(C)]
pub struct SBuf {
    _base: *mut u8,
    _size: i32,
}

#[repr(C)]
pub struct SFileX;

#[repr(C)]
pub struct ZahlChar(c_ulonglong);

// Rest of the translation goes here...
