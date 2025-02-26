use std::alloc::{alloc, dealloc, Layout};
use std::ffi::c_void;

unsafe fn my_malloc(size: usize) -> *mut c_void {
    let layout = Layout::from_size_align(size, 1).unwrap();
    alloc(layout) as *mut c_void // Cast to *mut c_void
}

struct CsvParser {
    // Define the fields according to the C struct
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

fn csv_set_delim(p: *mut CsvParser, c: u8) {
    if !p.is_null() {
        unsafe {
            (*p).delim_char = c; // Dereference the pointer to access the field
        }
    }
}

use std::alloc::{alloc, dealloc, Layout};
use std::ffi::c_void;

unsafe fn my_malloc(size: usize) -> *mut c_void {
    let layout = Layout::from_size_align(size, 1).unwrap();
    alloc(layout) as *mut c_void // Cast to *mut c_void
}

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
    malloc_func: Option<fn(usize) -> *mut c_void>,
    realloc_func: Option<fn(*mut c_void, usize) -> *mut c_void>,
    free_func: Option<fn(*mut c_void)>,
}

fn csv_set_delim(p: *mut CsvParser, c: u8) {
    if !p.is_null() {
        unsafe {
            (*p).delim_char = c; // Dereference the pointer to access the field
        }
    }
}
