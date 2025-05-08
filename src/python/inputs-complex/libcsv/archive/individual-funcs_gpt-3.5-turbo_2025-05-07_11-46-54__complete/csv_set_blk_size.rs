use std::os::raw::{c_int, c_ulong};

#[repr(C)]
pub struct __sigset_t {
    __val: [c_ulong; 16],
}

#[repr(C)]
pub struct timespec {
    tv_sec: c_long,
    tv_nsec: c_long,
}

#[repr(C)]
pub struct fd_set {
    __fds_bits: [c_long; 32],
}

pub struct csv_parser {
    pstate: c_int,
    quoted: c_int,
    spaces: usize,
    entry_buf: *mut u8,
    entry_pos: usize,
    entry_size: usize,
    status: c_int,
    options: u8,
    quote_char: u8,
    delim_char: u8,
    is_space: Option<fn(u8) -> c_int>,
    is_term: Option<fn(u8) -> c_int>,
    blk_size: usize,
    malloc_func: Option<fn(usize) -> *mut std::ffi::c_void>,
    realloc_func: Option<fn(*mut std::ffi::c_void, usize) -> *mut std::ffi::c_void>,
    free_func: Option<fn(*mut std::ffi::c_void)>,
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
