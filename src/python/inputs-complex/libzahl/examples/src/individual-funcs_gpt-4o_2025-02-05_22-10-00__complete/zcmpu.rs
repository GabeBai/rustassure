#![allow(unaligned_references)]
type SizeT = usize;
type Uint64T = u64;
type ZahlCharT = Uint64T;

#[repr(C, packed)]struct Zahl {
    sign: i32,
    padding__: i32,
    used: SizeT,
    alloced: SizeT,
    chars: Vec<ZahlCharT>,
}

type ZT = [Zahl; 1];

#[derive(PartialEq)]
enum ZPrimality {
    NonPrime = 0,
    ProbablyPrime,
    Prime,
}

#[derive(PartialEq)]
enum ZRandDev {
    FastRandom = 0,
    SecureRandom,
    DefaultRandom,
    FastestRandom,
    LibcRandRandom,
    LibcRandomRandom,
    LibcRand48Random,
}

#[derive(PartialEq)]
enum ZRandDist {
    QuasiUniform = 0,
    Uniform,
    ModUniform,
}

#[derive(PartialEq)]
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
fn zsignum(a: &ZT) -> i32 {
    a[0].sign
}

#[no_mangle]
#[no_mangle]
fn zcmpu(a: &mut ZT, b: Uint64T) -> i32 {
    if b == 0 {
        return zsignum(a);
    }
    if zsignum(a) <= 0 {
        return -1;
    }
    while a[0].chars[a[0].used - 1] == 0 {
        a[0].used -= 1;
    }
    if a[0].used > 1 {
        return 1;
    }
    if a[0].chars[0] < b {
        -1
    } else if a[0].chars[0] > b {
        1
    } else {
        0
    }
}
