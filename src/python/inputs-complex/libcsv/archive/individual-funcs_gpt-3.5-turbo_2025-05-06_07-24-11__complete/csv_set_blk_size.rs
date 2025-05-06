use std::os::raw::{c_long, c_ulong, c_char, c_int, c_uchar};

#[repr(C)]
pub struct timespec {
    pub tv_sec: c_long,
    pub tv_nsec: c_long,
}

#[repr(C)]
pub struct fd_set {
    __fds_bits: [c_long; 128],
}

#[repr(C)]
pub union pthread_attr_t {
    __size: [c_char; 56],
    __align: c_long,
}

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
    is_space: Option<fn(c_uchar) -> c_int>,
    is_term: Option<fn(c_uchar) -> c_int>,
    blk_size: usize,
    malloc_func: Option<fn(usize) -> *mut c_char>,
    realloc_func: Option<fn(*mut c_char, usize) -> *mut c_char>,
    free_func: Option<fn(*mut c_char)>,
}

impl csv_parser {
    pub fn new() -> Self {
        Self {
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

    pub fn set_blk_size(&mut self, size: usize) {
        self.blk_size = size;
    }
}

fn main() {
    let mut parser = csv_parser::new();
    parser.set_blk_size(1024);
}
