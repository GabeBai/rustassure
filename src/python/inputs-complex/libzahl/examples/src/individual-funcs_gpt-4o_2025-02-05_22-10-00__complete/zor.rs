#![allow(unaligned_references)]
use std::cmp::min;
use std::ptr;

#[derive(Debug)]
#[repr(C, packed)]struct Zahl {
    sign: i32,
    used: usize,
    alloced: usize,
    chars: Vec<u64>,
}

impl PartialEq for Zahl {
#[no_mangle]
#[no_mangle]
    fn eq(&self, other: &Self) -> bool {
        self.sign == other.sign
            && self.used == other.used
            && self.alloced == other.alloced
            && self.chars == other.chars
    }
}

impl Zahl {
#[no_mangle]
#[no_mangle]
    fn new(alloced: usize) -> Self {
        Zahl {
            sign: 0,
            used: 0,
            alloced,
            chars: vec![0; alloced],
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
fn zzero(z: &Zahl) -> bool {
    z.used == 0
}

#[no_mangle]
#[no_mangle]
fn zsignum(z: &Zahl) -> i32 {
    z.sign
}

#[no_mangle]
#[no_mangle]
fn zor(a: &mut Zahl, b: &Zahl, c: &Zahl) {
    if zzero(b) {
        if a != c {
            zset(a, c);
        }
        return;
    } else if zzero(c) {
        if a != b {
            zset(a, b);
        }
        return;
    }

    let n = min(b.used, c.used);
    let m = b.used.max(c.used);

    a.realloc(m);

    if a == b {
        for i in 0..n {
            a.chars[i] = b.chars[i] | c.chars[i];
        }
        if a.used < c.used {
            a.chars[n..m].copy_from_slice(&c.chars[n..m]);
        }
    } else if a == c {
        for i in 0..n {
            a.chars[i] = b.chars[i] | c.chars[i];
        }
        if a.used < b.used {
            a.chars[n..m].copy_from_slice(&b.chars[n..m]);
        }
    } else if m == b.used {
        for i in 0..n {
            a.chars[i] = c.chars[i] | b.chars[i];
        }
        a.chars[n..m].copy_from_slice(&b.chars[n..m]);
    } else {
        for i in 0..n {
            a.chars[i] = b.chars[i] | c.chars[i];
        }
        a.chars[n..m].copy_from_slice(&c.chars[n..m]);
    }

    a.used = m;
    a.sign = if zsignum(b) + zsignum(c) == 2 { 1 } else { -1 };
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    let mut a = Zahl::new(10);
    let b = Zahl::new(10);
    let c = Zahl::new(10);

    zor(&mut a, &b, &c);
    println!("{:?}", a);
}
