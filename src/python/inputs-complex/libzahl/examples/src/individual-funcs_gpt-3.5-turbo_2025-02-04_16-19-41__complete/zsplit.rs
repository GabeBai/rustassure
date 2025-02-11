#![allow(unaligned_references)]
use std::os::raw::{c_ulong, c_ulonglong};

type ZahlChar = c_ulonglong;
type SizeT = c_ulong;

#[repr(C)]
pub struct Zahl {
    sign: i32,
    padding__: i32,
    used: SizeT,
    alloced: SizeT,
    chars: *mut ZahlChar,
}

pub type Z_t = [Zahl; 1];

#[repr(C)]
pub enum ZPrimality {
    NONPRIME = 0,
    PROBABLY_PRIME,
    PRIME,
}

#[repr(C)]
pub enum ZRandDev {
    FAST_RANDOM = 0,
    SECURE_RANDOM,
    DEFAULT_RANDOM,
    FASTEST_RANDOM,
    LIBC_RAND_RANDOM,
    LIBC_RANDOM_RANDOM,
    LIBC_RAND48_RANDOM,
}

#[repr(C)]
pub enum ZRandDist {
    QUASIUNIFORM = 0,
    UNIFORM,
    MODUNIFORM,
}

#[repr(C)]
pub enum ZError {
    ZERROR_ERRNO_SET = 0,
    ZERROR_0_POW_0,
    ZERROR_0_DIV_0,
    ZERROR_DIV_0,
    ZERROR_NEGATIVE,
    ZERROR_INVALID_RADIX,
}

#[link(name = "your_library_name")]
extern "C" {
#[no_mangle]
#[no_mangle]
    pub fn zrsh(a: *mut Z_t, b: *const Z_t, c: SizeT);
#[no_mangle]
#[no_mangle]
    pub fn ztrunc(a: *mut Z_t, b: *const Z_t, c: SizeT);
#[no_mangle]
#[no_mangle]
    pub fn zsplit(high: *mut Z_t, low: *mut Z_t, a: *mut Z_t, delim: SizeT);
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Your Rust code here
}
