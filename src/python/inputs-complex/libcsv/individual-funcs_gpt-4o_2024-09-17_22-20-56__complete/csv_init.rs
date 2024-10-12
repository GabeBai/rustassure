use std::ffi::c_void;

struct CsvParser<'a> {
    pstate: i32,
    quoted: i32,
    spaces: usize,
    entry_buf: Option<&'a mut [u8]>,
    entry_pos: usize,
    entry_size: usize,
    status: i32,
    options: u8,
    quote_char: u8,
    delim_char: u8,
    is_space: fn(u8) -> i32,
    is_term: fn(u8) -> i32,
    blk_size: usize,
    malloc_func: fn(usize) -> *mut c_void,
    realloc_func: fn(*mut c_void, usize) -> *mut c_void,
    free_func: fn(*mut c_void),
}

fn csv_init(p: &mut CsvParser, options: u8) -> i32 {
    if p as *mut _ == std::ptr::null_mut() {
        return -1;
    }
    p.entry_buf = None;
    p.pstate = 0;
    p.quoted = 0;
    p.spaces = 0;
    p.entry_pos = 0;
    p.entry_size = 0;
    p.status = 0;
    p.options = options;
    p.quote_char = 0x22;
    p.delim_char = 0x2c;
    p.is_space = |_: u8| 0;
    p.is_term = |_: u8| 0;
    p.blk_size = 128;
    p.malloc_func = |size| std::alloc::alloc(std::alloc::Layout::from_size_align(size, 1).unwrap()) as *mut c_void;
    p.realloc_func = |ptr, size| {
        if ptr.is_null() {
            std::alloc::alloc(std::alloc::Layout::from_size_align(size, 1).unwrap()) as *mut c_void
        } else {
            std::alloc::realloc(ptr as *mut u8, std::alloc::Layout::from_size_align(size, 1).unwrap(), size) as *mut c_void
        }
    };
    p.free_func = |ptr| {
        if !ptr.is_null() {
            std::alloc::dealloc(ptr as *mut u8, std::alloc::Layout::from_size_align(1, 1).unwrap());
        }
    };
    0
}
