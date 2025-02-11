#![allow(unaligned_references)]
use std::os::raw::{c_ulonglong, c_ulong};

type ZahlCharT = c_ulonglong;
type SizeT = c_ulong;

#[repr(C, packed)]struct Zahl {
    sign: i32,
    padding__: i32,
    used: SizeT,
    alloced: SizeT,
    chars: *mut ZahlCharT,
}

type ZT = [Zahl; 1];

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

#[derive(PartialEq)]
#[repr(C, packed)]struct ZT([Zahl; 1]);

static mut LIBZAHL_TMP_MODSQR: ZT = ZT([Zahl {
    sign: 0,
    padding__: 0,
    used: 0,
    alloced: 0,
    chars: std::ptr::null_mut(),
}]);

#[no_mangle]
#[no_mangle]
fn zset(a: ZT, b: ZT) {
    // Implementation of zset function
}

#[no_mangle]
#[no_mangle]
fn zmod(a: ZT, b: ZT, c: ZT) {
    // Implementation of zmod function
}

#[no_mangle]
#[no_mangle]
fn zsqr(a: ZT, b: ZT) {
    // Implementation of zsqr function
}

#[no_mangle]
#[no_mangle]
fn zmodsqr(a: ZT, b: ZT, c: ZT) {
    unsafe {
        if a == c {
            zset(LIBZAHL_TMP_MODSQR, c);
            zsqr(a, b);
            zmod(a, a, LIBZAHL_TMP_MODSQR);
        } else {
            zsqr(a, b);
            zmod(a, a, c);
        }
    }
}
