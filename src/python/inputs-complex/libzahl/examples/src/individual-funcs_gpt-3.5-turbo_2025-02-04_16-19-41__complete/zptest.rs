#![allow(unaligned_references)]
use std::os::raw::{c_ulonglong, c_void};

#[repr(C)]
pub struct Z_t {
    sign: i32,
    padding__: i32,
    used: usize,
    alloced: usize,
    chars: *mut zahl_char_t,
}

pub type zahl_char_t = c_ulonglong;

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

#[link(name = "libzahl")]
extern "C" {
#[no_mangle]
#[no_mangle]
    fn zrand(z_t: *mut Z_t, dev: ZRandDev, dist: ZRandDist, z_t: *mut Z_t);
}

