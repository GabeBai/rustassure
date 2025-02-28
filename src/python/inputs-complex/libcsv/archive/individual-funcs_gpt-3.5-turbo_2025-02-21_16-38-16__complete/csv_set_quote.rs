use std::os::raw::{c_uchar, c_void};

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
    is_space: Option<extern "C" fn(c_uchar) -> i32>,
    is_term: Option<extern "C" fn(c_uchar) -> i32>,
    blk_size: usize,
    malloc_func: Option<extern "C" fn(usize) -> *mut c_void>,
    realloc_func: Option<extern "C" fn(*mut c_void, usize) -> *mut c_void>,
    free_func: Option<extern "C" fn(*mut c_void)>,
}

impl CsvParser {
    fn new() -> Self {
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

    fn set_quote(&mut self, c: u8) {
        self.quote_char = c;
    }
}

fn main() {
    let mut parser = CsvParser::new();
    parser.set_quote(b'"');
}
