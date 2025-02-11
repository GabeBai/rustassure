#![allow(unaligned_references)]
use std::os::raw::{c_int, c_ulonglong};

type size_t = usize;
type zahl_char_t = c_ulonglong;

#[repr(C)]
#[repr(C, packed)]struct Zahl {
    sign: c_int,
    padding__: c_int,
    used: size_t,
    alloced: size_t,
    chars: *mut zahl_char_t,
}

extern "C" {
#[no_mangle]
#[no_mangle]
    fn libzahl_realloc(z: *mut Zahl, size: size_t);
#[no_mangle]
#[no_mangle]
    fn zzero(z: *mut Zahl) -> c_int;
#[no_mangle]
#[no_mangle]
    fn zsignum(z: *mut Zahl) -> c_int;
#[no_mangle]
#[no_mangle]
    fn zlsh(a: *mut Zahl, b: *mut Zahl, bits: size_t);
}

#[no_mangle]
#[no_mangle]
fn main() {
    let mut a: Zahl = Zahl {
        sign: 0,
        padding__: 0,
        used: 0,
        alloced: 0,
        chars: std::ptr::null_mut(),
    };

    let mut b: Zahl = Zahl {
        sign: 0,
        padding__: 0,
        used: 0,
        alloced: 0,
        chars: std::ptr::null_mut(),
    };

    let bits: size_t = 0; // Set your desired value for bits

    unsafe {
        zlsh(&mut a, &mut b, bits);
    }
}
