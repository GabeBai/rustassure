#![allow(unaligned_references)]
use std::os::raw::{c_int, c_void};

type SizeT = usize;
type Uint64T = u64;
type ZahlCharT = Uint64T;

#[repr(C)]
#[repr(C, packed)]struct Zahl {
    sign: c_int,
    padding__: c_int,
    used: SizeT,
    alloced: SizeT,
    chars: *mut ZahlCharT,
}

type ZT = [Zahl; 1];

#[derive(Debug)]
enum ZPrimality {
    NonPrime = 0,
    ProbablyPrime,
    Prime,
}

#[derive(Debug)]
enum ZRandDev {
    FastRandom = 0,
    SecureRandom,
    DefaultRandom,
    FastestRandom,
    LibcRandRandom,
    LibcRandomRandom,
    LibcRand48Random,
}

#[derive(Debug)]
enum ZRandDist {
    QuasiUniform = 0,
    Uniform,
    ModUniform,
}

#[derive(Debug)]
enum ZError {
    ErrnoSet = 0,
    ZeroPowZero,
    ZeroDivZero,
    DivZero,
    Negative,
    InvalidRadix,
}

#[repr(C)]
union Sigval {
    sival_int: c_int,
    sival_ptr: *mut c_void,
}

#[repr(C)]
union SigactionU {
    sa_handler: Option<extern "C" fn(c_int)>,
    sa_sigaction: Option<extern "C" fn(c_int, *mut c_void, *mut c_void)>,
}

extern "C" {
#[no_mangle]
#[no_mangle]
    fn zsub_impl(a: *mut Zahl, b: *const Zahl, used: SizeT);
}

#[no_mangle]
#[no_mangle]
fn zsub_positive_assign(a: &mut ZT, b: &ZT) {
    unsafe {
        zsub_impl(a.as_mut_ptr(), b.as_ptr(), b[0].used);
    }
}
