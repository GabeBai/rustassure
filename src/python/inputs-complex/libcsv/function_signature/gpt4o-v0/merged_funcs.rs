
struct CsvParser {
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
    is_space: fn(u8) -> i32,
    is_term: fn(u8) -> i32,
    blk_size: usize,
    malloc_func: fn(usize) -> *mut std::ffi::c_void,
    realloc_func: fn(*mut std::ffi::c_void, usize) -> *mut std::ffi::c_void,
    free_func: fn(*mut std::ffi::c_void),
}


fn csv_set_blk_size(p: &mut CsvParser, size: usize) {
    p.blk_size = size;
}

fn csv_fini(
    p: &mut CsvParser,
    cb1: Option<fn(*const std::ffi::c_void, usize, *mut std::ffi::c_void)>,
    cb2: Option<fn(i32, *mut std::ffi::c_void)>,
    data: *mut std::ffi::c_void,
) -> i32 {
    if p as *const _ == std::ptr::null() {
        return -1;
    }
    let mut quoted = p.quoted;
    let mut pstate = p.pstate;
    let mut spaces = p.spaces;
    let mut entry_pos = p.entry_pos;
    if (pstate == 2) && (p.quoted != 0) && (p.options & 1 != 0) && (p.options & 4 != 0) {
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
                if let Some(ref mut buf) = p.entry_buf {
                    buf[entry_pos] = 0;
                }
            }
            if let Some(cb1) = cb1 {
                if (p.options & 16 != 0) && quoted == 0 && entry_pos == 0 {
                    cb1(std::ptr::null(), entry_pos, data);
                } else {
                    if let Some(ref buf) = p.entry_buf {
                        cb1(buf.as_ptr() as *const std::ffi::c_void, entry_pos, data);
                    }
                }
            }
            pstate = 1;
            entry_pos = 0;
            quoted = 0;
            spaces = 0;
            if let Some(cb2) = cb2 {
                cb2(-1, data);
            }
            pstate = 0;
            entry_pos = 0;
            quoted = 0;
            spaces = 0;
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
    if p as *mut _ as *const _ == std::ptr::null() {
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
    p.is_space = |_| 0;
    p.is_term = |_| 0;
    p.blk_size = 128;
    p.malloc_func = |size| unsafe {
        std::alloc::alloc(std::alloc::Layout::from_size_align(size, 1).unwrap()) as *mut std::ffi::c_void
    };
    p.realloc_func = |ptr, size| unsafe {
        if ptr.is_null() {
            std::alloc::alloc(std::alloc::Layout::from_size_align(size, 1).unwrap()) as *mut std::ffi::c_void
        } else {
            std::alloc::realloc(ptr as *mut u8, std::alloc::Layout::from_size_align(size, 1).unwrap(), size) as *mut std::ffi::c_void
        }
    };
    p.free_func = |ptr| unsafe {
        if !ptr.is_null() {
            std::alloc::dealloc(ptr as *mut u8, std::alloc::Layout::from_size_align(1, 1).unwrap());
        }
    };
    0
}

fn csv_set_realloc_func(p: &mut CsvParser, f: Option<fn(*mut std::ffi::c_void, usize) -> *mut std::ffi::c_void>) {
    if let Some(func) = f {
        p.realloc_func = func;
    }
}

fn csv_increase_buffer(p: &mut CsvParser) -> i32 {
    let realloc_func = p.realloc_func;
    if realloc_func as usize == 0 {
        return 0;
    }
    let mut to_add = p.blk_size;
    let mut vp;
    if p.entry_size >= usize::MAX - to_add {
        to_add = usize::MAX - p.entry_size;
    }
    if to_add == 0 {
        p.status = 3;
        return -1;
    }
    while {
        vp = realloc_func(
            p.entry_buf
                .as_mut()
                .map_or(std::ptr::null_mut(), |buf| buf.as_mut_ptr() as *mut std::ffi::c_void),
            p.entry_size + to_add,
        );
        vp.is_null()
    } {
        to_add /= 2;
        if to_add == 0 {
            p.status = 2;
            return -1;
        }
    }
    p.entry_buf = Some(unsafe { Vec::from_raw_parts(vp as *mut u8, p.entry_size + to_add, p.entry_size + to_add) });
    p.entry_size += to_add;
    0
}

const CSV_ERRORS: [&str; 5] = [
    "success",
    "error parsing data while strict checking enabled",
    "memory exhausted while increasing buffer size",
    "data size too large",
    "invalid status code",
];

fn csv_strerror(status: i32) -> &'static str {
    if status >= 4 || status < 0 {
        CSV_ERRORS[4]
    } else {
        CSV_ERRORS[status as usize]
    }
}

fn csv_get_quote(p: &CsvParser) -> u8 {
    assert!(p as *const _ != std::ptr::null(), "received null csv_parser");
    p.quote_char
}

fn csv_get_delim(p: &CsvParser) -> u8 {
    assert!(p as *const _ != std::ptr::null(), "received null csv_parser");
    p.delim_char
}

fn __bswap_32(__bsx: u32) -> u32 {
    ((__bsx & 0xff000000) >> 24)
        | ((__bsx & 0x00ff0000) >> 8)
        | ((__bsx & 0x0000ff00) << 8)
        | ((__bsx & 0x000000ff) << 24)
}

fn csv_free(p: &mut CsvParser) {
    if p.entry_buf.is_some() && p.free_func as usize != 0 {
        (p.free_func)(p.entry_buf.take().unwrap().as_mut_ptr() as *mut std::ffi::c_void);
    }
    p.entry_size = 0;
}

fn csv_error(p: &CsvParser) -> i32 {
    assert!(p as *const _ != std::ptr::null(), "received null csv_parser");
    p.status
}

fn csv_set_free_func(p: &mut CsvParser, f: fn(*mut std::ffi::c_void)) {
    if (p.free_func as *const () != std::ptr::null()) && (f as *const () != std::ptr::null()) {
        p.free_func = f;
    }
}

type __uint16_t = u16;

fn __uint16_identity(__x: __uint16_t) -> __uint16_t {
    __x
}

fn csv_get_buffer_size(p: &CsvParser) -> usize {
    p.entry_size
}

fn __bswap_16(__bsx: u16) -> u16 {
    ((__bsx >> 8) & 0xff) | ((__bsx & 0xff) << 8)
}

use std::io::{self, Write};
use std::os::raw::c_void;

fn csv_fwrite2(fp: &mut dyn Write, src: *const c_void, src_size: usize, quote: u8) -> i32 {
    let csrc = src as *const u8;
    if csrc.is_null() {
        return 0;
    }
    if fp.write_all(&[quote]).is_err() {
        return -1;
    }
    let mut remaining = src_size;
    let mut csrc = csrc;
    while remaining > 0 {
        unsafe {
            if *csrc == quote {
                if fp.write_all(&[quote]).is_err() {
                    return -1;
                }
            }
            if fp.write_all(&[*csrc]).is_err() {
                return -1;
            }
            remaining -= 1;
            csrc = csrc.add(1);
        }
    }
    if fp.write_all(&[quote]).is_err() {
        return -1;
    }
    0
}

fn csv_set_space_func(p: &mut CsvParser, f: fn(u8) -> i32) {
    p.is_space = f;
}

fn csv_set_term_func(p: &mut CsvParser, f: fn(u8) -> i32) {
    p.is_term = f;
}

fn __bswap_64(__bsx: u64) -> u64 {
    ((__bsx & 0xff00000000000000) >> 56)
        | ((__bsx & 0x00ff000000000000) >> 40)
        | ((__bsx & 0x0000ff0000000000) >> 24)
        | ((__bsx & 0x000000ff00000000) >> 8)
        | ((__bsx & 0x00000000ff000000) << 8)
        | ((__bsx & 0x0000000000ff0000) << 24)
        | ((__bsx & 0x000000000000ff00) << 40)
        | ((__bsx & 0x00000000000000ff) << 56)
}

fn csv_get_opts(p: &CsvParser) -> i32 {
    if p as *const _ == std::ptr::null() {
        return -1;
    }
    p.options as i32
}

fn csv_set_delim(p: &mut CsvParser, c: u8) {
    p.delim_char = c;
}

type __uint64_t = u64;

fn __uint64_identity(__x: __uint64_t) -> __uint64_t {
    __x
}

fn csv_set_quote(p: Option<&mut CsvParser>, c: u8) {
    if let Some(parser) = p {
        parser.quote_char = c;
    }
}

type __uint32_t = u32;

fn __uint32_identity(__x: __uint32_t) -> __uint32_t {
    __x
}

fn csv_set_opts(p: Option<&mut CsvParser>, options: u8) -> i32 {
    match p {
        Some(parser) => {
            parser.options = options;
            0
        }
        None => -1,
    }
}

fn csv_write2(dest: &mut [u8], src: &[u8], quote: u8) -> usize {
    let mut chars = 0;
    let mut cdest = dest.iter_mut();
    let mut csrc = src.iter();

    if src.is_empty() {
        return 0;
    }

    if let Some(d) = cdest.next() {
        *d = quote;
    }
    chars += 1;

    while let Some(&s) = csrc.next() {
        if s == quote {
            if let Some(d) = cdest.next() {
                *d = quote;
            }
            chars += 1;
        }
        if let Some(d) = cdest.next() {
            *d = s;
        }
        chars += 1;
    }

    if let Some(d) = cdest.next() {
        *d = quote;
    }
    chars += 1;

    chars
}

fn csv_parse(
    p: &mut CsvParser,
    s: *const u8,
    len: usize,
    cb1: Option<fn(*const u8, usize, *mut std::ffi::c_void)>,
    cb2: Option<fn(i32, *mut std::ffi::c_void)>,
    data: *mut std::ffi::c_void,
) -> usize {
    assert!(p as *const _ != std::ptr::null(), "received null csv_parser");
    if s.is_null() {
        return 0;
    }
    let us = unsafe { std::slice::from_raw_parts(s, len) };
    let mut pos = 0;
    let delim = p.delim_char;
    let quote = p.quote_char;
    let is_space = p.is_space;
    let is_term = p.is_term;
    let mut quoted = p.quoted != 0;
    let mut pstate = p.pstate;
    let mut spaces = p.spaces;
    let mut entry_pos = p.entry_pos;

    if p.entry_buf.is_none() && pos < len {
        if csv_increase_buffer(p) != 0 {
            p.quoted = quoted as i32;
            p.pstate = pstate;
            p.spaces = spaces;
            p.entry_pos = entry_pos;
            return pos;
        }
    }

    while pos < len {
        if entry_pos == if p.options & 8 != 0 { p.entry_size - 1 } else { p.entry_size } {
            if csv_increase_buffer(p) != 0 {
                p.quoted = quoted as i32;
                p.pstate = pstate;
                p.spaces = spaces;
                p.entry_pos = entry_pos;
                return pos;
            }
        }
        let c = us[pos];
        pos += 1;
        match pstate {
            0 | 1 => {
                if (is_space)(c) != 0 && c != delim {
                    continue;
                } else if (is_term)(c) != 0 {
                    if pstate == 1 {
                        if !quoted {
                            entry_pos -= spaces;
                        }
                        if p.options & 8 != 0 {
                            p.entry_buf.as_mut().unwrap()[entry_pos] = 0;
                        }
                        if let Some(cb1) = cb1 {
                            if p.options & 16 != 0 && !quoted && entry_pos == 0 {
                                cb1(std::ptr::null(), entry_pos, data);
                            } else {
                                cb1(p.entry_buf.as_mut().unwrap().as_ptr(), entry_pos, data);
                            }
                        }
                        pstate = 1;
                        entry_pos = 0;
                        quoted = false;
                        spaces = 0;
                    }
                    if let Some(cb2) = cb2 {
                        cb2(c as i32, data);
                    }
                    pstate = 0;
                    entry_pos = 0;
                    quoted = false;
                    spaces = 0;
                    continue;
                } else if c == delim {
                    if !quoted {
                        entry_pos -= spaces;
                    }
                    if p.options & 8 != 0 {
                        p.entry_buf.as_mut().unwrap()[entry_pos] = 0;
                    }
                    if let Some(cb1) = cb1 {
                        if p.options & 16 != 0 && !quoted && entry_pos == 0 {
                            cb1(std::ptr::null(), entry_pos, data);
                        } else {
                            cb1(p.entry_buf.as_mut().unwrap().as_ptr(), entry_pos, data);
                        }
                    }
                    pstate = 1;
                    entry_pos = 0;
                    quoted = false;
                    spaces = 0;
                } else if c == quote {
                    pstate = 2;
                    quoted = true;
                } else {
                    pstate = 2;
                    quoted = false;
                    p.entry_buf.as_mut().unwrap()[entry_pos] = c;
                    entry_pos += 1;
                }
            }
            2 => {
                if c == quote {
                    if quoted {
                        p.entry_buf.as_mut().unwrap()[entry_pos] = c;
                        entry_pos += 1;
                        pstate = 3;
                    } else {
                        if p.options & 1 != 0 {
                            p.status = 1;
                            p.quoted = quoted as i32;
                            p.pstate = pstate;
                            p.spaces = spaces;
                            p.entry_pos = entry_pos;
                            return pos - 1;
                        }
                        p.entry_buf.as_mut().unwrap()[entry_pos] = c;
                        entry_pos += 1;
                        spaces = 0;
                    }
                } else if c == delim {
                    if quoted {
                        p.entry_buf.as_mut().unwrap()[entry_pos] = c;
                        entry_pos += 1;
                    } else {
                        if !quoted {
                            entry_pos -= spaces;
                        }
                        if p.options & 8 != 0 {
                            p.entry_buf.as_mut().unwrap()[entry_pos] = 0;
                        }
                        if let Some(cb1) = cb1 {
                            if p.options & 16 != 0 && !quoted && entry_pos == 0 {
                                cb1(std::ptr::null(), entry_pos, data);
                            } else {
                                cb1(p.entry_buf.as_mut().unwrap().as_ptr(), entry_pos, data);
                            }
                        }
                        pstate = 1;
                        entry_pos = 0;
                        quoted = false;
                        spaces = 0;
                    }
                } else if (is_term)(c) != 0 {
                    if !quoted {
                        if !quoted {
                            entry_pos -= spaces;
                        }
                        if p.options & 8 != 0 {
                            p.entry_buf.as_mut().unwrap()[entry_pos] = 0;
                        }
                        if let Some(cb1) = cb1 {
                            if p.options & 16 != 0 && !quoted && entry_pos == 0 {
                                cb1(std::ptr::null(), entry_pos, data);
                            } else {
                                cb1(p.entry_buf.as_mut().unwrap().as_ptr(), entry_pos, data);
                            }
                        }
                        pstate = 1;
                        entry_pos = 0;
                        quoted = false;
                        spaces = 0;
                        if let Some(cb2) = cb2 {
                            cb2(c as i32, data);
                        }
                        pstate = 0;
                        entry_pos = 0;
                        quoted = false;
                        spaces = 0;
                    } else {
                        p.entry_buf.as_mut().unwrap()[entry_pos] = c;
                        entry_pos += 1;
                    }
                } else if !quoted && (is_space)(c) != 0 {
                    p.entry_buf.as_mut().unwrap()[entry_pos] = c;
                    entry_pos += 1;
                    spaces += 1;
                } else {
                    p.entry_buf.as_mut().unwrap()[entry_pos] = c;
                    entry_pos += 1;
                    spaces = 0;
                }
            }
            3 => {
                if c == delim {
                    entry_pos -= spaces + 1;
                    if !quoted {
                        entry_pos -= spaces;
                    }
                    if p.options & 8 != 0 {
                        p.entry_buf.as_mut().unwrap()[entry_pos] = 0;
                    }
                    if let Some(cb1) = cb1 {
                        if p.options & 16 != 0 && !quoted && entry_pos == 0 {
                            cb1(std::ptr::null(), entry_pos, data);
                        } else {
                            cb1(p.entry_buf.as_mut().unwrap().as_ptr(), entry_pos, data);
                        }
                    }
                    pstate = 1;
                    entry_pos = 0;
                    quoted = false;
                    spaces = 0;
                } else if (is_term)(c) != 0 {
                    entry_pos -= spaces + 1;
                    if !quoted {
                        entry_pos -= spaces;
                    }
                    if p.options & 8 != 0 {
                        p.entry_buf.as_mut().unwrap()[entry_pos] = 0;
                    }
                    if let Some(cb1) = cb1 {
                        if p.options & 16 != 0 && !quoted && entry_pos == 0 {
                            cb1(std::ptr::null(), entry_pos, data);
                        } else {
                            cb1(p.entry_buf.as_mut().unwrap().as_ptr(), entry_pos, data);
                        }
                    }
                    pstate = 1;
                    entry_pos = 0;
                    quoted = false;
                    spaces = 0;
                    if let Some(cb2) = cb2 {
                        cb2(c as i32, data);
                    }
                    pstate = 0;
                    entry_pos = 0;
                    quoted = false;
                    spaces = 0;
                } else if (is_space)(c) != 0 {
                    p.entry_buf.as_mut().unwrap()[entry_pos] = c;
                    entry_pos += 1;
                    spaces += 1;
                } else if c == quote {
                    if spaces != 0 {
                        if p.options & 1 != 0 {
                            p.status = 1;
                            p.quoted = quoted as i32;
                            p.pstate = pstate;
                            p.spaces = spaces;
                            p.entry_pos = entry_pos;
                            return pos - 1;
                        }
                        spaces = 0;
                        p.entry_buf.as_mut().unwrap()[entry_pos] = c;
                        entry_pos += 1;
                    } else {
                        pstate = 2;
                    }
                } else {
                    if p.options & 1 != 0 {
                        p.status = 1;
                        p.quoted = quoted as i32;
                        p.pstate = pstate;
                        p.spaces = spaces;
                        p.entry_pos = entry_pos;
                        return pos - 1;
                    }
                    pstate = 2;
                    spaces = 0;
                    p.entry_buf.as_mut().unwrap()[entry_pos] = c;
                    entry_pos += 1;
                }
            }
            _ => {}
        }
    }
    p.quoted = quoted as i32;
    p.pstate = pstate;
    p.spaces = spaces;
    p.entry_pos = entry_pos;
    pos
}

fn csv_fwrite(fp: &mut dyn Write, src: *const c_void, src_size: usize) -> i32 {
    csv_fwrite2(fp, src, src_size, 0x22)
}

fn csv_write(dest: &mut [u8], src: &[u8]) -> usize {
    csv_write2(dest, src, 0x22)
}
