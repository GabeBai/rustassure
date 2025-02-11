#![allow(unaligned_references)]
#[repr(C)]
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

unsafe fn zodd_nonzero(a: *mut Zahl) -> bool {
    ((*a).chars.offset(0).read() & 1) != 0
}
