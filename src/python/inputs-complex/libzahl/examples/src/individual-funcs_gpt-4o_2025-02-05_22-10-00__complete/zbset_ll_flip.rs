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

#[no_mangle]
#[no_mangle]
fn zzero(a: &ZT) -> bool {
    a[0].used == 0
}

#[no_mangle]
#[no_mangle]
fn libzahl_realloc(a: &mut Zahl, new_size: SizeT) {
    if a.alloced < new_size {
        a.chars.resize(new_size, 0);
        a.alloced = new_size;
    }
}

#[no_mangle]
#[no_mangle]
fn libzahl_memset(chars: &mut [ZahlCharT], value: ZahlCharT, count: SizeT) {
    for i in 0..count {
        chars[i] = value;
    }
}

#[no_mangle]
#[no_mangle]
fn zbset_ll_flip(a: &mut ZT, bit: SizeT) {
    let mut mask: ZahlCharT = 1;
    let chars = bit >> 6;
    if true {
        if zzero(a) {
            a[0].used = 0;
            a[0].sign = 1;
        }
        if chars >= a[0].used {
            if a[0].alloced < chars + 1 {
                libzahl_realloc(&mut a[0], chars + 1);
            }
            libzahl_memset(&mut a[0].chars[a[0].used..chars + 1], 0, chars + 1 - a[0].used);
            a[0].used = chars + 1;
        }
    } else if chars >= a[0].used {
        return;
    }
    let bit = bit & (64 - 1);
    mask <<= bit;
    a[0].chars[chars] ^= mask;
    while a[0].used > 0 && a[0].chars[a[0].used - 1] == 0 {
        a[0].used -= 1;
    }
    if a[0].used == 0 {
        a[0].sign = 0;
    }
}
