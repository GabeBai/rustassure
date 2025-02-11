#![allow(unaligned_references)]
use std::os::raw::{c_ulong, c_ulonglong, c_void};

type size_t = c_ulong;
type uint64_t = c_ulonglong;
type zahl_char_t = uint64_t;

#[repr(C)]
#[repr(C, packed)]struct Zahl {
    sign: i32,
    padding__: i32,
    used: size_t,
    alloced: size_t,
    chars: *mut zahl_char_t,
}

type z_t = [Zahl; 1];

#[repr(C)]
enum ZPrimality {
    NONPRIME = 0,
    PROBABLY_PRIME,
    PRIME,
}

#[repr(C)]
enum ZRandDev {
    FAST_RANDOM = 0,
    SECURE_RANDOM,
    DEFAULT_RANDOM,
    FASTEST_RANDOM,
    LIBC_RAND_RANDOM,
    LIBC_RANDOM_RANDOM,
    LIBC_RAND48_RANDOM,
}

#[repr(C)]
enum ZRandDist {
    QUASIUNIFORM = 0,
    UNIFORM,
    MODUNIFORM,
}

#[repr(C)]
enum ZError {
    ZERROR_ERRNO_SET = 0,
    ZERROR_0_POW_0,
    ZERROR_0_DIV_0,
    ZERROR_DIV_0,
    ZERROR_NEGATIVE,
    ZERROR_INVALID_RADIX,
}

#[repr(C)]
union Sigval {
    sival_int: i32,
    sival_ptr: *mut c_void,
}

#[repr(C)]
union SigActionU {
    __sa_handler: extern "C" fn(i32),
    __sa_sigaction: extern "C" fn(i32, *mut SigInfo, *mut c_void),
}

#[no_mangle]
static mut libzahl_temp_stack_head: *mut *mut Zahl = std::ptr::null_mut();

#[no_mangle]
#[no_mangle]
#[no_mangle]
pub extern "C" fn zfree(a: *mut Zahl) {
    // Implementation of zfree function
}

#[no_mangle]
#[no_mangle]
#[no_mangle]
pub extern "C" fn zfree_temp(a: *mut Zahl) {
    unsafe {
        zfree(a);
        libzahl_temp_stack_head = libzahl_temp_stack_head.offset(-1);
    }
}
