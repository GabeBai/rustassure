#![allow(unaligned_references)]
use std::os::raw::{c_void, c_int, c_char};
use std::ptr;

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

extern {
#[no_mangle]
#[no_mangle]
    fn read(fd: c_int, buf: *mut c_void, count: usize) -> isize;
#[no_mangle]
#[no_mangle]
    fn __error() -> *mut c_int;
}

#[no_mangle]
#[no_mangle]
fn zrand_fd(out: *mut c_void, n: usize, statep: *mut c_void) {
    let fd = statep as c_int;
    let mut read_total = 0;
    let mut buf = out as *mut c_char;

    while n > 0 {
        let read_just = unsafe { read(fd, buf.add(read_total), n) };
        if read_just < 0 {
            let errno_ptr = unsafe { __error() };
            let errno_val = unsafe { *errno_ptr };
            // Handle error here
            break;
        }
        read_total += read_just as usize;
        n -= read_just as usize;
    }
}
