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
    malloc_func: Option<fn(usize) -> *mut std::ffi::c_void>,
    realloc_func: Option<fn(*mut std::ffi::c_void, usize) -> *mut std::ffi::c_void>,
    free_func: Option<fn(*mut std::ffi::c_void)>,
}



fn csv_set_blk_size(p: &mut Option<CsvParser>, size: usize) {
    if let Some(parser) = p {
        parser.blk_size = size;
    }
}

fn csv_fini(p: &mut CsvParser, cb1: Option<fn(*mut std::ffi::c_void, usize, *mut std::ffi::c_void)>, cb2: Option<fn(i32, *mut std::ffi::c_void)>, data: *mut std::ffi::c_void) -> i32 {
    if p.entry_buf.is_null() {
        return -1;
    }
    let quoted = p.quoted;
    let pstate = p.pstate;
    let spaces = p.spaces;
    let mut entry_pos = p.entry_pos;
    if pstate == 2 && p.quoted != 0 && (p.options & 1) != 0 && (p.options & 4) != 0 {
        p.status = 1;
        return -1;
    }
    match pstate {
        3 => {
            entry_pos -= p.spaces + 1;
            entry_pos = entry_pos;
        }
        1 | 2 => {
            if quoted != 0 {
                entry_pos -= spaces;
            }
            if p.options & 8 != 0 {
                unsafe { *p.entry_buf.add(entry_pos) = 0 };
            }
            if let Some(cb) = cb1 {
                if p.options & 16 != 0 && quoted == 0 && entry_pos == 0 {
                    cb(std::ptr::null_mut(), entry_pos, data);
                } else {
                    cb(p.entry_buf as *mut std::ffi::c_void, entry_pos, data);
                }
            }
            p.pstate = 1;
            p.entry_pos = 0;
            p.quoted = 0;
            p.spaces = 0;
            if let Some(cb) = cb2 {
                cb(-1, data);
            }
            p.pstate = 0;
            p.entry_pos = 0;
            p.quoted = 0;
            p.spaces = 0;
        }
        0 => {}
        _ => {}
    }
    p.spaces = 0;
    p.quoted = 0;
    p.entry_pos = 0;
    p.status = 0;
    p.pstate = 0;
    0
}

fn csv_init(p: &mut CsvParser, options: u8) -> i32 {
    if p.entry_buf.is_null() {
        return -1;
    }
    p.entry_buf = std::ptr::null_mut();
    p.pstate = 0;
    p.quoted = 0;
    p.spaces = 0;
    p.entry_pos = 0;
    p.entry_size = 0;
    p.status = 0;
    p.options = options;
    p.quote_char = 0x22;
    p.delim_char = 0x2c;
    p.is_space = None;
    p.is_term = None;
    p.blk_size = 128;
    p.malloc_func = None;
    p.realloc_func = Some(std::alloc::realloc as fn(*mut std::ffi::c_void, usize) -> *mut std::ffi::c_void);
    p.free_func = Some(std::alloc::dealloc as fn(*mut std::ffi::c_void));
    0
}
