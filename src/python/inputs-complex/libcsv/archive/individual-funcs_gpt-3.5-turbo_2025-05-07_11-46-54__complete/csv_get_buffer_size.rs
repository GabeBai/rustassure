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
    pub fn csv_get_buffer_size(p: &csv_parser) -> usize {
        if p.entry_buf.is_null() {
            0
        } else {
            p.entry_size
        }
    }
}
