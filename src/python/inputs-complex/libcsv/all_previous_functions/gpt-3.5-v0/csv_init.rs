struct CsvParser {
    pstate: i32,
    quoted: i32,
    spaces: usize,
    entry_buf: *mut u8,
    entry_pos: usize,
    entry_size: usize,
    status: i32,
    options: u8,
    quote_char: u8,
    delim_char: u8,
    is_space: Option<fn(u8) -> i32>,
    is_term: Option<fn(u8) -> i32>,
    blk_size: usize,
    malloc_func: Option<fn(usize) -> *mut std::ffi::c_void>,
    realloc_func: Option<fn(*mut std::ffi::c_void, usize) -> *mut std::ffi::c_void>,
    free_func: Option<fn(*mut std::ffi::c_void)>,
}



use std::os::raw::c_char;

pub fn csv_strerror(status: i32) -> *const c_char {
    const CSV_ERRORS: [&'static str; 5] = [
        "Success",
        "Invalid Quoting",
        "Invalid Escaping",
        "Invalid Delimiter",
        "Memory Allocation Failure",
    ];

    if status >= 4 || status < 0 {
        CSV_ERRORS[4].as_ptr() as *const c_char
    } else {
        CSV_ERRORS[status as usize].as_ptr() as *const c_char
    }
}

fn csv_get_buffer_size(p: *const CsvParser) -> usize {
    if !p.is_null() {
        unsafe { (*p).entry_size }
    } else {
        0
    }
}

use std::os::raw::c_uchar;

extern "C" {
    fn csv_set_space_func(p: *mut CsvParser, f: Option<fn(c_uchar) -> i32>);
}

use std::os::raw::c_void;

fn csv_increase_buffer(p: &mut CsvParser) -> i32 {
    if p.entry_buf.is_null() {
        return 0;
    }
    if p.realloc_func.is_none() {
        return 0;
    }
    let mut to_add = p.blk_size;
    let mut vp: *mut c_void;
    if p.entry_size >= usize::MAX - to_add {
        to_add = usize::MAX - p.entry_size;
    }
    if to_add == 0 {
        p.status = 3;
        return -1;
    }
    while {
        vp = p.realloc_func.unwrap()(p.entry_buf as *mut c_void, p.entry_size + to_add);
        vp == std::ptr::null_mut()
    } {
        to_add /= 2;
        if to_add == 0 {
            p.status = 2;
            return -1;
        }
    }
    p.entry_buf = vp as *mut u8;
    p.entry_size += to_add;
    0
}

pub fn csv_init(p: &mut CsvParser, options: u8) -> i32 {
    if p.entry_buf.is_null() {
        return -1;
    }
    p.pstate = 0;
    p.quoted = 0;
    p.spaces = 0;
    p.entry_pos = 0;
    p.entry_size = 0;
    p.status = 0;
    p.options = options;
    p.quote_char = 0x22;
    p.delim_char = 0x2c;
    p.is_space = None;
    p.is_term = None;
    p.blk_size = 128;
    p.malloc_func = None;
    p.realloc_func = Some(std::alloc::realloc as fn(*mut std::ffi::c_void, usize) -> *mut std::ffi::c_void);
    p.free_func = Some(std::alloc::dealloc as fn(*mut std::ffi::c_void));
    0
}
