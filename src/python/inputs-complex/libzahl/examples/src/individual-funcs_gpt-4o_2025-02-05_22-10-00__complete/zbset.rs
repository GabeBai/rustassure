#![allow(unaligned_references)]
use std::cmp::PartialEq;

type ZahlCharT = u64;

#[derive(Debug, Clone)]
#[repr(C, packed)]struct Zahl {
    sign: i32,
    used: usize,
    alloced: usize,
    chars: Vec<ZahlCharT>,
}

impl Zahl {
#[no_mangle]
#[no_mangle]
    fn is_zero(&self) -> bool {
        self.used == 0
    }

#[no_mangle]
#[no_mangle]
    fn trim(&mut self) {
        while self.used > 0 && self.chars[self.used - 1] == 0 {
            self.used -= 1;
        }
        if self.used == 0 {
            self.sign = 0;
        }
    }
}

impl PartialEq for Zahl {
#[no_mangle]
#[no_mangle]
    fn eq(&self, other: &Self) -> bool {
        self.sign == other.sign && self.used == other.used && self.chars == other.chars
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
fn zbset_ll_set(a: &mut Zahl, bit: usize) {
    // Implementation for setting a bit
}

#[no_mangle]
#[no_mangle]
fn zbset_ll_clear(a: &mut Zahl, bit: usize) {
    // Implementation for clearing a bit
}

#[no_mangle]
#[no_mangle]
fn zbset_ll_flip(a: &mut Zahl, bit: usize) {
    // Implementation for flipping a bit
}

#[no_mangle]
#[no_mangle]
fn zbset(a: &mut Zahl, b: &Zahl, bit: usize, action: i32) {
    if a != b {
        zset(a, b);
    }

    if a.is_zero() || (bit >> 6) >= a.used {
        if action == 0 {
            return;
        }
        fallback(a, bit, action);
        return;
    }

    let mask: ZahlCharT = 1 << (bit & (64 - 1));
    if action > 0 {
        a.chars[bit >> 6] |= mask;
    } else if action < 0 {
        a.chars[bit >> 6] ^= mask;
    } else {
        a.chars[bit >> 6] &= !mask;
    }

    a.trim();
}

#[no_mangle]
#[no_mangle]
fn fallback(a: &mut Zahl, bit: usize, action: i32) {
    if action > 0 {
        zbset_ll_set(a, bit);
    } else if action < 0 {
        zbset_ll_flip(a, bit);
    } else {
        zbset_ll_clear(a, bit);
    }
}
