#![allow(unaligned_references)]
use std::os::raw::{c_ulong, c_ulonglong};

type ZahlChar = c_ulonglong;

#[repr(C)]
#[repr(C, packed)]struct Zahl {
    sign: i32,
    padding__: i32,
    used: c_ulong,
    alloced: c_ulong,
    chars: *mut ZahlChar,
}

extern {
    static mut libzahl_tmp_mod: [Zahl; 1];
}

type Z_t = [Zahl; 1];

#[repr(C)]
enum Zprimality {
    NONPRIME = 0,
    PROBABLY_PRIME,
    PRIME,
}

#[repr(C)]
enum Zranddev {
    FAST_RANDOM = 0,
    SECURE_RANDOM,
    DEFAULT_RANDOM,
    FASTEST_RANDOM,
    LIBC_RAND_RANDOM,
    LIBC_RANDOM_RANDOM,
    LIBC_RAND48_RANDOM,
}

#[repr(C)]
enum Zranddist {
    QUASIUNIFORM = 0,
    UNIFORM,
    MODUNIFORM,
}

#[repr(C)]
enum Zerror {
    ZERROR_ERRNO_SET = 0,
    ZERROR_0_POW_0,
    ZERROR_0_DIV_0,
    ZERROR_DIV_0,
    ZERROR_NEGATIVE,
    ZERROR_INVALID_RADIX,
}

extern {
#[no_mangle]
#[no_mangle]
    fn zdivmod(a: *mut Zahl, b: *mut Zahl, c: *mut Zahl, d: *mut Zahl);
}

#[no_mangle]
#[no_mangle]
fn zmod(a: *mut Zahl, b: *mut Zahl, c: *mut Zahl) {
    unsafe {
        zdivmod(libzahl_tmp_mod.as_mut_ptr(), a, b, c);
    }
}
