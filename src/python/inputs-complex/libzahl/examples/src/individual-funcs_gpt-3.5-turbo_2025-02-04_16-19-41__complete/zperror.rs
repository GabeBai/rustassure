#![allow(unaligned_references)]
use std::os::raw::{c_char, c_int};

#[repr(C)]
pub enum Zprimality {
    NONPRIME = 0,
    PROBABLY_PRIME,
    PRIME,
}

#[repr(C)]
pub enum Zranddev {
    FAST_RANDOM = 0,
    SECURE_RANDOM,
    DEFAULT_RANDOM,
    FASTEST_RANDOM,
    LIBC_RAND_RANDOM,
    LIBC_RANDOM_RANDOM,
    LIBC_RAND48_RANDOM,
}

#[repr(C)]
pub enum Zranddist {
    QUASIUNIFORM = 0,
    UNIFORM,
    MODUNIFORM,
}

#[repr(C)]
pub enum Zerror {
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
    fn zerror(desc: *mut *const c_char) -> Zerror;
#[no_mangle]
#[no_mangle]
    fn libzahl_error() -> c_int;
#[no_mangle]
#[no_mangle]
    fn perror(prefix: *const c_char);
#[no_mangle]
#[no_mangle]
    fn fprintf(stream: *mut FILE, format: *const c_char, ...) -> c_int;
}

#[repr(C)]
pub struct FILE {
    _p: *mut u8,
    _r: c_int,
    _w: c_int,
    _flags: i16,
    _file: i16,
    _bf: __sbuf,
    _lbfsize: c_int,
    _cookie: *mut u8,
    _close: Option<extern "C" fn(*mut u8) -> c_int>,
    _read: Option<extern "C" fn(*mut u8, *mut c_char, c_int) -> c_int>,
    _seek: Option<extern "C" fn(*mut u8, fpos_t, c_int) -> fpos_t>,
    _write: Option<extern "C" fn(*mut u8, *const c_char, c_int) -> c_int,
    _ub: __sbuf,
    _extra: *mut __sFILEX,
    _ur: c_int,
    _ubuf: [u8; 3],
    _nbuf: [u8; 1],
    _lb: __sbuf,
    _blksize: c_int,
    _offset: fpos_t,
}

extern "C" {
    static __stderrp: *mut FILE;
}

#[no_mangle]
#[no_mangle]
pub fn zperror(prefix: *const c_char) {
    unsafe {
        let libzahl_error = libzahl_error();
        if libzahl_error >= 0 {
            *(__error()) = libzahl_error;
            perror(prefix);
        } else {
            let mut desc: *const c_char = std::ptr::null();
            zerror(&mut desc);
            if !prefix.is_null() && !(*prefix).is_null() {
                fprintf(__stderrp, b"%s: %s\n\0".as_ptr() as *const c_char, prefix, desc);
            } else {
                fprintf(__stderrp, b"%s\n\0".as_ptr() as *const c_char, desc);
            }
        }
    }
}
