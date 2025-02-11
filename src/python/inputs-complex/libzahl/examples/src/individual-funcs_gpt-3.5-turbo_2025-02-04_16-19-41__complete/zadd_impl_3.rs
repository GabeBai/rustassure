#![allow(unaligned_references)]
use std::os::raw::{c_void, c_int};

type size_t = usize;
type uint64_t = u64;
type zahl_char_t = uint64_t;

#[repr(C, packed)]struct zahl {
    sign: c_int,
    padding__: c_int,
    used: size_t,
    alloced: size_t,
    chars: *mut zahl_char_t,
}

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
    __sa_sigaction: extern "C" fn(c_int, *mut __siginfo, *mut c_void),
}

#[no_mangle]
#[no_mangle]
fn zadd_impl_3(a: &mut z_t, b: &z_t, n: size_t) {
    zadd_impl_4(a, a, b, n);
}
