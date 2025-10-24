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



use std::os::raw::c_char;

pub fn csv_strerror(status: i32) -> *const c_char {
    const CSV_ERRORS: [&'static str; 5] = [
        "Success",
        "Invalid Quoting",
        "Invalid Escaping",
        "Invalid Delimiter",
        "Memory Allocation Failure",
    ];

    if status >= 4 || status < 0 {
        CSV_ERRORS[4].as_ptr() as *const c_char
    } else {
        CSV_ERRORS[status as usize].as_ptr() as *const c_char
    }
}

fn csv_get_buffer_size(p: *const CsvParser) -> usize {
    if !p.is_null() {
        unsafe { (*p).entry_size }
    } else {
        0
    }
}

use std::os::raw::c_uchar;

extern "C" {
    fn csv_set_space_func(p: *mut CsvParser, f: Option<fn(c_uchar) -> i32>);
}

use std::os::raw::c_void;

fn csv_increase_buffer(p: &mut CsvParser) -> i32 {
    if p.entry_buf.is_null() {
        return 0;
    }
    if p.realloc_func.is_none() {
        return 0;
    }
    let mut to_add = p.blk_size;
    let mut vp: *mut c_void;
    if p.entry_size >= usize::MAX - to_add {
        to_add = usize::MAX - p.entry_size;
    }
    if to_add == 0 {
        p.status = 3;
        return -1;
    }
    while {
        vp = p.realloc_func.unwrap()(p.entry_buf as *mut c_void, p.entry_size + to_add);
        vp == std::ptr::null_mut()
    } {
        to_add /= 2;
        if to_add == 0 {
            p.status = 2;
            return -1;
        }
    }
    p.entry_buf = vp as *mut u8;
    p.entry_size += to_add;
    0
}

extern "C" {
    fn csv_set_quote(p: *mut CsvParser, c: u8);
}

use std::os::raw::c_uint;

#[inline]
fn __bswap_32(__bsx: c_uint) -> c_uint {
    ((__bsx & 0xff00_0000) >> 24) | ((__bsx & 0x00ff_0000) >> 8) | ((__bsx & 0x0000_ff00) << 8) | ((__bsx & 0x0000_00ff) << 24)
}

extern "C" {
    fn csv_get_opts(p: *const CsvParser) -> i32;
}

extern "C" {
    fn csv_set_opts(p: *mut CsvParser, options: u8) -> i32;
}

extern "C" {
    fn csv_set_blk_size(p: *mut CsvParser, size: usize);
}

extern "C" {
    fn csv_set_free_func(p: *mut CsvParser, f: Option<extern "C" fn(*mut std::ffi::c_void)>);
}

#[inline]
fn __uint64_identity(__x: u64) -> u64 {
    __x
}

extern "C" {
    fn csv_get_quote(p: *const CsvParser) -> u8;
}

extern "C" {
    fn csv_get_delim(p: *const CsvParser) -> u8;
}

extern "C" {
    fn csv_set_term_func(p: *mut CsvParser, f: Option<extern "C" fn(u8) -> i32>);
}

#[inline]
fn __bswap_64(__bsx: u64) -> u64 {
    ((__bsx & 0xff00_0000_0000_0000) >> 56) | ((__bsx & 0x00ff_0000_0000_0000) >> 40) | ((__bsx & 0x0000_ff00_0000_0000) >> 24) | ((__bsx & 0x0000_00ff_0000_0000) >> 8) | ((__bsx & 0x0000_0000_ff00_0000) << 8) | ((__bsx & 0x0000_0000_00ff_0000) << 24) | ((__bsx & 0x0000_0000_0000_ff00) << 40) | ((__bsx & 0x0000_0000_0000_00ff) << 56)
}

#[inline]
fn __uint32_identity(__x: u32) -> u32 {
    __x
}

pub fn csv_fwrite2(fp: *mut std::fs::File, src: *const std::ffi::c_void, src_size: usize, quote: u8) -> i32 {
    let csrc = src as *const u8;
    if fp.is_null() || src.is_null() {
        return 0;
    }
    if unsafe { std::io::Write::write(&mut *fp, &quote.to_ne_bytes()) }.is_err() {
        return -1;
    }
    let mut csrc_iter = csrc;
    let mut remaining_size = src_size;
    while remaining_size > 0 {
        if unsafe { std::io::Write::write(&mut *fp, &quote.to_ne_bytes()) }.is_err() {
            return -1;
        }
        if unsafe { std::io::Write::write(&mut *fp, std::slice::from_ref(&*csrc_iter)) }.is_err() {
            return -1;
        }
        remaining_size -= 1;
        csrc_iter = unsafe { csrc_iter.add(1) };
    }
    if unsafe { std::io::Write::write(&mut *fp, &quote.to_ne_bytes()) }.is_err() {
        return -1;
    }
    0
}

extern "C" {
    fn csv_set_realloc_func(p: *mut CsvParser, f: Option<extern "C" fn(*mut c_void, usize) -> *mut c_void>);
}

#[inline]
fn __uint16_identity(__x: u16) -> u16 {
    __x
}

extern "C" {
    fn csv_set_delim(p: *mut CsvParser, c: u8);
}

extern "C" {
    fn csv_fini(p: *mut CsvParser, cb1: Option<extern "C" fn(*mut std::ffi::c_void, usize, *mut std::ffi::c_void)>, cb2: Option<extern "C" fn(i32, *mut std::ffi::c_void)>, data: *mut std::ffi::c_void) -> i32;
}

extern "C" {
    fn csv_free(p: *mut CsvParser);
}

#[inline]
fn __bswap_16(__bsx: u16) -> u16 {
    ((__bsx >> 8) & 0xff) | ((__bsx & 0xff) << 8)
}

#[no_mangle]
pub extern "C" fn csv_write2(dest: *mut std::ffi::c_void, dest_size: usize, src: *const std::ffi::c_void, src_size: usize, quote: u8) -> usize {
    let csrc = src as *const u8;
    let mut cdest = dest as *mut u8;
    let mut chars = 0;

    if src.is_null() {
        return 0;
    }

    let mut dest_size = dest_size;
    if dest.is_null() {
        dest_size = 0;
    }

    if dest_size > 0 {
        unsafe { *cdest = quote };
        chars += 1;
        cdest = unsafe { cdest.add(1) };
    }

    let mut src_size = src_size;
    let mut csrc_iter = csrc;
    while src_size > 0 {
        if unsafe { *csrc_iter } == quote {
            if dest_size > chars {
                unsafe { *cdest = quote };
                cdest = unsafe { cdest.add(1) };
                chars += 1;
            }
            chars += 1;
        }

        if dest_size > chars {
            unsafe { *cdest = *csrc_iter };
            cdest = unsafe { cdest.add(1) };
            chars += 1;
        }

        src_size -= 1;
        csrc_iter = unsafe { csrc_iter.add(1) };
    }

    if dest_size > chars {
        unsafe { *cdest = quote };
        chars += 1;
    }

    chars
}

pub extern "C" fn csv_parse(p: *mut CsvParser, s: *const c_void, len: usize, cb1: Option<extern "C" fn(*mut c_void, usize, *mut c_void)>, cb2: Option<extern "C" fn(i32, *mut c_void)>, data: *mut c_void) -> usize {
    unsafe {
        if p.is_null() {
            panic!("received null csv_parser");
        }
    }
    if s.is_null() {
        return 0;
    }
    let us = s as *const u8;
    let mut pos = 0;
    let delim = (*p).delim_char;
    let quote = (*p).quote_char;
    let is_space = (*p).is_space;
    let is_term = (*p).is_term;
    let mut c: u8;
    let mut entry_pos = (*p).entry_pos;
    let mut quoted = (*p).quoted;
    let mut pstate = (*p).pstate;
    let mut spaces = (*p).spaces;
    if (*p).entry_buf.is_null() && pos < len {
        if csv_increase_buffer(&mut *p) != 0 {
            (*p).quoted = quoted;
            (*p).pstate = pstate;
            (*p).spaces = spaces;
            (*p).entry_pos = entry_pos;
            return pos;
        }
    }
    while pos < len {
        if entry_pos == if (*p).options & 8 != 0 { (*p).entry_size - 1 } else { (*p).entry_size } {
            if csv_increase_buffer(&mut *p) != 0 {
                (*p).quoted = quoted;
                (*p).pstate = pstate;
                (*p).spaces = spaces;
                (*p).entry_pos = entry_pos;
                return pos;
            }
        }
        c = *us.offset(pos as isize);
        match pstate {
            0 | 1 => {
                if is_space.map_or_else(|| c == 0x20 || c == 0x09, |f| f(c) != 0) && c != delim {
                    continue;
                } else if is_term.map_or_else(|| c == 0x0d || c == 0x0a, |f| f(c) != 0) {
                    if pstate == 1 {
                        if !quoted {
                            entry_pos -= spaces;
                        }
                        if (*p).options & 8 != 0 {
                            (*p).entry_buf.offset(entry_pos as isize).write(0);
                        }
                        if cb1.is_some() && (*p).options & 16 != 0 && quoted == 0 && entry_pos == 0 {
                            cb1.unwrap()(std::ptr::null_mut(), entry_pos, data);
                        } else if cb1.is_some() {
                            cb1.unwrap()((*p).entry_buf as *mut c_void, entry_pos, data);
                        }
                        pstate = 1;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;
                    }
                    if cb2.is_some() {
                        cb2.unwrap()(c.into(), data);
                    }
                    pstate = 0;
                    entry_pos = 0;
                    quoted = 0;
                    spaces = 0;
                } else if c == delim {
                    if !quoted {
                        entry_pos -= spaces;
                    }
                    if (*p).options & 8 != 0 {
                        (*p).entry_buf.offset(entry_pos as isize).write(0);
                    }
                    if cb1.is_some() && (*p).options & 16 != 0 && quoted == 0 && entry_pos == 0 {
                        cb1.unwrap()(std::ptr::null_mut(), entry_pos, data);
                    } else if cb1.is_some() {
                        cb1.unwrap()((*p).entry_buf as *mut c_void, entry_pos, data);
                    }
                    pstate = 1;
                    entry_pos = 0;
                    quoted = 0;
                    spaces = 0;
                    break;
                } else if c == quote {
                    pstate = 2;
                    quoted = 1;
                } else {
                    pstate = 2;
                    quoted = 0;
                    (*p).entry_buf.offset(entry_pos as isize).write(c);
                    entry_pos += 1;
                }
            }
            2 => {
                if c == quote {
                    if quoted != 0 {
                        (*p).entry_buf.offset(entry_pos as isize).write(c);
                        pstate = 3;
                    } else {
                        if (*p).options & 1 != 0 {
                            (*p).status = 1;
                            (*p).quoted = quoted;
                            (*p).pstate = pstate;
                            (*p).spaces = spaces;
                            (*p).entry_pos = entry_pos;
                            return pos - 1;
                        }
                        (*p).entry_buf.offset(entry_pos as isize).write(c);
                        spaces = 0;
                    }
                } else if c == delim {
                    if quoted != 0 {
                        (*p).entry_buf.offset(entry_pos as isize).write(c);
                    } else {
                        if !quoted {
                            entry_pos -= spaces;
                        }
                        if (*p).options & 8 != 0 {
                            (*p).entry_buf.offset(entry_pos as isize).write(0);
                        }
                        if cb1.is_some() && (*p).options & 16 != 0 && quoted == 0 && entry_pos == 0 {
                            cb1.unwrap()(std::ptr::null_mut(), entry_pos, data);
                        } else if cb1.is_some() {
                            cb1.unwrap()((*p).entry_buf as *mut c_void, entry_pos, data);
                        }
                        pstate = 1;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;
                    }
                } else if is_term.map_or_else(|| c == 0x0d || c == 0x0a, |f| f(c) != 0) {
                    if !quoted {
                        if !quoted {
                            entry_pos -= spaces;
                        }
                        if (*p).options & 8 != 0 {
                            (*p).entry_buf.offset(entry_pos as isize).write(0);
                        }
                        if cb1.is_some() && (*p).options & 16 != 0 && quoted == 0 && entry_pos == 0 {
                            cb1.unwrap()(std::ptr::null_mut(), entry_pos, data);
                        } else if cb1.is_some() {
                            cb1.unwrap()((*p).entry_buf as *mut c_void, entry_pos, data);
                        }
                        pstate = 1;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;
                    } else {
                        (*p).entry_buf.offset(entry_pos as isize).write(c);
                    }
                } else if !quoted && is_space.map_or_else(|| c == 0x20 || c == 0x09, |f| f(c) != 0) {
                    (*p).entry_buf.offset(entry_pos as isize).write(c);
                    entry_pos += 1;
                    spaces += 1;
                } else {
                    (*p).entry_buf.offset(entry_pos as isize).write(c);
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
                    if (*p).options & 8 != 0 {
                        (*p).entry_buf.offset(entry_pos as isize).write(0);
                    }
                    if cb1.is_some() && (*p).options & 16 != 0 && quoted == 0 && entry_pos == 0 {
                        cb1.unwrap()(std::ptr::null_mut(), entry_pos, data);
                    } else if cb1.is_some() {
                        cb1.unwrap()((*p).entry_buf as *mut c_void, entry_pos, data);
                    }
                    pstate = 1;
                    entry_pos = 0;
                    quoted = 0;
                    spaces = 0;
                } else if is_term.map_or_else(|| c == 0x0d || c == 0x0a, |f| f(c) != 0) {
                    entry_pos -= spaces + 1;
                    if !quoted {
                        entry_pos -= spaces;
                    }
                    if (*p).options & 8 != 0 {
                        (*p).entry_buf.offset(entry_pos as isize).write(0);
                    }
                    if cb1.is_some() && (*p).options & 16 != 0 && quoted == 0 && entry_pos == 0 {
                        cb1.unwrap()(std::ptr::null_mut(), entry_pos, data);
                    } else if cb1.is_some() {
                        cb1.unwrap()((*p).entry_buf as *mut c_void, entry_pos, data);
                    }
                    if cb2.is_some() {
                        cb2.unwrap()(c.into(), data);
                    }
                    pstate = 0;
                    entry_pos = 0;
                    quoted = 0;
                    spaces = 0;
                } else if is_space.map_or_else(|| c == 0x20 || c == 0x09, |f| f(c) != 0) {
                    (*p).entry_buf.offset(entry_pos as isize).write(c);
                    entry_pos += 1;
                    spaces += 1;
                } else if c == quote {
                    if spaces != 0 {
                        if (*p).options & 1 != 0 {
                            (*p).status = 1;
                            (*p).quoted = quoted;
                            (*p).pstate = pstate;
                            (*p).spaces = spaces;
                            (*p).entry_pos = entry_pos;
                            return pos - 1;
                        }
                        spaces = 0;
                        (*p).entry_buf.offset(entry_pos as isize).write(c);
                    } else {
                        pstate = 2;
                    }
                } else {
                    if (*p).options & 1 != 0 {
                        (*p).status = 1;
                        (*p).quoted = quoted;
                        (*p).pstate = pstate;
                        (*p).spaces = spaces;
                        (*p).entry_pos = entry_pos;
                        return pos - 1;
                    }
                    pstate = 2;
                    spaces = 0;
                    (*p).entry_buf.offset(entry_pos as isize).write(c);
                }
            }
            _ => {}
        }
        pos += 1;
    }
    (*p).quoted = quoted;
    (*p).pstate = pstate;
    (*p).spaces = spaces;
    (*p).entry_pos = entry_pos;
    pos
}
