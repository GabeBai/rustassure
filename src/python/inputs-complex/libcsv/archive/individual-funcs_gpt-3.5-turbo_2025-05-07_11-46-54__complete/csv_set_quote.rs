use std::os::raw::{c_char, c_void};
use std::mem::size_of;

struct csv_parser {
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

fn csv_set_quote(p: &mut csv_parser, c: u8) {
    p.quote_char = c;
}

fn main() {
    let mut parser = csv_parser {
        pstate: 0,
        quoted: 0,
        spaces: 0,
        entry_buf: std::ptr::null_mut(),
        entry_pos: 0,
        entry_size: 0,
        status: 0,
        options: 0,
        quote_char: 0,
        delim_char: 0,
        is_space: None,
        is_term: None,
        blk_size: size_of::<usize>(),
        malloc_func: None,
        realloc_func: None,
        free_func: None,
    };

    if let Some(parser) = Some(&mut parser) {
        csv_set_quote(parser, b'"');
    }
}
