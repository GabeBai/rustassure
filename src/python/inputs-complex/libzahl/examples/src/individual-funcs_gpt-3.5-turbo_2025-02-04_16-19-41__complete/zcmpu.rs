#![allow(unaligned_references)]
#[repr(C)]
#[repr(C, packed)]struct Zahl {
    sign: i32,
    padding__: i32,
    used: usize,
    alloced: usize,
    chars: *mut u64,
}

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
fn zsignum(a: &Zahl) -> i32 {
    if a.sign > 0 {
        1
    } else if a.sign < 0 {
        -1
    } else {
        0
    }
}

#[no_mangle]
#[no_mangle]
fn zcmpu(a: &mut Zahl, b: u64) -> i32 {
    if b == 0 {
        return zsignum(a);
    }
    if zsignum(a) <= 0 {
        return -1;
    }
    while unsafe { (*a.chars.offset(a.used as isize - 1)).as_ref() }.unwrap().is_zero() {
        a.used -= 1;
    }
    if a.used > 1 {
        return 1;
    }
    if a.chars[0] < b {
        -1
    } else if a.chars[0] > b {
        1
    } else {
        0
    }
}
