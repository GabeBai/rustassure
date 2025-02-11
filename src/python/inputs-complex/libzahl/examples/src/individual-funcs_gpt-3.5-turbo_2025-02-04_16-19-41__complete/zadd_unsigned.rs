#![allow(unaligned_references)]
use libc::{c_int, c_void};

#[repr(C)]
pub struct zahl {
    sign: c_int,
    padding__: c_int,
    used: usize,
    alloced: usize,
    chars: *mut zahl_char_t,
}

pub type zahl_char_t = u64;
pub type z_t = [zahl; 1];

#[repr(C)]
pub enum zprimality {
    NONPRIME = 0,
    PROBABLY_PRIME,
    PRIME,
}

#[repr(C)]
pub enum zranddev {
    FAST_RANDOM = 0,
    SECURE_RANDOM,
    DEFAULT_RANDOM,
    FASTEST_RANDOM,
    LIBC_RAND_RANDOM,
    LIBC_RANDOM_RANDOM,
    LIBC_RAND48_RANDOM,
}

#[repr(C)]
pub enum zranddist {
    QUASIUNIFORM = 0,
    UNIFORM,
    MODUNIFORM,
}

#[repr(C)]
pub enum zerror {
    ZERROR_ERRNO_SET = 0,
    ZERROR_0_POW_0,
    ZERROR_0_DIV_0,
    ZERROR_DIV_0,
    ZERROR_NEGATIVE,
    ZERROR_INVALID_RADIX,
}

extern "C" {
#[no_mangle]
#[no_mangle]
    fn libzahl_zadd_unsigned(a: *mut z_t, b: *mut z_t, c: *mut z_t);
}

#[no_mangle]
#[no_mangle]
fn zadd_unsigned(a: &mut z_t, b: &mut z_t, c: &mut z_t) {
    unsafe {
        libzahl_zadd_unsigned(a as *mut z_t, b as *mut z_t, c as *mut z_t);
    }
}
