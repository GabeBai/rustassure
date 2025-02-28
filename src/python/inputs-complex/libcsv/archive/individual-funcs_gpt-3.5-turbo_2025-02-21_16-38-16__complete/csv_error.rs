use std::ptr;

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
    malloc_func: Option<fn(usize) -> *mut u8>,
    realloc_func: Option<fn(*mut u8, usize) -> *mut u8>,
    free_func: Option<fn(*mut u8)>,
}

fn csv_error(p: &CsvParser) -> i32 {
    assert!(!ptr::eq(p.entry_buf, ptr::null()), "received null csv_parser");
    p.status
}
