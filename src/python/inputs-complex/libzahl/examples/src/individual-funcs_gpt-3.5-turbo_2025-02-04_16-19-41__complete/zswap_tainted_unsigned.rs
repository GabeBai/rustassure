#![allow(unaligned_references)]
use std::os::raw::{c_void, c_int};

type size_t = usize;
type uint64_t = u64;
type zahl_char_t = uint64_t;

#[repr(C, packed)]struct Zahl {
    sign: i32,
    padding__: i32,
    used: size_t,
    alloced: size_t,
    chars: *mut zahl_char_t,
}

type Z_t = [Zahl; 1];

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

union Sigval {
    sival_int: i32,
    sival_ptr: *mut c_void,
}

union SigActionU {
    __sa_handler: extern "C" fn(i32),
    __sa_sigaction: extern "C" fn(i32, *mut __siginfo, *mut c_void),
}

#[no_mangle]
#[no_mangle]
fn zswap_tainted_unsigned(a: &mut Z_t, b: &mut Z_t) {
    let mut t = Zahl {
        used: a[0].used,
        chars: a[0].chars,
        ..Default::default()
    };

    a[0].used = b[0].used;
    b[0].used = t.used;

    a[0].chars = b[0].chars;
    b[0].chars = t.chars;
}
