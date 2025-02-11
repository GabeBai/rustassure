#![allow(unaligned_references)]
use std::ptr;
use std::slice;

type SizeT = usize;
type ZahlCharT = u64;

#[derive(Debug, Clone)]
#[repr(C, packed)]struct Zahl {
    sign: i32,
    used: SizeT,
    alloced: SizeT,
    chars: Vec<ZahlCharT>,
}

impl Zahl {
#[no_mangle]
#[no_mangle]
    fn new() -> Self {
        Zahl {
            sign: 0,
            used: 0,
            alloced: 0,
            chars: Vec::new(),
        }
    }
}

#[no_mangle]
#[no_mangle]
fn libzahl_realloc(z: &mut Zahl, size: SizeT) {
    if z.alloced < size {
        z.chars.resize(size, 0);
        z.alloced = size;
    }
}

#[derive(Debug, Clone, Copy)]
enum ZPrimality {
    NonPrime = 0,
    ProbablyPrime,
    Prime,
}

#[derive(Debug, Clone, Copy)]
enum ZRandDev {
    FastRandom = 0,
    SecureRandom,
    DefaultRandom,
    FastestRandom,
    LibcRandRandom,
    LibcRandomRandom,
    LibcRand48Random,
}

#[derive(Debug, Clone, Copy)]
enum ZRandDist {
    QuasiUniform = 0,
    Uniform,
    ModUniform,
}

#[derive(Debug, Clone, Copy)]
enum ZError {
    ErrnoSet = 0,
    ZeroPowZero,
    ZeroDivZero,
    DivZero,
    Negative,
    InvalidRadix,
}

#[no_mangle]
#[no_mangle]
fn zset(a: &mut Zahl, b: &Zahl) {
    if b.sign == 0 {
        a.sign = 0;
    } else {
        a.sign = b.sign;
        a.used = b.used;
        if a.alloced < b.used {
            libzahl_realloc(a, b.used);
        }
        a.chars[..b.used].copy_from_slice(&b.chars[..b.used]);
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    let mut a = Zahl::new();
    let b = Zahl {
        sign: 1,
        used: 2,
        alloced: 2,
        chars: vec![1, 2],
    };

    zset(&mut a, &b);
    println!("{:?}", a);
}
