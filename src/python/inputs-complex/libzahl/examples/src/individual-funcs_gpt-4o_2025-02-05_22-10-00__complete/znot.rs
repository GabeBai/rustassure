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
fn znot(a: &mut ZT, b: &ZT) {
    let mut bits;
    if zzero(b) {
        a[0].sign = 0;
        return;
    }
    bits = zbits(b);
    a[0].used = b[0].used;
    a[0].sign = -zsignum(b);
    {
        let a__ = &mut a[0].chars;
        let b__ = &b[0].chars;
        let n__ = a[0].used;
        for i__ in (0..n__).step_by(4) {
            a__[i__ + 0] = !b__[i__ + 0];
            a__[i__ + 1] = !b__[i__ + 1];
            a__[i__ + 2] = !b__[i__ + 2];
            a__[i__ + 3] = !b__[i__ + 3];
        }
    }
    bits &= 64 - 1;
    if bits != 0 {
        a[0].chars[a[0].used - 1] &= ((1 as ZahlCharT) << bits) - 1;
    }
    while a[0].used != 0 && a[0].chars[a[0].used - 1] == 0 {
        a[0].used -= 1;
    }
    if a[0].used == 0 {
        a[0].sign = 0;
    }
}

#[no_mangle]
#[no_mangle]
fn zbits(b: &ZT) -> SizeT {
    // Dummy implementation for translation purposes
    0
}

#[no_mangle]
#[no_mangle]
fn zzero(b: &ZT) -> bool {
    // Dummy implementation for translation purposes
    false
}

#[no_mangle]
#[no_mangle]
fn zsignum(b: &ZT) -> i32 {
    // Dummy implementation for translation purposes
    0
}
