#![allow(unaligned_references)]
type SizeT = usize;
type Uint64T = u64;
type ZahlCharT = Uint64T;

#[repr(C)]
#[repr(C, packed)]struct Zahl {
    sign: i32,
    padding__: i32,
    used: SizeT,
    alloced: SizeT,
    chars: *mut ZahlCharT,
}

type ZT = [Zahl; 1];

#[derive(Debug, PartialEq)]
enum ZPrimality {
    NonPrime = 0,
    ProbablyPrime,
    Prime,
}

#[derive(Debug, PartialEq)]
enum ZRandDev {
    FastRandom = 0,
    SecureRandom,
    DefaultRandom,
    FastestRandom,
    LibcRandRandom,
    LibcRandomRandom,
    LibcRand48Random,
}

#[derive(Debug, PartialEq)]
enum ZRandDist {
    QuasiUniform = 0,
    Uniform,
    ModUniform,
}

#[derive(Debug, PartialEq)]
enum ZError {
    ZErrorErrnoSet = 0,
    ZError0Pow0,
    ZError0Div0,
    ZErrorDiv0,
    ZErrorNegative,
    ZErrorInvalidRadix,
}

#[inline(always)]
#[no_mangle]
#[no_mangle]
fn zswap(a_: &mut ZT, b_: &mut ZT) {
    let a = a_ as *mut _ as *mut i64;
    let b = b_ as *mut _ as *mut i64;
    unsafe {
        let mut t;
        t = *a.offset(0);
        *a.offset(0) = *b.offset(0);
        *b.offset(0) = t;
        t = *b.offset(1);
        *b.offset(1) = *a.offset(1);
        *a.offset(1) = t;
        t = *a.offset(2);
        *a.offset(2) = *b.offset(2);
        *b.offset(2) = t;
        t = *b.offset(3);
        *b.offset(3) = *a.offset(3);
        *a.offset(3) = t;
    }
}
