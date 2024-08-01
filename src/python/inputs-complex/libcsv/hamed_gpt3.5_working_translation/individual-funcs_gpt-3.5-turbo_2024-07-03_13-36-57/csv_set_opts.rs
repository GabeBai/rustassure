use std::os::raw::{c_int, c_uchar};

#[repr(C)]
pub struct csv_parser {
    pstate: c_int,
    quoted: c_int,
    spaces: usize,
    entry_buf: *mut c_uchar,
    entry_pos: usize,
    entry_size: usize,
    status: c_int,
    options: u8,
    quote_char: u8,
    delim_char: u8,
    is_space: Option<extern "C" fn(c_uchar) -> c_int>,
    is_term: Option<extern "C" fn(c_uchar) -> c_int>,
    blk_size: usize,
    malloc_func: Option<extern "C" fn(usize) -> *mut c_uchar>,
    realloc_func: Option<extern "C" fn(*mut c_uchar, usize) -> *mut c_uchar>,
    free_func: Option<extern "C" fn(*mut c_uchar)>,
}

const CSV_SUCCESS: &str = "success";
const CSV_ERROR_STRICT: &str = "error parsing data while strict checking enabled";
const CSV_ERROR_MEMORY: &str = "memory exhausted while increasing buffer size";
const CSV_ERROR_DATA_SIZE: &str = "data size too large";
const CSV_ERROR_INVALID_STATUS: &str = "invalid status code";

impl csv_parser {
    pub fn set_opts(&mut self, options: u8) -> c_int {
        if self as *const _ == std::ptr::null() {
            return -1;
        }
        self.options = options;
        0
    }
}
