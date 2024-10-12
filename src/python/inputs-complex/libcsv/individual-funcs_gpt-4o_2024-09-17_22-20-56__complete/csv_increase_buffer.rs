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

fn csv_increase_buffer(p: &mut CsvParser) -> i32 {
    if p as *mut _ == std::ptr::null_mut() {
        return 0;
    }
    if p.realloc_func as *const () == std::ptr::null() {
        return 0;
    }
    let mut to_add = p.blk_size;
    let mut vp: *mut c_void;
    if p.entry_size >= (u64::MAX as usize) - to_add {
        to_add = (u64::MAX as usize) - p.entry_size;
    }
    if to_add == 0 {
        p.status = 3;
        return -1;
    }
    while {
        vp = (p.realloc_func)(p.entry_buf.as_mut().map_or(std::ptr::null_mut(), |buf| buf.as_mut_ptr() as *mut c_void), p.entry_size + to_add);
        vp == std::ptr::null_mut()
    } {
        to_add /= 2;
        if to_add == 0 {
            p.status = 2;
            return -1;
        }
    }
    p.entry_buf = Some(unsafe { std::slice::from_raw_parts_mut(vp as *mut u8, p.entry_size + to_add) });
    p.entry_size += to_add;
    0
}
