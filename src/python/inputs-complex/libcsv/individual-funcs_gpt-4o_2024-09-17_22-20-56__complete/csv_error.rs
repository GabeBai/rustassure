use std::ffi::c_void;
use std::ptr;

struct CsvParser<'a> {
    pstate: i32,
    quoted: i32,
    spaces: usize,
    entry_buf: Option<&'a mut [u8]>,
    entry_pos: usize,
    entry_size: usize,
    status: i32,
    options: u8,
    quote_char: u8,
    delim_char: u8,
    is_space: fn(u8) -> i32,
    is_term: fn(u8) -> i32,
    blk_size: usize,
    malloc_func: fn(usize) -> *mut c_void,
    realloc_func: fn(*mut c_void, usize) -> *mut c_void,
    free_func: fn(*mut c_void),
}

fn csv_error(p: &CsvParser) -> i32 {
    assert!(p as *const _ != ptr::null(), "received null csv_parser");
    p.status
}
