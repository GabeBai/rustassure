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
    malloc_func: Option<fn(usize) -> *mut std::ffi::c_void>,
    realloc_func: Option<fn(*mut std::ffi::c_void, usize) -> *mut std::ffi::c_void>,
    free_func: Option<fn(*mut std::ffi::c_void)>,
}

pub fn csv_error(p: Option<&CsvParser>) -> i32 {
    // Check if the pointer is None (null)
    if p.is_none() {
        panic!("received null csv_parser");
    }

    // Safe to unwrap since we checked for None
    let parser = p.unwrap();
    parser.status
}
