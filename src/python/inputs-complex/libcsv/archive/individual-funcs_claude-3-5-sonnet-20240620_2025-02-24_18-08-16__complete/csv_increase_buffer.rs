use std::ptr::NonNull;

pub struct CsvParser {
    pstate: i32,
    quoted: i32,
    spaces: usize,
    entry_buf: NonNull<u8>,
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

fn csv_increase_buffer(p: &mut CsvParser) -> i32 {
    if p.realloc_func.is_none() {
        return 0;
    }

    let mut to_add = p.blk_size;
    if p.entry_size >= usize::MAX - to_add {
        to_add = usize::MAX - p.entry_size;
    }

    if to_add == 0 {
        p.status = 3;
        return -1;
    }

    let realloc_func = p.realloc_func.unwrap();
    while let None = NonNull::new(realloc_func(p.entry_buf.as_ptr(), p.entry_size + to_add)) {
        to_add /= 2;
        if to_add == 0 {
            p.status = 2;
            return -1;
        }
    }

    p.entry_buf = NonNull::new(realloc_func(p.entry_buf.as_ptr(), p.entry_size + to_add)).unwrap();
    p.entry_size += to_add;
    0
}