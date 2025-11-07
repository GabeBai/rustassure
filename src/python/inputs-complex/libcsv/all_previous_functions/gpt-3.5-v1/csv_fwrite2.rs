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

fn csv_set_realloc_func(p: &mut CsvParser, f: Option<fn(*mut std::ffi::c_void, usize) -> *mut std::ffi::c_void>) {
    if let Some(func) = f {
        p.realloc_func = Some(func);
    }
}

fn csv_increase_buffer(p: &mut Option<CsvParser>) -> i32 {
    if let Some(parser) = p {
        if parser.realloc_func.is_none() {
            return 0;
        }
        let mut to_add = parser.blk_size;
        let mut vp: *mut std::ffi::c_void;
        if parser.entry_size >= std::u64::MAX as usize - to_add {
            to_add = (std::u64::MAX as usize - parser.entry_size).into();
        }
        if to_add == 0 {
            parser.status = 3;
            return -1;
        }
        while {
            vp = parser.realloc_func.unwrap()(parser.entry_buf as *mut std::ffi::c_void, (parser.entry_size + to_add) as usize);
            vp.is_null()
        } {
            to_add /= 2;
            if to_add == 0 {
                parser.status = 2;
                return -1;
            }
        }
        parser.entry_buf = vp as *mut u8;
        parser.entry_size += to_add;
    }
    0
}

use std::os::raw::{c_char, c_int};

#[repr(C)]
pub struct timespec {
    tv_sec: i64,
    tv_nsec: i64,
}

#[repr(C)]
pub struct fd_set {
    __fds_bits: [i64; 16],
}

const CSV_ERRORS: [&str; 5] = [
    "success",
    "error parsing data while strict checking enabled",
    "memory exhausted while increasing buffer size",
    "data size too large",
    "invalid status code",
];

#[no_mangle]
pub extern "C" fn csv_strerror(status: c_int) -> *const c_char {
    if status >= 4 || status < 0 {
        CSV_ERRORS[4].as_ptr() as *const c_char
    } else {
        CSV_ERRORS[status as usize].as_ptr() as *const c_char
    }
}

#[no_mangle]
pub extern "C" fn csv_get_quote(p: *const CsvParser) -> u8 {
    assert!(!p.is_null(), "received null csv_parser");
    unsafe { (*p).quote_char }
}

pub extern "C" fn csv_get_delim(p: *const CsvParser) -> u8 {
    assert!(!p.is_null(), "received null csv_parser");
    unsafe { (*p).delim_char }
}

fn bswap_32(bsx: u32) -> u32 {
    ((bsx & 0xff000000) >> 24) | ((bsx & 0x00ff0000) >> 8) | ((bsx & 0x0000ff00) << 8) | ((bsx & 0x000000ff) << 24)
}

extern "C" {
    fn csv_write2(dest: *mut std::ffi::c_void, dest_size: usize, src: *const std::ffi::c_void, src_size: usize, quote: u8) -> usize;
}

#[no_mangle]
pub extern "C" fn csv_write(dest: *mut std::ffi::c_void, dest_size: usize, src: *const std::ffi::c_void, src_size: usize) -> usize {
    unsafe { csv_write2(dest, dest_size, src, src_size, 0x22) }
}

fn csv_free(p: &mut Option<CsvParser>) {
    if let Some(parser) = p {
        if parser.entry_buf.is_null() {
            return;
        }
        if let Some(free_func) = parser.free_func {
            free_func(parser.entry_buf as *mut std::ffi::c_void);
        }
        parser.entry_buf = std::ptr::null_mut();
        parser.entry_size = 0;
    }
}

fn csv_error(p: &CsvParser) -> i32 {
    assert!(!p.entry_buf.is_null(), "received null csv_parser");
    p.status
}

pub extern "C" fn csv_set_free_func(p: *mut CsvParser, f: Option<fn(*mut std::ffi::c_void)>) {
    if !p.is_null() && !f.is_none() {
        unsafe {
            (*p).free_func = Some(std::mem::transmute(f));
        }
    }
}

fn __uint16_identity(x: u16) -> u16 {
    x
}

fn csv_get_buffer_size(p: *const CsvParser) -> usize {
    if !p.is_null() {
        unsafe { (*p).entry_size }
    } else {
        0
    }
}

fn __bswap_16(__bsx: u16) -> u16 {
    ((__bsx >> 8) & 0xff) | ((__bsx & 0xff) << 8)
}

#[no_mangle]
pub extern "C" fn csv_fwrite2(fp: *mut std::ffi::c_void, src: *const std::ffi::c_void, src_size: usize, quote: u8) -> c_int {
    let csrc = src as *const u8;
    if fp.is_null() || src.is_null() {
        return 0;
    }
    if unsafe { std::io::Write::write(&mut std::fs::File::from_raw_fd(fp as i32), &[quote]) }.is_err() {
        return -1;
    }
    let mut csrc_iter = csrc;
    let mut remaining_size = src_size;
    while remaining_size > 0 {
        if *csrc_iter == quote {
            if unsafe { std::io::Write::write(&mut std::fs::File::from_raw_fd(fp as i32), &[quote]) }.is_err() {
                return -1;
            }
        }
        if unsafe { std::io::Write::write(&mut std::fs::File::from_raw_fd(fp as i32), &[*csrc_iter]) }.is_err() {
            return -1;
        }
        remaining_size -= 1;
        csrc_iter = csrc_iter.offset(1);
    }
    if unsafe { std::io::Write::write(&mut std::fs::File::from_raw_fd(fp as i32), &[quote]) }.is_err() {
        return -1;
    }
    0
}
