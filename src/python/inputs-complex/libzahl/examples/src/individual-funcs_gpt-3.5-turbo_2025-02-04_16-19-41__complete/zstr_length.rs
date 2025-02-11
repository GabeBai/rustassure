#![allow(unaligned_references)]
use std::os::raw::{c_ulonglong, c_int};

type ZahlCharT = u64;
type SizeT = usize;

#[repr(C)]
#[repr(C, packed)]struct Zahl {
    sign: c_int,
    padding__: c_int,
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

union Sigval {
    sival_int: c_int,
    sival_ptr: *mut std::ffi::c_void,
}

union SigActionU {
    __sa_handler: extern "C" fn(c_int),
    __sa_sigaction: extern "C" fn(c_int, *mut __SigInfo, *mut std::ffi::c_void),
}

static mut LIBZAHL_TMP_STR_NUM: ZT = [Zahl {
    sign: 0,
    padding__: 0,
    used: 0,
    alloced: 0,
    chars: std::ptr::null_mut(),
}];

static mut LIBZAHL_TMP_STR_MAG: ZT = [Zahl {
    sign: 0,
    padding__: 0,
    used: 0,
    alloced: 0,
    chars: std::ptr::null_mut(),
}];

static mut LIBZAHL_TMP_STR_DIV: ZT = [Zahl {
    sign: 0,
    padding__: 0,
    used: 0,
    alloced: 0,
    chars: std::ptr::null_mut(),
}];

#[no_mangle]
#[no_mangle]
fn zset(a: &mut ZT, b: &ZT) {
    // Implementation of zset
}

#[no_mangle]
#[no_mangle]
fn zsetu(a: &mut ZT, b: u64) {
    // Implementation of zsetu
}

#[no_mangle]
#[no_mangle]
fn zcmpmag(a: &ZT, b: &ZT) -> c_int {
    // Implementation of zcmpmag
    0
}

#[no_mangle]
#[no_mangle]
fn zdiv(a: &mut ZT, b: &ZT, c: &ZT) {
    // Implementation of zdiv
}

#[no_mangle]
#[no_mangle]
fn zsqr(a: &mut ZT, b: &ZT) {
    // Implementation of zsqr
}

#[no_mangle]
#[no_mangle]
fn zzero(a: &ZT) -> c_int {
    // Implementation of zzero
    0
}

#[no_mangle]
#[no_mangle]
fn zsignum(a: &ZT) -> c_int {
    // Implementation of zsignum
    0
}

#[no_mangle]
#[no_mangle]
fn zstr_length(a: &ZT, radix: c_ulonglong) -> SizeT {
    let mut size_total = 1;
    let mut size_temp: SizeT;

    if radix < 2 {
        // libzahl_failure(-ZErrorInvalidRadix);
    }

    zset(&mut LIBZAHL_TMP_STR_NUM, a);

    while zzero(&LIBZAHL_TMP_STR_NUM) == 0 {
        zsetu(&mut LIBZAHL_TMP_STR_MAG, radix);
        zset(&mut LIBZAHL_TMP_STR_DIV, &LIBZAHL_TMP_STR_MAG);
        size_temp = 1;

        while zcmpmag(&LIBZAHL_TMP_STR_MAG, &LIBZAHL_TMP_STR_NUM) <= 0 {
            zset(&mut LIBZAHL_TMP_STR_DIV, &LIBZAHL_TMP_STR_MAG);
            zsqr(&mut LIBZAHL_TMP_STR_MAG, &LIBZAHL_TMP_STR_MAG);
            size_temp <<= 1;
        }

        size_temp >>= 1;
        size_total += size_temp;
        zdiv(&mut LIBZAHL_TMP_STR_NUM, &LIBZAHL_TMP_STR_NUM, &LIBZAHL_TMP_STR_DIV);
    }

    size_total + if zsignum(a) < 0 { 1 } else { 0 }
}
