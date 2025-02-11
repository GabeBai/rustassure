#![allow(unaligned_references)]
use std::os::raw::{c_int, c_void};
use std::ffi::c_void as c_void_std;

#[repr(C)]
#[repr(C, packed)]struct __siginfo;

#[repr(C)]
#[repr(C, packed)]struct zahl {
    sign: c_int,
    padding__: c_int,
    used: usize,
    alloced: usize,
    chars: *mut zahl_char_t,
}

type zahl_char_t = u64;
type z_t = [zahl; 1];

enum zprimality {
    NONPRIME = 0,
    PROBABLY_PRIME,
    PRIME,
}

enum zranddev {
    FAST_RANDOM = 0,
    SECURE_RANDOM,
    DEFAULT_RANDOM,
    FASTEST_RANDOM,
    LIBC_RAND_RANDOM,
    LIBC_RANDOM_RANDOM,
    LIBC_RAND48_RANDOM,
}

enum zranddist {
    QUASIUNIFORM = 0,
    UNIFORM,
    MODUNIFORM,
}

enum zerror {
    ZERROR_ERRNO_SET = 0,
    ZERROR_0_POW_0,
    ZERROR_0_DIV_0,
    ZERROR_DIV_0,
    ZERROR_NEGATIVE,
    ZERROR_INVALID_RADIX,
}

union sigval {
    sival_int: c_int,
    sival_ptr: *mut c_void,
}

union __sigaction_u {
    __sa_handler: extern "C" fn(c_int),
    __sa_sigaction: extern "C" fn(c_int, *mut __siginfo, *mut c_void_std),
}

extern "C" {
#[no_mangle]
#[no_mangle]
    fn libzahl_realloc(z: *mut zahl, size: usize);
}

#[no_mangle]
#[no_mangle]
fn zsqr_ll_single_char(a: &mut z_t, b: &z_t) {
    unsafe {
        if (*a).alloced < 1 {
            libzahl_realloc(a as *mut zahl, 1);
        }
        (*a).used = 1;
        (*a).chars[0] = (*b).chars[0] * (*b).chars[0];
        (*a).sign = 1;
    }
}
