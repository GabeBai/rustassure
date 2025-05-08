#[repr(C)]
pub struct CsvParser {
    pstate: i32,
    quoted: i32,
    spaces: usize,
    entry_buf: *mut u8, // Pointer to entry buffer
    entry_pos: usize,
    entry_size: usize,
    status: i32,
    options: u8,
    quote_char: u8,
    delim_char: u8,
    is_space: Option<fn(u8) -> i32>, // Function pointer for is_space
    is_term: Option<fn(u8) -> i32>,  // Function pointer for is_term
    blk_size: usize,
    malloc_func: Option<fn(usize) -> *mut std::ffi::c_void>, // Function pointer for malloc
    realloc_func: Option<fn(*mut std::ffi::c_void, usize) -> *mut std::ffi::c_void>, // Function pointer for realloc
    free_func: Option<fn(*mut std::ffi::c_void)>, // Function pointer for free
}

pub fn csv_get_opts(p: Option<&CsvParser>) -> i32 {
    match p {
        Some(parser) => parser.options as i32,
        None => -1,
    }
}
