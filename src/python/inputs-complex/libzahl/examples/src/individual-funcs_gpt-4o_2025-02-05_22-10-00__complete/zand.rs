#![allow(unaligned_references)]
use std::cmp;
use std::ptr;

type ZahlChar = u64;

#[derive(Clone)]
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

#[no_mangle]
#[no_mangle]
    fn realloc(&mut self, new_size: usize) {
        if self.alloced < new_size {
            self.chars.resize(new_size, 0);
            self.alloced = new_size;
        }
    }

#[no_mangle]
#[no_mangle]
    fn zzero(&self) -> bool {
        self.used == 0
    }

#[no_mangle]
#[no_mangle]
    fn zsignum(&self) -> i32 {
        self.sign
    }
}

#[no_mangle]
#[no_mangle]
fn zand(a: &mut Zahl, b: &Zahl, c: &Zahl) {
    if b.zzero() || c.zzero() {
        a.sign = 0;
        return;
    }

    a.used = cmp::min(b.used, c.used);

    if ptr::eq(a, b) {
        for i in 0..a.used {
            a.chars[i] = b.chars[i] & c.chars[i];
        }
    } else if ptr::eq(a, c) {
        for i in 0..a.used {
            a.chars[i] = b.chars[i] & c.chars[i];
        }
    } else {
        a.realloc(a.used);
        for i in 0..a.used {
            a.chars[i] = b.chars[i] & c.chars[i];
        }
    }

    while a.used > 0 && a.chars[a.used - 1] == 0 {
        a.used -= 1;
    }

    a.sign = if a.used > 0 {
        if b.zsignum() > 0 && c.zsignum() > 0 {
            1
        } else {
            -1
        }
    } else {
        0
    };
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    let mut a = Zahl::new();
    let b = Zahl::new();
    let c = Zahl::new();

    zand(&mut a, &b, &c);
}
