#![allow(unaligned_references)]
use std::cmp::Ordering;
use std::ptr;

type ZahlChar = u64;

#[derive(Debug, Clone)]
#[repr(C, packed)]struct Zahl {
    sign: i32,
    used: usize,
    alloced: usize,
    chars: Vec<ZahlChar>,
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
fn zset(a: &mut Zahl, b: &Zahl) {
    a.sign = b.sign;
    a.used = b.used;
    a.alloced = b.alloced;
    a.chars = b.chars.clone();
}

#[no_mangle]
#[no_mangle]
fn zzero(b: &Zahl) -> bool {
    b.used == 0 || (b.used == 1 && b.chars[0] == 0)
}

#[no_mangle]
#[no_mangle]
fn zbits(b: &Zahl) -> usize {
    if zzero(b) {
        return 0;
    }
    let last_char = b.chars[b.used - 1];
    64 * (b.used - 1) + 64 - last_char.leading_zeros() as usize
}

#[no_mangle]
#[no_mangle]
fn zsignum(b: &Zahl) -> i32 {
    if zzero(b) {
        0
    } else {
        b.sign
    }
}

#[no_mangle]
#[no_mangle]
fn libzahl_realloc(a: &mut Zahl, new_size: usize) {
    if a.alloced < new_size {
        a.chars.resize(new_size, 0);
        a.alloced = new_size;
    }
}

#[no_mangle]
#[no_mangle]
fn zrsh(a: &mut Zahl, b: &Zahl, bits: usize) {
    if bits == 0 {
        zset(a, b);
        return;
    }

    let chars = bits >> 6;
    if zzero(b) || chars >= b.used || zbits(b) <= bits {
        a.sign = 0;
        return;
    }

    let bits = bits & (64 - 1);
    let cbits = 64 - bits;

    if chars > 0 && a as *const _ == b as *const _ {
        a.used -= chars;
        a.chars.drain(0..chars);
    } else if a as *const _ != b as *const _ {
        a.used = b.used - chars;
        libzahl_realloc(a, a.used);
        a.chars.copy_from_slice(&b.chars[chars..b.used]);
    }

    if bits > 0 {
        a.chars[0] >>= bits;
        for i in 1..a.used {
            a.chars[i - 1] |= a.chars[i] << cbits;
            a.chars[i] >>= bits;
        }
        while a.used > 0 && a.chars[a.used - 1] == 0 {
            a.used -= 1;
        }
    }

    a.sign = zsignum(b);
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    let mut a = Zahl::new();
    let b = Zahl::new();
    zrsh(&mut a, &b, 10);
    println!("{:?}", a);
}
