#![allow(unaligned_references)]
extern {
#[no_mangle]
#[no_mangle]
    fn libzahl_zsub_unsigned(a: *mut z_t, b: *mut z_t, c: *mut z_t);
}

#[repr(C)]
pub struct z_t {
    sign: i32,
    padding__: i32,
    used: usize,
    alloced: usize,
    chars: *mut zahl_char_t,
}

pub type zahl_char_t = u64;

#[no_mangle]
#[no_mangle]
pub fn zsub_unsigned(a: &mut z_t, b: &mut z_t, c: &mut z_t) {
    unsafe {
        libzahl_zsub_unsigned(a, b, c);
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    let mut a = z_t {
        sign: 0,
        padding__: 0,
        used: 0,
        alloced: 0,
        chars: std::ptr::null_mut(),
    };

    let mut b = z_t {
        sign: 0,
        padding__: 0,
        used: 0,
        alloced: 0,
        chars: std::ptr::null_mut(),
    };

    let mut c = z_t {
        sign: 0,
        padding__: 0,
        used: 0,
        alloced: 0,
        chars: std::ptr::null_mut(),
    };

    zsub_unsigned(&mut a, &mut b, &mut c);
}
