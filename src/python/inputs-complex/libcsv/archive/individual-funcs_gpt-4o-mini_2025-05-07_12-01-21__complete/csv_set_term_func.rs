use std::mem;
use std::ptr;

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
    is_space: Option<Box<dyn Fn(u8) -> i32>>,
    is_term: Option<Box<dyn Fn(u8) -> i32>>,
    blk_size: usize,
    malloc_func: Option<Box<dyn Fn(usize) -> *mut std::ffi::c_void>>,
    realloc_func: Option<Box<dyn Fn(*mut std::ffi::c_void, usize) -> *mut std::ffi::c_void>>,
    free_func: Option<Box<dyn Fn(*mut std::ffi::c_void)>>,
}

impl CsvParser {
    pub fn new() -> Self {
        CsvParser {
            pstate: 0,
            quoted: 0,
            spaces: 0,
            entry_buf: ptr::null_mut(),
            entry_pos: 0,
            entry_size: 0,
            status: 0,
            options: 0,
            quote_char: 0,
            delim_char: 0,
            is_space: None,
            is_term: None,
            blk_size: 0,
            malloc_func: None,
            realloc_func: None,
            free_func: None,
        }
    }

    pub fn set_term_func(&mut self, f: Option<Box<dyn Fn(u8) -> i32>>) {
        self.is_term = f;
    }
}
