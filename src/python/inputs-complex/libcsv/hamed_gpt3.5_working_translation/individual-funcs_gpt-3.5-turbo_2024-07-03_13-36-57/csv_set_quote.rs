use std::os::raw::{c_char, c_int, c_uchar};

#[repr(C)]
pub struct csv_parser {
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
    is_space: Option<extern "C" fn(c_uchar) -> c_int>,
    is_term: Option<extern "C" fn(c_uchar) -> c_int>,
    blk_size: usize,
    malloc_func: Option<extern "C" fn(usize) -> *mut c_char>,
    realloc_func: Option<extern "C" fn(*mut c_char, usize) -> *mut c_char>,
    free_func: Option<extern "C" fn(*mut c_char)>,
}

static CSV_ERRORS: [&str; 5] = [
    "success",
    "error parsing data while strict checking enabled",
    "memory exhausted while increasing buffer size",
    "data size too large",
    "invalid status code",
];

impl csv_parser {
    fn set_quote(&mut self, c: c_uchar) {
        self.quote_char = c;
    }
}

fn main() {
    let mut parser = csv_parser {
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
    };

    parser.set_quote(b'"');
}
