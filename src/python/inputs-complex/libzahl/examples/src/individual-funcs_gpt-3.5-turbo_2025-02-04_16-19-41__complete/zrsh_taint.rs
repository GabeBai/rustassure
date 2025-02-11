#![allow(unaligned_references)]
use std::os::raw::{c_ulonglong, c_void};

type size_t = usize;
type zahl_char_t = u64;

#[repr(C, packed)]struct Zahl {
    sign: i32,
    padding__: i32,
    used: size_t,
    alloced: size_t,
    chars: *mut zahl_char_t,
}

type Zt = [Zahl; 1];

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

#[no_mangle]
#[no_mangle]
fn zbits(a: &Zt) -> size_t {
    // Implementation of zbits function
    unimplemented!()
}

#[no_mangle]
#[no_mangle]
fn zzero(a: &Zt) -> bool {
    // Implementation of zzero function
    unimplemented!()
}

#[repr(C)]
union Sigval {
    sival_int: i32,
    sival_ptr: *mut c_void,
}

#[repr(C)]
union SigActionU {
    __sa_handler: extern "C" fn(i32),
    __sa_sigaction: extern "C" fn(i32, *mut __SigInfo, *mut c_void),
}

#[no_mangle]
#[no_mangle]
fn zrsh_taint(a: &mut Zt, bits: size_t) {
    let mut i: size_t;
    let mut chars: size_t;
    let mut cbits: size_t;

    if bits == 0 {
        return;
    }

    if zzero(a) {
        return;
    }

    chars = bits >> 6;

    if chars >= a[0].used || zbits(a) <= bits {
        a[0].sign = 0;
        return;
    }

    let mut bits = bits & (64 - 1);
    cbits = 64 - bits;

    if chars > 0 {
        a[0].used -= chars;
        unsafe {
            a[0].chars = a[0].chars.offset(chars as isize);
        }
    }

    if bits > 0 {
        unsafe {
            a[0].chars[0] >>= bits as u32;
            for i in 1..a[0].used {
                a[0].chars[i - 1] |= a[0].chars[i] << cbits;
                a[0].chars[i] >>= bits as u32;
            }
            while a[0].chars[a[0].used - 1] == 0 {
                a[0].used -= 1;
            }
        }
    }
}
