#![allow(unaligned_references)]
use std::ptr;

#[repr(C)]
#[repr(C, packed)]struct Zahl {
    sign: i32,
    padding__: i32,
    used: usize,
    alloced: usize,
    chars: *mut u64,
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

extern "C" {
#[no_mangle]
#[no_mangle]
    fn zmul_ll(a: *mut Zahl, b: *mut Zahl, c: *mut Zahl);
#[no_mangle]
#[no_mangle]
    fn zsignum(z: *const Zahl) -> i32;
}

unsafe fn zmul(a: &mut ZT, b: &mut ZT, c: &mut ZT) {
    let b_sign = (*b.as_ptr()).sign;
    (*b.as_mut_ptr()).sign *= b_sign;

    let c_sign = (*c.as_ptr()).sign;
    (*c.as_mut_ptr()).sign *= c_sign;

    zmul_ll(a.as_mut_ptr(), b.as_mut_ptr(), c.as_mut_ptr());

    (*c.as_mut_ptr()).sign = c_sign;
    (*b.as_mut_ptr()).sign = b_sign;

    (*a.as_mut_ptr()).sign = zsignum(b.as_ptr()) * zsignum(c.as_ptr());
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    let mut a: ZT = [Zahl { sign: 0, padding__: 0, used: 0, alloced: 0, chars: ptr::null_mut() }];
    let mut b: ZT = [Zahl { sign: 1, padding__: 0, used: 0, alloced: 0, chars: ptr::null_mut() }];
    let mut c: ZT = [Zahl { sign: 1, padding__: 0, used: 0, alloced: 0, chars: ptr::null_mut() }];

    unsafe {
        zmul(&mut a, &mut b, &mut c);
    }
}
