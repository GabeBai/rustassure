#![allow(unaligned_references)]
use std::os::raw::{c_ulong, c_ulonglong};

type ZahlCharT = c_ulonglong;

#[repr(C, packed)]struct Zahl {
    sign: i32,
    padding__: i32,
    used: c_ulong,
    alloced: c_ulong,
    chars: *mut ZahlCharT,
}

#[no_mangle]
#[no_mangle]
fn libzahl_realloc(z: &mut Zahl, size: c_ulong) {
    // Implementation of libzahl_realloc
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
fn zset(a: &mut Zt, b: &Zt) {
    // Implementation of zset
}

#[no_mangle]
#[no_mangle]
fn zzero(a: &Zt) -> bool {
    // Implementation of zzero
    false
}

#[no_mangle]
#[no_mangle]
fn zsignum(a: &Zt) -> i32 {
    // Implementation of zsignum
    0
}

#[no_mangle]
#[no_mangle]
fn zmemcpy_range(dest: *mut ZahlCharT, src: *const ZahlCharT, n: c_ulong, m: c_ulong) {
    // Implementation of zmemcpy_range
}

#[no_mangle]
#[no_mangle]
fn zxor(a: &mut Zt, b: &Zt, c: &Zt) {
    let n: c_ulong;
    let m: c_ulong;
    let bn: c_ulong;
    let cn: c_ulong;
    let bc: *const ZahlCharT;
    let cc: *const ZahlCharT;

    if zzero(b) {
        if *a != *c {
            zset(a, c);
        }
        return;
    } else if zzero(c) {
        if *a != *b {
            zset(a, b);
        }
        return;
    }

    bn = b[0].used;
    bc = b[0].chars;
    cn = c[0].used;
    cc = c[0].chars;

    n = if bn < cn { bn } else { cn };
    m = if bn > cn { bn } else { cn };

    if a[0].alloced < m {
        libzahl_realloc(&mut a[0], m);
    }

    if a as *const _ == b as *const _ {
        let a_chars = a[0].chars;
        let b_chars = a[0].chars;
        let c_chars = cc;

        for i in 0..n {
            a_chars[i as usize] = b_chars[i as usize] ^ c_chars[i as usize];
        }

        if a[0].used < cn {
            zmemcpy_range(a[0].chars, cc, n, m);
        }
    } else if a as *const _ == c as *const _ {
        let a_chars = a[0].chars;
        let b_chars = a[0].chars;
        let c_chars = bc;

        for i in 0..n {
            a_chars[i as usize] = b_chars[i as usize] ^ c_chars[i as usize];
        }

        if a[0].used < bn {
            zmemcpy_range(a[0].chars, bc, n, m);
        }
    } else if m == bn {
        let a_chars = a[0].chars;
        let b_chars = c[0].chars;
        let c_chars = b[0].chars;

        for i in (0..n).step_by(4) {
            a_chars[i as usize + 0] = b_chars[i as usize + 0] ^ c_chars[i as usize + 0];
            a_chars[i as usize + 1] = b_chars[i as usize + 1] ^ c_chars[i as usize + 1];
            a_chars[i as usize + 2] = b_chars[i as usize + 2] ^ c_chars[i as usize + 2];
            a_chars[i as usize + 3] = b_chars[i as usize + 3] ^ c_chars[i as usize + 3];
        }

        zmemcpy_range(a[0].chars, b[0].chars, n, m);
    } else {
        let a_chars = a[0].chars;
        let b_chars = b[0].chars;
        let c_chars = c[0].chars;

        for i in (0..n).step_by(4) {
            a_chars[i as usize + 0] = b_chars[i as usize + 0] ^ c_chars[i as usize + 0];
            a_chars[i as usize + 1] = b_chars[i as usize + 1] ^ c_chars[i as usize + 1];
            a_chars[i as usize + 2] = b_chars[i as usize + 2] ^ c_chars[i as usize + 2];
            a_chars[i as usize + 3] = b_chars[i as usize + 3] ^ c_chars[i as usize + 3];
        }

        zmemcpy_range(a[0].chars, c[0].chars, n, m);
    }

    a[0].used = m;
    while a[0].used > 0 && a[0].chars[(a[0].used - 1) as usize] == 0 {
        a[0].used -= 1;
    }

    a[0].sign = if a[0].used > 0 {
        1 - 2 * ((zsignum(b) ^ zsignum(c)) < 0)
    } else {
        0
    };
}
