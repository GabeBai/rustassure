use std::ffi::c_void;
use std::ptr;

struct CsvParser<'a> {
    pstate: i32,
    quoted: i32,
    spaces: usize,
    entry_buf: Option<Vec<u8>>,
    entry_pos: usize,
    entry_size: usize,
    status: i32,
    options: u8,
    quote_char: u8,
    delim_char: u8,
    is_space: &'a dyn Fn(u8) -> i32,
    is_term: &'a dyn Fn(u8) -> i32,
    blk_size: usize,
    malloc_func: &'a dyn Fn(usize) -> *mut c_void,
    realloc_func: &'a dyn Fn(*mut c_void, usize) -> *mut c_void,
    free_func: &'a dyn Fn(*mut c_void),
}

fn csv_error(p: Option<&CsvParser>) -> i32 {
    if let Some(parser) = p {
        parser.status
    } else {
        panic!("received null csv_parser");
    }
}
