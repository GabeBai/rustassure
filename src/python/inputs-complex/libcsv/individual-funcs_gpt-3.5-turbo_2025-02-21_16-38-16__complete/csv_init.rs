use std::os::raw::{c_void, c_uchar, c_int};

use std::os::raw::{c_void, c_int};

#[no_mangle]
pub extern "C" fn my_realloc(ptr: *mut c_void, size: usize) -> *mut c_void {
    unsafe { std::alloc::realloc(ptr, size) }
}

#[no_mangle]
pub extern "C" fn my_free(ptr: *mut c_void) {
    unsafe { std::alloc::dealloc(ptr, std::alloc::Layout::new::<c_void>()) }
}

struct CsvParser {
    pstate: c_int,
    quoted: c_int,
    spaces: usize,
    entry_buf: *mut c_uchar,
    entry_pos: usize,
    entry_size: usize,
    status: c_int,
    options: c_uchar,
    quote_char: c_uchar,
    delim_char: c_uchar,
    is_space: Option<fn(c_uchar) -> c_int>,
    is_term: Option<fn(c_uchar) -> c_int>,
    blk_size: usize,
    malloc_func: Option<fn(usize) -> *mut c_void>,
    realloc_func: Option<fn(*mut c_void, usize) -> *mut c_void>,
    free_func: Option<fn(*mut c_void)>,
}

impl CsvParser {
    fn new(options: c_uchar) -> Self {
        CsvParser {
            pstate: 0,
            quoted: 0,
            spaces: 0,
            entry_buf: std::ptr::null_mut(),
            entry_pos: 0,
            entry_size: 0,
            status: 0,
            options,
            quote_char: 0x22,
            delim_char: 0x2c,
            is_space: None,
            is_term: None,
            blk_size: 128,
            malloc_func: None,
            realloc_func: Some(my_realloc),
            free_func: Some(my_free),
        }
    }
}

fn main() {
    let mut parser = CsvParser::new(0);
    println!("Parser initialized successfully!");
}
