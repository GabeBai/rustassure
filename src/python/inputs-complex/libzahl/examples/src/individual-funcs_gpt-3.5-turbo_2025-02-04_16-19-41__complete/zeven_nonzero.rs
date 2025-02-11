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

enum Zprimality {
    Nonprime = 0,
    ProbablyPrime,
    Prime,
}

enum Zranddev {
    FastRandom = 0,
    SecureRandom,
    DefaultRandom,
    FastestRandom,
    LibcRandRandom,
    LibcRandomRandom,
    LibcRand48Random,
}

enum Zranddist {
    Quasiuniform = 0,
    Uniform,
    Moduniform,
}

enum Zerror {
    ZerrorErrnoSet = 0,
    Zerror0Pow0,
    Zerror0Div0,
    ZerrorDiv0,
    ZerrorNegative,
    ZerrorInvalidRadix,
}

#[no_mangle]
#[no_mangle]
fn zeven_nonzero(a: &Zt) -> bool {
    unsafe {
        let chars = (*a)[0].chars;
        let chars_slice = std::slice::from_raw_parts(chars, (*a)[0].used);
        !chars_slice.is_empty() && (chars_slice[0] & 1 != 0)
    }
}
