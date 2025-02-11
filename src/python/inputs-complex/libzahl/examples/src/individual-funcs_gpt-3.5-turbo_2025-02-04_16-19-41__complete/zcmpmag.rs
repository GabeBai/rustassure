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
    NonPrime = 0,
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
    QuasiUniform = 0,
    Uniform,
    ModUniform,
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
fn zzero(a: &Zt) -> bool {
    a[0].used == 0
}

#[no_mangle]
#[no_mangle]
fn zcmpmag(a: &mut Zt, b: &mut Zt) -> i32 {
    let mut i = a[0].used - 1;
    let mut j = b[0].used - 1;

    if zzero(a) {
        return -(!zzero(b) as i32);
    }
    if zzero(b) {
        return 1;
    }

    while i > j {
        if a[0].chars[i] != 0 {
            return 1;
        }
        a[0].used -= 1;
        i -= 1;
    }

    while j > i {
        if b[0].chars[j] != 0 {
            return -1;
        }
        b[0].used -= 1;
        j -= 1;
    }

    while i > 0 && a[0].chars[i] == b[0].chars[i] {
        i -= 1;
    }

    if a[0].chars[i] < b[0].chars[i] {
        return -1;
    } else if a[0].chars[i] > b[0].chars[i] {
        return 1;
    } else {
        return 0;
    }
}
