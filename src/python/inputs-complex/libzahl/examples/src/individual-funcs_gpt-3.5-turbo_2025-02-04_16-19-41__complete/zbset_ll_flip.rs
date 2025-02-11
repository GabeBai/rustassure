#![allow(unaligned_references)]
use std::os::raw::{c_int, c_void};

#[repr(C)]
#[repr(C, packed)]struct Zahl {
    sign: c_int,
    padding__: c_int,
    used: usize,
    alloced: usize,
    chars: *mut zahl_char_t,
}

type zahl_char_t = u64;

extern "C" {
#[no_mangle]
#[no_mangle]
    fn libzahl_realloc(z: *mut Zahl, size: usize);
}

#[repr(C)]
#[repr(C, packed)]struct ZT([Zahl; 1]);

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
    sival_ptr: *mut c_void,
}

#[repr(C)]
union SigActionU {
    __sa_handler: extern "C" fn(c_int),
    __sa_sigaction: extern "C" fn(c_int, *mut __siginfo, *mut c_void),
}

#[no_mangle]
#[no_mangle]
fn zzero(z: ZT) -> i32 {
    // Implementation of zzero function
    0
}

#[no_mangle]
#[no_mangle]
fn zbset_ll_flip(a: *mut Zahl, bit: usize) {
    let mask: zahl_char_t = 1;
    let chars = bit >> 6;

    if 1 != 0 {
        if zzero(ZT([*a])) != 0 {
            unsafe {
                (*a).used = 0;
                (*a).sign = 1;
            }
        }

        if chars >= unsafe { (*a).used } {
            while chars + 1 > unsafe { (*a).alloced } {
                unsafe {
                    libzahl_realloc(a, chars + 1);
                }
            }

            unsafe {
                for i in (*a).used..chars + 1 {
                    *((*a).chars.offset(i as isize)) = 0;
                }
                (*a).used = chars + 1;
            }
        }
    } else if chars >= unsafe { (*a).used } {
        return;
    }

    let bit = bit & (64 - 1);
    let mask = mask << bit;

    unsafe {
        *((*a).chars.offset(chars as isize)) ^= mask;

        while (*a).used > 0 && *((*a).chars.offset((*a).used - 1)) == 0 {
            (*a).used -= 1;
        }

        if (*a).used == 0 {
            (*a).sign = 0;
        }
    }
}
