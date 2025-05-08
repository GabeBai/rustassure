use std::ffi::c_void;
use std::mem;
use std::ptr;

#[repr(C)]
pub struct CsvParser {
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
    malloc_func: Option<fn(usize) -> *mut c_void>,
    realloc_func: Option<fn(*mut c_void, usize) -> *mut c_void>,
    free_func: Option<fn(*mut c_void)>,
}

pub extern "C" fn csv_fini(
    p: &mut CsvParser,
    cb1: Option<fn(*mut c_void, usize, *mut c_void)>,
    cb2: Option<fn(i32, *mut c_void)>,
    data: *mut c_void,
) -> i32 {
    if p.is_null() {
        return -1;
    }
    
    let quoted = p.quoted;
    let pstate = p.pstate;
    let spaces = p.spaces;
    let mut entry_pos = p.entry_pos;

    if pstate == 2 && quoted != 0 && (p.options & 1) != 0 && (p.options & 4) != 0 {
        p.status = 1;
        return -1;
    }

    match pstate {
        3 => {
            entry_pos -= spaces + 1;
        }
        1 | 2 => {
            if quoted == 0 {
                entry_pos -= spaces;
            }
            if (p.options & 8) != 0 {
                unsafe { *p.entry_buf.add(entry_pos) = 0; }
            }
            if let Some(cb1_fn) = cb1 {
                if (p.options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                    cb1_fn(ptr::null_mut(), entry_pos, data);
                } else {
                    cb1_fn(p.entry_buf, entry_pos, data);
                }
            }
            p.pstate = 1;
            entry_pos = 0;
        }
        _ => {}
    }

    if let Some(cb2_fn) = cb2 {
        cb2_fn(-1, data);
    }

    p.spaces = 0;
    p.quoted = 0;
    p.entry_pos = 0;
    p.status = 0;
    p.pstate = 0;

    0
}
