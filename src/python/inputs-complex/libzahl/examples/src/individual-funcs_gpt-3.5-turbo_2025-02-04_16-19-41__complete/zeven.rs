#![allow(unaligned_references)]
use std::num::Wrapping;

#[repr(C)]
#[derive(Debug)]
#[repr(C, packed)]struct Zahl {
    sign: i32,
    padding__: i32,
    used: usize,
    alloced: usize,
    chars: *mut u64,
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
fn zeven(a: &Zt) -> bool {
    a[0].sign == 0 || !Wrapping(unsafe { *a[0].chars.offset(0) }).0 & 1 != 0
}

#[no_mangle]
#[no_mangle]
fn main() {
    let mut chars: [u64; 1] = [10];
    let zahl = Zahl {
        sign: 0,
        padding__: 0,
        used: 1,
        alloced: 1,
        chars: chars.as_mut_ptr(),
    };
    let zt: Zt = [zahl];

    if zeven(&zt) {
        println!("Even");
    } else {
        println!("Not even");
    }
}
