#![allow(unaligned_references)]
use std::alloc::{alloc, dealloc, realloc, Layout};
use std::ptr;
use std::mem;

type ZahlCharT = u64;

#[repr(C, packed)]struct Zahl {
    sign: i32,
    padding__: i32,
    used: usize,
    alloced: usize,
    chars: *mut ZahlCharT,
}

impl Zahl {
#[no_mangle]
#[no_mangle]
    fn new() -> Self {
        Zahl {
            sign: 0,
            padding__: 0,
            used: 0,
            alloced: 0,
            chars: ptr::null_mut(),
        }
    }

#[no_mangle]
#[no_mangle]
    fn realloc(&mut self, need: usize) {
        let mut new_size = 1;
        let i = (8 * mem::size_of::<usize>() - 1 - need.leading_zeros() as usize);
        new_size <<= i;

        if new_size != need {
            new_size <<= 1;
        }

        let layout = Layout::array::<ZahlCharT>(self.alloced).unwrap();
        if !self.chars.is_null() {
            unsafe {
                dealloc(self.chars as *mut u8, layout);
            }
        }

        let new_layout = Layout::array::<ZahlCharT>(new_size + 4).unwrap();
        self.chars = unsafe {
            let ptr = alloc(new_layout) as *mut ZahlCharT;
            if ptr.is_null() {
                panic!("Memory allocation failed");
            }
            ptr
        };

        self.alloced = new_size;
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    let mut zahl = Zahl::new();
    zahl.realloc(10);
    // Use `zahl` as needed
}
