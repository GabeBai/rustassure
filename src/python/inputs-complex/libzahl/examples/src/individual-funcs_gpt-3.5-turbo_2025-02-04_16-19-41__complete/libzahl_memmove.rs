#![allow(unaligned_references)]
use std::ptr;

type ZahlCharT = u64;

#[no_mangle]
#[no_mangle]
fn libzahl_memmove(d: *mut ZahlCharT, s: *const ZahlCharT, n: usize) {
    if d < s as *mut ZahlCharT {
        unsafe {
            libzahl_memmovef(d, s, n);
        }
    } else {
        unsafe {
            libzahl_memmoveb(d, s, n);
        }
    }
}

unsafe fn libzahl_memmovef(d: *mut ZahlCharT, s: *const ZahlCharT, n: usize) {
    ptr::copy_nonoverlapping(s, d, n);
}

unsafe fn libzahl_memmoveb(d: *mut ZahlCharT, s: *const ZahlCharT, n: usize) {
    let mut d = d.offset(n as isize);
    let mut s = s.offset(n as isize);
    while n > 0 {
        d = d.offset(-1);
        s = s.offset(-1);
        *d = *s;
        n -= 1;
    }
}
