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
    is_space: Option<Box<dyn Fn(u8) -> i32>>,
    is_term: Option<Box<dyn Fn(u8) -> i32>>,
    blk_size: usize,
    malloc_func: Option<Box<dyn Fn(usize) -> *mut std::ffi::c_void>>,
    realloc_func: Option<Box<dyn Fn(*mut std::ffi::c_void, usize) -> *mut std::ffi::c_void>>,
    free_func: Option<Box<dyn Fn(*mut std::ffi::c_void)>>,
}

fn csv_set_realloc_func(p: &mut Option<CsvParser>, f: Option<Box<dyn Fn(*mut std::ffi::c_void, usize) -> *mut std::ffi::c_void>>) {
    if let (Some(parser), Some(func)) = (p, f) {
        parser.realloc_func = Some(func);
    }
}
