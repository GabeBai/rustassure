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
fn zbits(a: &ZT) -> SizeT {
    // Dummy implementation
    0
}

#[inline]
#[no_mangle]
#[no_mangle]
fn zzero(a: &ZT) -> i32 {
    // Dummy implementation
    0
}

#[inline]
unsafe fn zrsh_taint(a: &mut ZT, mut bits: SizeT) {
    let mut i: SizeT;
    let mut chars: SizeT;
    let mut cbits: SizeT;
    if bits == 0 {
        return;
    }
    if zzero(a) != 0 {
        return;
    }
    chars = bits >> 6;
    if chars >= a[0].used || zbits(a) <= bits {
        a[0].sign = 0;
        return;
    }
    bits &= 64 - 1;
    cbits = 64 - bits;
    if chars != 0 {
        a[0].used -= chars;
        a[0].chars = a[0].chars.add(chars);
    }
    if bits != 0 {
        *a[0].chars = *a[0].chars >> bits;
        for i in 1..a[0].used {
            *a[0].chars.add(i - 1) |= *a[0].chars.add(i) << cbits;
            *a[0].chars.add(i) >>= bits;
        }
        while a[0].chars.add(a[0].used - 1).read() == 0 {
            a[0].used -= 1;
        }
    }
}
