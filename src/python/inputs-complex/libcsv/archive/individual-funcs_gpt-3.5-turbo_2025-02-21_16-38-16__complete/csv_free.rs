use std::os::raw::{c_void, c_uchar};

struct CsvParser {
    pstate: i32,
    quoted: i32,
    spaces: usize,
    entry_buf: *mut c_uchar,
    entry_pos: usize,
    entry_size: usize,
    status: i32,
    options: u8,
    quote_char: u8,
    delim_char: u8,
    is_space: Option<fn(c_uchar) -> i32>,
    is_term: Option<fn(c_uchar) -> i32>,
    blk_size: usize,
    malloc_func: Option<fn(usize) -> *mut c_void>,
    realloc_func: Option<fn(*mut c_void, usize) -> *mut c_void>,
    free_func: Option<fn(*mut c_void)>,
}

impl CsvParser {
    fn csv_free(&mut self) {
        if self.entry_buf.is_null() || self.free_func.is_none() {
            return;
        }
        (self.free_func.unwrap())(self.entry_buf as *mut c_void);
        self.entry_buf = std::ptr::null_mut();
        self.entry_size = 0;
    }
}
