use std::ffi::c_void;
use std::os::raw::c_int;
use std::os::raw::c_uchar;

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
    is_space: Option<unsafe extern "C" fn(c_uchar) -> c_int>,
    is_term: Option<unsafe extern "C" fn(c_uchar) -> c_int>,
    blk_size: usize,
    malloc_func: Option<unsafe extern "C" fn(usize) -> *mut c_void>,
    realloc_func: Option<unsafe extern "C" fn(*mut c_void, usize) -> *mut c_void>,
    free_func: Option<unsafe extern "C" fn(*mut c_void)>,
}

#[no_mangle]
pub unsafe extern "C" fn csv_set_space_func(p: *mut csv_parser, f: Option<unsafe extern "C" fn(c_uchar) -> c_int>) {
    if !p.is_null() {
        (*p).is_space = f;
    }
}