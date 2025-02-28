use std::ffi::c_void;
use std::mem::size_of;

#[repr(C)]
pub struct csv_parser {
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
    is_space: Option<extern "C" fn(u8) -> i32>,
    is_term: Option<extern "C" fn(u8) -> i32>,
    blk_size: usize,
    malloc_func: Option<extern "C" fn(usize) -> *mut c_void>,
    realloc_func: Option<extern "C" fn(*mut c_void, usize) -> *mut c_void>,
    free_func: Option<extern "C" fn(*mut c_void)>,
}

#[no_mangle]
pub unsafe extern "C" fn csv_init(p: *mut csv_parser, options: u8) -> i32 {
    if p.is_null() {
        return -1;
    }

    let parser = &mut *p;
    parser.entry_buf = std::ptr::null_mut();
    parser.pstate = 0;
    parser.quoted = 0;
    parser.spaces = 0;
    parser.entry_pos = 0;
    parser.entry_size = 0;
    parser.status = 0;
    parser.options = options;
    parser.quote_char = 0x22;
    parser.delim_char = 0x2c;
    parser.is_space = None;
    parser.is_term = None;
    parser.blk_size = 128;
    parser.malloc_func = None;
    parser.realloc_func = Some(libc::realloc);
    parser.free_func = Some(libc::free);

    0
}