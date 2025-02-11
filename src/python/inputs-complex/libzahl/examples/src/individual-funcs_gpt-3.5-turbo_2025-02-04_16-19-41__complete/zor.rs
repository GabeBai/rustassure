#![allow(unaligned_references)]
use std::os::raw::{c_int, c_void};

#[repr(C)]
#[repr(C, packed)]struct Zahl {
    sign: i32,
    padding__: i32,
    used: usize,
    alloced: usize,
    chars: *mut ZahlChar,
}

type ZahlChar = u64;

extern "C" {
#[no_mangle]
#[no_mangle]
    fn libzahl_realloc(z: *mut Zahl, size: usize);
}

#[no_mangle]
#[no_mangle]
fn zor(a: &mut Zahl, b: &Zahl, c: &Zahl) {
    let (n, m) = if b.used < c.used { (b.used, c.used) } else { (c.used, b.used) };

    if a.chars == b.chars {
        for i in 0..n {
            unsafe {
                (*a.chars.offset(i as isize)) = (*b.chars.offset(i as isize)) | (*c.chars.offset(i as isize));
            }
        }
        if a.used < c.used {
            unsafe {
                zmemcpy_range(a.chars, c.chars, n, m);
            }
        }
    } else if a.chars == c.chars {
        for i in 0..n {
            unsafe {
                (*a.chars.offset(i as isize)) = (*b.chars.offset(i as isize)) | (*c.chars.offset(i as isize));
            }
        }
        if a.used < b.used {
            unsafe {
                zmemcpy_range(a.chars, b.chars, n, m);
            }
        }
    } else if m == b.used {
        for i in 0..n {
            unsafe {
                (*a.chars.offset(i as isize)) = (*b.chars.offset(i as isize)) | (*c.chars.offset(i as isize));
            }
        }
        zmemcpy_range(a.chars, b.chars, n, m);
    } else {
        for i in 0..n {
            unsafe {
                (*a.chars.offset(i as isize)) = (*b.chars.offset(i as isize)) | (*c.chars.offset(i as isize));
            }
        }
        zmemcpy_range(a.chars, c.chars, n, m);
    }

    a.used = m;
    a.sign = if zsignum(b) + zsignum(c) == 2 { 1 } else { -1 };
}

#[no_mangle]
#[no_mangle]
fn zsignum(z: &Zahl) -> i32 {
    if z.sign > 0 {
        1
    } else if z.sign < 0 {
        -1
    } else {
        0
    }
}

#[no_mangle]
#[no_mangle]
fn zzero(z: &Zahl) -> bool {
    z.used == 0
}

#[no_mangle]
#[no_mangle]
fn zset(a: &mut Zahl, b: &Zahl) {
    // Implementation of zset function
}

#[no_mangle]
#[no_mangle]
fn zmemcpy_range(a: *mut ZahlChar, b: *const ZahlChar, n: usize, m: usize) {
    // Implementation of zmemcpy_range function
}
