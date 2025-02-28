use std::os::raw::{c_void, c_uchar};

struct CsvParser {
    pstate: i32,
    quoted: i32,
    spaces: usize,
    entry_buf: *mut c_uchar,
    entry_pos: usize,
    entry_size: usize,
    status: i32,
    options: u8,
    quote_char: u8,
    delim_char: u8,
    is_space: Option<extern "C" fn(c_uchar) -> i32>,
    is_term: Option<extern "C" fn(c_uchar) -> i32>,
    blk_size: usize,
    malloc_func: Option<extern "C" fn(usize) -> *mut c_void>,
    realloc_func: Option<extern "C" fn(*mut c_void, usize) -> *mut c_void>,
    free_func: Option<extern "C" fn(*mut c_void)>,
}

fn csv_fini(p: &mut CsvParser, cb1: Option<extern "C" fn(*mut c_void, usize, *mut c_void)>, cb2: Option<extern "C" fn(i32, *mut c_void)>, data: *mut c_void) -> i32 {
    if p as *const _ == std::ptr::null() {
        return -1;
    }

    let quoted = p.quoted;
    let pstate = p.pstate;
    let spaces = p.spaces;
    let entry_pos = p.entry_pos;

    if pstate == 2 && p.quoted != 0 && (p.options & 1) != 0 && (p.options & 4) != 0 {
        p.status = 1;
        return -1;
    }

    match pstate {
        3 => {
            p.entry_pos -= p.spaces + 1;
            entry_pos = p.entry_pos;
        }
        1 | 2 => {
            if quoted == 0 {
                entry_pos -= spaces;
            }
            if p.options & 8 != 0 {
                unsafe { *p.entry_buf.offset(entry_pos as isize) = 0 };
            }
            if let Some(cb) = cb1 {
                if p.options & 16 != 0 && quoted == 0 && entry_pos == 0 {
                    cb(std::ptr::null_mut(), entry_pos, data);
                } else {
                    cb(p.entry_buf, entry_pos, data);
                }
            }
            p.pstate = 1;
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
