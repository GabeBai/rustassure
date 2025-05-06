use std::os::raw::{c_char, c_int, c_uchar, c_ulong};

struct timespec {
    tv_sec: i64,
    tv_nsec: i64,
}

struct fd_set {
    __fds_bits: [__fd_mask; 1024 / (8 * std::mem::size_of::<__fd_mask>())],
}

union pthread_attr_t {
    __size: [c_char; 56],
    __align: i64,
}

struct csv_parser {
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
    malloc_func: Option<fn(usize) -> *mut std::ffi::c_void>,
    realloc_func: Option<fn(*mut std::ffi::c_void, usize) -> *mut std::ffi::c_void>,
    free_func: Option<fn(*mut std::ffi::c_void)>,
}

fn csv_get_delim(p: &csv_parser) -> c_uchar {
    assert!(!p.is_null(), "received null csv_parser");
    p.delim_char
}
