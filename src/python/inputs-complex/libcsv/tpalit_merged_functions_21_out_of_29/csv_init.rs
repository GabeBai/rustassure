use std::ffi::c_void;

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
    is_space: Option<&'a dyn Fn(u8) -> i32>,
    is_term: Option<&'a dyn Fn(u8) -> i32>,
    blk_size: usize,
    malloc_func: Option<&'a dyn Fn(usize) -> *mut c_void>,
    realloc_func: Option<&'a dyn Fn(*mut c_void, usize) -> *mut c_void>,
    free_func: Option<&'a dyn Fn(*mut c_void)>,
}

fn csv_init<'a>(p: Option<&mut CsvParser<'a>>, options: u8) -> i32 {
    if let Some(parser) = p {
        parser.entry_buf = None;
        parser.pstate = 0;
        parser.quoted = 0;
        parser.spaces = 0;
        parser.entry_pos = 0;
        parser.entry_size = 0;
        parser.status = 0;
        parser.options = options;
        parser.quote_char = 0x22;
        parser.delim_char = 0x2c;
        parser.is_space = None;
        parser.is_term = None;
        parser.blk_size = 128;
        parser.malloc_func = None;
        parser.realloc_func = Some(realloc);
        parser.free_func = Some(free);
        0
    } else {
        -1
    }
}

fn realloc(ptr: *mut c_void, size: usize) -> *mut c_void {
    unsafe { libc::realloc(ptr, size) }
}

fn free(ptr: *mut c_void) {
    unsafe { libc::free(ptr) }
}
