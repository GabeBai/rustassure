use std::os::raw::{c_char, c_int, c_ulong, c_long};

#[repr(C)]
struct timespec {
    tv_sec: __time_t,
    tv_nsec: __syscall_slong_t,
}

type __time_t = c_long;
type __syscall_slong_t = c_long;

#[repr(C)]
struct __sigset_t {
    __val: [c_ulong; 16],
}

#[repr(C)]
struct fd_set {
    __fds_bits: [__fd_mask; 16],
}

type __fd_mask = c_long;

#[repr(C)]
union pthread_attr_t {
    __size: [c_char; 56],
    __align: c_long,
}

struct csv_parser {
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
    malloc_func: Option<fn(usize) -> *mut u8>,
    realloc_func: Option<fn(*mut u8, usize) -> *mut u8>,
    free_func: Option<fn(*mut u8)>,
}

fn csv_error(p: &csv_parser) -> c_int {
    assert!(p as *const _ != std::ptr::null(), "received null csv_parser");
    p.status
}
