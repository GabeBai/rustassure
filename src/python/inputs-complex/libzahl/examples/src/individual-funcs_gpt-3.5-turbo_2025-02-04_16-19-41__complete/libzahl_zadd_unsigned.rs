#![allow(unaligned_references)]
use std::os::raw::{c_ulonglong, c_void};

type ZahlCharT = c_ulonglong;

#[repr(C)]
#[repr(C, packed)]struct Zahl {
    sign: i32,
    padding__: i32,
    used: usize,
    alloced: usize,
    chars: *mut ZahlCharT,
}

extern "C" {
#[no_mangle]
#[no_mangle]
    fn libzahl_realloc(z: *mut Zahl, size: usize);
#[no_mangle]
#[no_mangle]
    fn zabs(dest: *mut Zahl, src: *mut Zahl);
#[no_mangle]
#[no_mangle]
    fn zzero(z: *mut Zahl) -> i32;
#[no_mangle]
#[no_mangle]
    fn libzahl_memset(ptr: *mut ZahlCharT, value: i32, num: usize);
#[no_mangle]
#[no_mangle]
    fn libzahl_memcpy(dest: *mut ZahlCharT, src: *mut ZahlCharT, num: usize);
#[no_mangle]
#[no_mangle]
    fn zadd_impl_3(a: *mut Zahl, b: *mut Zahl, n: usize);
#[no_mangle]
#[no_mangle]
    fn zadd_impl_4(a: *mut Zahl, b: *mut Zahl, c: *mut Zahl, n: usize);
}

#[repr(C)]
enum ZPrimality {
    NonPrime = 0,
    ProbablyPrime,
    Prime,
}

#[repr(C)]
enum ZRandDev {
    FastRandom = 0,
    SecureRandom,
    DefaultRandom,
    FastestRandom,
    LibcRandRandom,
    LibcRandomRandom,
    LibcRand48Random,
}

#[repr(C)]
enum ZRandDist {
    QuasiUniform = 0,
    Uniform,
    ModUniform,
}

#[repr(C)]
enum ZError {
    ZErrorErrnoSet = 0,
    ZError0Pow0,
    ZError0Div0,
    ZErrorDiv0,
    ZErrorNegative,
    ZErrorInvalidRadix,
}

#[repr(C)]
union Sigval {
    sival_int: i32,
    sival_ptr: *mut c_void,
}

#[repr(C)]
union SigActionU {
    __sa_handler: extern "C" fn(i32),
    __sa_sigaction: extern "C" fn(i32, *mut c_void, *mut c_void),
}

#[no_mangle]
#[no_mangle]
fn libzahl_zadd_unsigned(a: &mut Zahl, b: &mut Zahl, c: &mut Zahl) {
    let size: usize;
    let n: usize;

    if zzero(b) != 0 {
        unsafe {
            zabs(a, c);
        }
        return;
    } else if zzero(c) != 0 {
        unsafe {
            zabs(a, b);
        }
        return;
    }

    size = if b.used > c.used { b.used } else { c.used };
    n = b.used + c.used - size;

    unsafe {
        if a.alloced < size + 1 {
            libzahl_realloc(a, size + 1);
        }

        (*a).chars.add(size).write(0);

        if a as *const _ == b as *const _ {
            if a.used < c.used {
                n = c.used;
                libzahl_memset(a.chars.add(a.used), 0, n - a.used);
            }
            zadd_impl_3(a, c, n);
        } else if a as *const _ == c as *const _ {
            if a.used < b.used {
                n = b.used;
                libzahl_memset(a.chars.add(a.used), 0, n - a.used);
            }
            zadd_impl_3(a, b, n);
        } else if b.used > c.used {
            libzahl_memcpy(a.chars.add(n), b.chars.add(n), size - n);
            a.used = size;
            zadd_impl_4(a, b, c, n);
        } else {
            libzahl_memcpy(a.chars.add(n), c.chars.add(n), size - n);
            a.used = size;
            zadd_impl_4(a, b, c, n);
        }

        (*a).sign = 1;
    }
}
