use std::alloc::{realloc, Layout};
use std::ptr;

fn c_realloc(ptr: *mut u8, size: usize) -> *mut u8 {
    unsafe { realloc(ptr, Layout::from_size_align_unchecked(size, std::mem::align_of::<u8>()), size) }
}

struct CsvParser {
    // other fields
    realloc_func: unsafe fn(*mut u8, usize) -> *mut u8,
}

impl CsvParser {
    fn new(options: u8) -> Self {
        CsvParser {
            // initialize other fields
            realloc_func: c_realloc,
        }
    }
}

fn main() {
    let options: u8 = 0;
    let mut parser = CsvParser::new(options);
}
