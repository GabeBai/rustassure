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

pub extern "C" fn csv_set_term_func(p: *mut CsvParser, f: Option<fn(u8) -> i32>) {
    if !p.is_null() {
        unsafe {
            (*p).is_term = f;
        }
    }
}

pub extern "C" fn csv_parse(p: &mut CsvParser, data: *const u8, len: usize, cb1: Option<fn(*mut std::ffi::c_void, usize, *mut std::ffi::c_void)>, cb2: Option<fn(i32, *mut std::ffi::c_void)>, user_data: *mut std::ffi::c_void) -> i32 {
    if p.entry_buf.is_null() {
        return -1;
    }

    let mut pos = 0;
    while pos < len {
        let ch = unsafe { *data.add(pos) };
        let pstate = p.pstate;
        let quoted = p.quoted;
        let spaces = p.spaces;

        match pstate {
            0 => {
                if ch == p.delim_char {
                    if let Some(cb) = cb1 {
                        cb(p.entry_buf as *mut std::ffi::c_void, p.entry_pos, user_data);
                    }
                    p.entry_pos = 0;
                    p.spaces = 0;
                } else if ch == p.quote_char {
                    p.pstate = 2;
                    p.quoted = 1;
                } else if ch == b'\r' || ch == b'\n' {
                    if let Some(cb) = cb1 {
                        cb(p.entry_buf as *mut std::ffi::c_void, p.entry_pos, user_data);
                    }
                    p.entry_pos = 0;
                    p.spaces = 0;
                    if let Some(cb) = cb2 {
                        cb(-1, user_data);
                    }
                } else {
                    if p.is_space.unwrap()(ch) != 0 {
                        p.spaces += 1;
                    } else {
                        unsafe { *p.entry_buf.add(p.entry_pos) = ch };
                        p.entry_pos += 1;
                    }
                }
            }
            1 => {
                if ch == p.delim_char {
                    if let Some(cb) = cb1 {
                        cb(p.entry_buf as *mut std::ffi::c_void, p.entry_pos, user_data);
                    }
                    p.entry_pos = 0;
                    p.spaces = 0;
                    p.pstate = 0;
                } else if ch == b'\r' || ch == b'\n' {
                    if let Some(cb) = cb1 {
                        cb(p.entry_buf as *mut std::ffi::c_void, p.entry_pos, user_data);
                    }
                    p.entry_pos = 0;
                    p.spaces = 0;
                    if let Some(cb) = cb2 {
                        cb(-1, user_data);
                    }
                    p.pstate = 0;
                } else {
                    if p.is_space.unwrap()(ch) != 0 {
                        p.spaces += 1;
                    } else {
                        unsafe { *p.entry_buf.add(p.entry_pos) = ch };
                        p.entry_pos += 1;
                    }
                }
            }
            2 => {
                if ch == p.quote_char {
                    p.pstate = 1;
                } else {
                    if p.options & 2 != 0 {
                        unsafe { *p.entry_buf.add(p.entry_pos) = p.quote_char };
                        p.entry_pos += 1;
                    }
                    unsafe { *p.entry_buf.add(p.entry_pos) = ch };
                    p.entry_pos += 1;
                }
            }
            _ => {}
        }

        pos += 1;
    }

    0
}

extern "C" {
    fn csv_fwrite2(fp: *mut std::ffi::c_void, src: *const std::ffi::c_void, src_size: usize, quote: u8) -> c_int;
}

#[no_mangle]
pub extern "C" fn csv_fwrite(fp: *mut std::ffi::c_void, src: *const std::ffi::c_void, src_size: usize) -> c_int {
    unsafe { csv_fwrite2(fp, src, src_size, 0x22) }
}

fn bswap_64(bsx: u64) -> u64 {
    ((bsx & 0xff00000000000000) >> 56) | ((bsx & 0x00ff000000000000) >> 40) | ((bsx & 0x0000ff0000000000) >> 24) | ((bsx & 0x000000ff00000000) >> 8) | ((bsx & 0x00000000ff000000) << 8) | ((bsx & 0x0000000000ff0000) << 24) | ((bsx & 0x000000000000ff00) << 40) | ((bsx & 0x00000000000000ff) << 56)
}

pub extern "C" fn csv_get_opts(p: *const CsvParser) -> c_int {
    if p.is_null() {
        return -1;
    }
    unsafe { (*p).options as c_int }
}

pub extern "C" fn csv_set_delim(p: *mut CsvParser, c: u8) {
    if let Some(parser) = unsafe { p.as_mut() } {
        parser.delim_char = c;
    }
}

fn __uint64_identity(x: u64) -> u64 {
    x
}

pub extern "C" fn csv_set_quote(p: *mut CsvParser, c: u8) {
    if let Some(parser) = unsafe { p.as_mut() } {
        parser.quote_char = c;
    }
}

fn __uint32_identity(x: u32) -> u32 {
    x
}

pub extern "C" fn csv_set_opts(p: *mut CsvParser, options: u8) -> c_int {
    if p.is_null() {
        return -1;
    }
    unsafe {
        (*p).options = options;
    }
    0
}
