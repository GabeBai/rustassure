use std::ffi::c_void;
use std::ptr;

#[repr(C)]
pub struct CsvParser {
    pstate: i32,
    quoted: i32,
    spaces: usize,
    entry_buf: *mut u8,
    entry_pos: usize,
    entry_size: usize,
    status: i32,
    options: u8,
    quote_char: u8,
    delim_char: u8,
    is_space: Option<extern "C" fn(u8) -> i32>,
    is_term: Option<extern "C" fn(u8) -> i32>,
    blk_size: usize,
    malloc_func: Option<extern "C" fn(usize) -> *mut c_void>,
    realloc_func: Option<extern "C" fn(*mut c_void, usize) -> *mut c_void>,
    free_func: Option<extern "C" fn(*mut c_void)>,
}

pub fn csv_error(p: *const CsvParser) -> i32 {
    // Check if the pointer is null
    if p.is_null() {
        panic!("received null csv_parser");
    }
    
    // Safe to dereference the pointer now
    unsafe {
        (*p).status
    }
}
