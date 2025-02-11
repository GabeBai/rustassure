#![allow(unaligned_references)]
type SizeT = usize;
type Uint64T = u64;
type ZahlCharT = Uint64T;

#[repr(C, packed)]struct Zahl {
    sign: i32,
    padding__: i32,
    used: SizeT,
    alloced: SizeT,
    chars: *mut ZahlCharT,
}

type ZT = [Zahl; 1];

#[allow(dead_code)]
enum ZPrimality {
    NonPrime = 0,
    ProbablyPrime,
    Prime,
}

#[allow(dead_code)]
enum ZRandDev {
    FastRandom = 0,
    SecureRandom,
    DefaultRandom,
    FastestRandom,
    LibcRandRandom,
    LibcRandomRandom,
    LibcRand48Random,
}

#[allow(dead_code)]
enum ZRandDist {
    QuasiUniform = 0,
    Uniform,
    ModUniform,
}

#[allow(dead_code)]
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
fn zset(a: &mut ZT, b: &ZT) {
    // Assume zset is defined elsewhere
}

#[inline(always)]
#[no_mangle]
#[no_mangle]
fn zabs(a: &mut ZT, b: &ZT) {
    if a as *const _ != b as *const _ {
        zset(a, b);
    }
    a[0].sign &= 1;
}
