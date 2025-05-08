use std::os::raw::{c_void, c_int};

struct CsvParser {
    pstate: c_int,
    quoted: c_int,
    spaces: usize,
    entry_buf: *mut u8,
    entry_pos: usize,
    entry_size: usize,
    status: c_int,
    options: u8,
    quote_char: u8,
    delim_char: u8,
    is_space: Option<fn(u8) -> c_int>,
    is_term: Option<fn(u8) -> c_int>,
    blk_size: usize,
    malloc_func: Option<fn(usize) -> *mut c_void>,
    realloc_func: Option<fn(*mut c_void, usize) -> *mut c_void>,
    free_func: Option<fn(*mut c_void)>,
}

impl CsvParser {
    fn is_null(&self) -> bool {
        self.entry_buf.is_null()
    }
}

fn csv_fini(p: &mut CsvParser, cb1: Option<fn(*mut c_void, usize, *mut c_void)>, cb2: Option<fn(c_int, *mut c_void)>, data: *mut c_void) -> c_int {
    if p.is_null() {
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
            if !quoted {
                entry_pos -= spaces;
            }
            if (p.options & 8) != 0 {
                unsafe {
                    *p.entry_buf.add(entry_pos) = 0;
                }
            }
            if let Some(cb) = cb1 {
                if (p.options & 16) != 0 && quoted == 0 && entry_pos == 0 {
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
