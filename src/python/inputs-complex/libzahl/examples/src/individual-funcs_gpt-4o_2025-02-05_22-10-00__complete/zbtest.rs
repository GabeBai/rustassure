#![allow(unaligned_references)]
type SizeT = usize;
type Uint64T = u64;
type ZahlCharT = Uint64T;

#[repr(C, packed)]struct Zahl {
    sign: i32,
    padding__: i32,
    used: SizeT,
    alloced: SizeT,
    chars: *const ZahlCharT,
}

type ZT = [Zahl; 1];

#[repr(i32)]
enum ZPrimality {
    NonPrime = 0,
    ProbablyPrime,
    Prime,
}

#[repr(i32)]
enum ZRandDev {
    FastRandom = 0,
    SecureRandom,
    DefaultRandom,
    FastestRandom,
    LibcRandRandom,
    LibcRandomRandom,
    LibcRand48Random,
}

#[repr(i32)]
enum ZRandDist {
    QuasiUniform = 0,
    Uniform,
    ModUniform,
}

#[repr(i32)]
enum ZError {
    ZErrorErrnoSet = 0,
    ZError0Pow0,
    ZError0Div0,
    ZErrorDiv0,
    ZErrorNegative,
    ZErrorInvalidRadix,
}

#[inline]
#[no_mangle]
#[no_mangle]
fn zbtest(a: &ZT, bit: SizeT) -> i32 {
    let chars;
    if zzero(a) != 0 {
        return 0;
    }
    chars = bit >> 6;
    if chars >= a[0].used {
        return 0;
    }
    let bit = bit & (64 - 1);
    ((unsafe { *a[0].chars.add(chars) } >> bit) & 1) as i32
}

#[inline]
#[no_mangle]
#[no_mangle]
fn zzero(a: &ZT) -> i32 {
    // Dummy implementation, as the actual function is not provided
    0
}
