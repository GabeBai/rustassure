use std::ffi::c_void;
use std::mem::MaybeUninit;

#[repr(C)]
pub struct CsvParser {
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
    malloc_func: Option<fn(usize) -> *mut c_void>,
    realloc_func: Option<fn(*mut c_void, usize) -> *mut c_void>,
    free_func: Option<fn(*mut c_void)>,
}

pub fn csv_free(p: &mut Option<CsvParser>) {
    if let Some(parser) = p {
        if !parser.entry_buf.is_null() && parser.free_func.is_some() {
            // Call the free function if it exists
            (parser.free_func.unwrap())(parser.entry_buf as *mut c_void);
        }
        parser.entry_buf = std::ptr::null_mut();
        parser.entry_size = 0;
    }
}
