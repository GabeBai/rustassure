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

fn csv_get_delim(p: &CsvParser) -> u8 {
    assert!(!p.entry_buf.is_null(), "received null csv_parser");
    p.delim_char
}

fn main() {
    let mut parser = CsvParser {
        pstate: 0,
        quoted: 0,
        spaces: 0,
        entry_buf: ptr::null_mut(),
        entry_pos: 0,
        entry_size: 0,
        status: 0,
        options: 0,
        quote_char: b'"',
        delim_char: b',',
        is_space: None,
        is_term: None,
        blk_size: 0,
        malloc_func: None,
        realloc_func: None,
        free_func: None,
    };

    let delim = csv_get_delim(&parser);
    println!("Delimiter: {}", delim);
}
