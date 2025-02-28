use std::os::raw::{c_int, c_uchar, c_void};

pub struct CsvParser {
    pstate: c_int,
    quoted: c_int,
    spaces: usize,
    entry_buf: *mut c_uchar,
    entry_pos: usize,
    entry_size: usize,
    status: c_int,
    options: u8,
    quote_char: c_uchar,
    delim_char: c_uchar,
    is_space: Option<fn(c_uchar) -> c_int>,
    is_term: Option<fn(c_uchar) -> c_int>,
    blk_size: usize,
    malloc_func: Option<fn(usize) -> *mut c_void>,
    realloc_func: Option<fn(*mut c_void, usize) -> *mut c_void>,
    free_func: Option<fn(*mut c_void)>,
}

extern "C" {
    fn csv_set_opts(p: *mut CsvParser, options: u8) -> c_int;
}

impl CsvParser {
    pub fn new() -> Self {
        CsvParser {
            pstate: 0,
            quoted: 0,
            spaces: 0,
            entry_buf: std::ptr::null_mut(),
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

    pub fn set_opts(&mut self, options: u8) -> c_int {
        if self as *const _ == std::ptr::null() {
            return -1;
        }
        self.options = options;
        0
    }
}

fn main() {
    let mut parser = CsvParser::new();
    let options: u8 = 0b0000_0001;
    let result = unsafe { csv_set_opts(&mut parser, options) };
    println!("Result: {}", result);
}
