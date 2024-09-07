extern crate libc;

use libc::{size_t, malloc, rand};

fn generate_random_string(dst: *mut *mut i8, len: size_t) -> i32 {
    static ALPHANUM: &str = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
    let mut i: size_t;
    let mut s: *mut i8;

    if dst.is_null() || len == 0 {
        return 22;
    }

    unsafe {
        if let Some(s) = malloc(len) as *mut i8 {
            for i in 0..len - 1 {
                *s.offset(i as isize) = ALPHANUM.chars().nth(rand() as usize % (ALPHANUM.len() - 1)).unwrap() as i8;
            }
            *s.offset((len - 1) as isize) = '\0' as i8;
            *dst = s;
            return 0;
        } else {
            return 12;
        }
    }
}
