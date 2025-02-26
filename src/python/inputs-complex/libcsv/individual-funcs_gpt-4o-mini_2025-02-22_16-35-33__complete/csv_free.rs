pub struct CsvParser {
    pstate: i32,
    quoted: i32,
    spaces: usize,
    entry_buf: Option<Box<[u8]>>,
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

pub fn csv_free(p: &mut Option<CsvParser>) {
    if let Some(ref mut parser) = p {
        if let Some(buf) = parser.entry_buf.take() {
            if let Some(free_func) = parser.free_func.take() {
                free_func(Box::into_raw(buf) as *mut std::ffi::c_void);
            }
        }
        parser.entry_size = 0;
    }
}
