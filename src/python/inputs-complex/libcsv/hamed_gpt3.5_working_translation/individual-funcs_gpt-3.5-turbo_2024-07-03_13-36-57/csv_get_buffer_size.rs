use std::os::raw::{c_char, c_int, c_void};

#[repr(C)]
union pthread_attr_t {
    __size: [c_char; 56],
    __align: c_int,
}

#[repr(C)]
pub struct _IO_FILE;

#[repr(C)]
pub struct _IO_jump_t;

#[repr(C)]
pub struct _IO_FILE_plus;

#[repr(C)]
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
    is_space: extern "C" fn(u8) -> c_int,
    is_term: extern "C" fn(u8) -> c_int,
    blk_size: usize,
    malloc_func: extern "C" fn(usize) -> *mut c_void,
    realloc_func: extern "C" fn(*mut c_void, usize) -> *mut c_void,
    free_func: extern "C" fn(*mut c_void),
}

extern "C" {
    static stdin: *mut _IO_FILE;
    static stdout: *mut _IO_FILE;
    static stderr: *mut _IO_FILE;
    static sys_nerr: c_int;
    static sys_errlist: *const *const c_char;
    static _IO_2_1_stdin_: _IO_FILE_plus;
    static _IO_2_1_stdout_: _IO_FILE_plus;
    static _IO_2_1_stderr_: _IO_FILE_plus;
}

#[repr(C)]
pub enum __codecvt_result {
    __codecvt_ok,
    __codecvt_partial,
    __codecvt_error,
    __codecvt_noconv,
}

static CSV_ERRORS: [&str; 5] = [
    "success",
    "error parsing data while strict checking enabled",
    "memory exhausted while increasing buffer size",
    "data size too large",
    "invalid status code",
];

#[no_mangle]
pub extern "C" fn csv_get_buffer_size(p: *const csv_parser) -> usize {
    if !p.is_null() {
        unsafe { (*p).entry_size }
    } else {
        0
    }
}
