use std::os::raw::{c_char, c_int, c_uchar, c_ulong, c_long, c_void};
use std::mem::size_of;

struct timespec {
    tv_sec: c_long,
    tv_nsec: c_long,
}

struct fd_set {
    __fds_bits: [c_ulong; 1024 / (8 * size_of::<c_ulong>())],
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
    malloc_func: Option<fn(usize) -> *mut c_void>,
    realloc_func: Option<fn(*mut c_void, usize) -> *mut c_void>,
    free_func: Option<fn(*mut c_void)>,
}

fn csv_get_delim(p: *const csv_parser) -> c_uchar {
    assert!(!p.is_null(), "received null csv_parser");
    let p = unsafe { &*p };
    p.delim_char
}
