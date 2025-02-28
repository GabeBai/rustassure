pub struct CsvParser {
    pstate: i32,
    quoted: i32,
    spaces: usize,
    entry_buf: Option<Vec<u8>>, // Using Vec<u8> for dynamic buffer
    entry_pos: usize,
    entry_size: usize,
    status: i32,
    options: u8,
    quote_char: u8,
    delim_char: u8,
    is_space: Option<Box<dyn Fn(u8) -> i32>>, // Function pointer as a trait object
    is_term: Option<Box<dyn Fn(u8) -> i32>>, // Function pointer as a trait object
    blk_size: usize,
    malloc_func: Option<Box<dyn Fn(usize) -> *mut std::ffi::c_void>>, // Function pointer for malloc
    realloc_func: Option<Box<dyn Fn(*mut std::ffi::c_void, usize) -> *mut std::ffi::c_void>>, // Function pointer for realloc
    free_func: Option<Box<dyn Fn(*mut std::ffi::c_void)>>, // Function pointer for free
}

pub fn csv_set_free_func(p: &mut Option<CsvParser>, f: Option<Box<dyn Fn(*mut std::ffi::c_void)>>) {
    if p.is_some() && f.is_some() {
        if let Some(parser) = p {
            parser.free_func = f;
        }
    }
}
