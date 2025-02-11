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

#[repr(u32)]
enum ZPrimality {
    NonPrime = 0,
    ProbablyPrime,
    Prime,
}

#[repr(u32)]
enum ZRandDev {
    FastRandom = 0,
    SecureRandom,
    DefaultRandom,
    FastestRandom,
    LibcRandRandom,
    LibcRandomRandom,
    LibcRand48Random,
}

#[repr(u32)]
enum ZRandDist {
    QuasiUniform = 0,
    Uniform,
    ModUniform,
}

#[repr(u32)]
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
fn zlsb(a: &ZT) -> SizeT {
    let mut i = 0;
    if zzero(a) {
        return 18446744073709551615;
    }
    while unsafe { *a[0].chars.add(i) } == 0 {
        i += 1;
    }
    i *= 8 * std::mem::size_of::<ZahlCharT>();
    i += unsafe { a[0].chars.add(i).read().trailing_zeros() as SizeT };
    i
}

#[inline]
#[no_mangle]
#[no_mangle]
fn zzero(a: &ZT) -> bool {
    // Dummy implementation, replace with actual logic
    false
}
