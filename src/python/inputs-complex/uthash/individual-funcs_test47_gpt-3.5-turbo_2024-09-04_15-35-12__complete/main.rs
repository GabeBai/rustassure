use std::alloc::{alloc, dealloc, Layout};
use std::ffi::c_void;
use std::mem::size_of;
use std::ptr;

struct UTString {
    d: *mut u8,
    n: usize,
    i: usize,
}

impl UTString {
    fn new() -> Self {
        Self {
            d: ptr::null_mut(),
            n: 0,
            i: 0,
        }
    }
}

unsafe fn utstring_printf(s: &mut UTString, fmt: &str, args: ...) {
    // Implementation of utstring_printf function
}

fn main() {
    let mut s = UTString::new();
    let mut t = UTString::new();
    let a = " text".as_bytes();

    s.d = unsafe { alloc(Layout::from_size_align(100, 1)) as *mut u8 };
    s.n = 100;

    t.d = unsafe { alloc(Layout::from_size_align(100, 1)) as *mut u8 };
    t.n = 100;

    utstring_printf(&mut s, "hello %s", "world");
    println!("{}", std::str::from_utf8(std::slice::from_raw_parts(s.d, s.i)).unwrap());

    // Continue with the rest of the code translation
    // Remember to free memory using `dealloc` when necessary
}
