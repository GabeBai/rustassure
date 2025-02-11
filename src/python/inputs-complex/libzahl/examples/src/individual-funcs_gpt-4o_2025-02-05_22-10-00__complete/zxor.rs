#![allow(unaligned_references)]
use std::cmp::min;
use std::ptr;

type ZahlCharT = u64;

#[derive(Debug, Clone)]
#[repr(C, packed)]struct Zahl {
    sign: i32,
    used: usize,
    alloced: usize,
    chars: Vec<ZahlCharT>,
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
fn zxor(a: &mut Zahl, b: &Zahl, c: &Zahl) {
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

    let bn = b.used;
    let cn = c.used;
    let n = min(bn, cn);
    let m = bn.max(cn);

    a.realloc(m);

    if a == b {
        for i in 0..n {
            a.chars[i] = b.chars[i] ^ c.chars[i];
        }
        if a.used < cn {
            a.chars[n..m].copy_from_slice(&c.chars[n..m]);
        }
    } else if a == c {
        for i in 0..n {
            a.chars[i] = b.chars[i] ^ c.chars[i];
        }
        if a.used < bn {
            a.chars[n..m].copy_from_slice(&b.chars[n..m]);
        }
    } else if m == bn {
        for i in 0..n {
            a.chars[i] = c.chars[i] ^ b.chars[i];
        }
        a.chars[n..m].copy_from_slice(&b.chars[n..m]);
    } else {
        for i in 0..n {
            a.chars[i] = b.chars[i] ^ c.chars[i];
        }
        a.chars[n..m].copy_from_slice(&c.chars[n..m]);
    }

    a.used = m;
    while a.used > 0 && a.chars[a.used - 1] == 0 {
        a.used -= 1;
    }
    a.sign = if a.used > 0 {
        1 - 2 * ((zsignum(b) ^ zsignum(c)) < 0) as i32
    } else {
        0
    };
}
