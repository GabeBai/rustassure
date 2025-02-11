#![allow(unaligned_references)]
use std::os::raw::{c_int, c_void};

type size_t = usize;
type zahl_char_t = u64;

#[repr(C, packed)]struct Zahl {
    sign: c_int,
    padding__: c_int,
    used: size_t,
    alloced: size_t,
    chars: *mut zahl_char_t,
}

impl Zahl {
#[no_mangle]
#[no_mangle]
    fn zzero(&self) -> bool {
        self.used == 0
    }

#[no_mangle]
#[no_mangle]
    fn zsignum(&self) -> c_int {
        if self.used > 0 {
            if self.sign > 0 {
                1
            } else {
                -1
            }
        } else {
            0
        }
    }
}

#[no_mangle]
#[no_mangle]
fn libzahl_realloc(z: &mut Zahl, size: size_t) {
    // Implementation of libzahl_realloc
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
    Quasiuniform = 0,
    Uniform,
    Moduniform,
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
fn zand(a: &mut Zahl, b: &Zahl, c: &Zahl) {
    if b.zzero() {
        a.sign = 0;
        return;
    } else if c.zzero() {
        a.sign = 0;
        return;
    }

    a.used = if b.used < c.used { b.used } else { c.used };

    unsafe {
        let a_chars = a.chars;
        let b_chars = b.chars;
        let c_chars = c.chars;

        for i in 0..a.used {
            a_chars.add(i).write(b_chars.add(i).read() & c_chars.add(i).read());
        }
    }

    for i in (0..a.used).rev() {
        if a.chars.add(i).read() != 0 {
            a.used = i + 1;
            break;
        }
    }

    a.sign = if a.used > 0 {
        (b.zsignum() > 0 && c.zsignum() > 0) as c_int * 2 - 1
    } else {
        0
    };
}
