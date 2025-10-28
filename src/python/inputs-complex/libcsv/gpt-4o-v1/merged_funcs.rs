struct CsvParser<'a> {
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
    is_space: Box<dyn Fn(u8) -> i32 + 'a>,
    is_term: Box<dyn Fn(u8) -> i32 + 'a>,
    blk_size: usize,
    malloc_func: Box<dyn Fn(usize) -> *mut std::ffi::c_void + 'a>,
    realloc_func: Box<dyn Fn(*mut std::ffi::c_void, usize) -> *mut std::ffi::c_void + 'a>,
    free_func: Box<dyn Fn(*mut std::ffi::c_void) + 'a>,
}



fn csv_set_blk_size(p: &mut CsvParser, size: usize) {
    p.blk_size = size;
}

fn csv_fini<'a>(
    p: &mut CsvParser<'a>,
    cb1: Option<fn(*const u8, usize, *mut std::ffi::c_void)>,
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
            if (p.options & 8) != 0 {
                if let Some(ref mut buf) = p.entry_buf {
                    buf[entry_pos] = 0;
                }
            }
            if let Some(cb1) = cb1 {
                if (p.options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                    cb1(std::ptr::null(), entry_pos, data);
                } else {
                    if let Some(ref buf) = p.entry_buf {
                        cb1(buf.as_ptr(), entry_pos, data);
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

fn csv_init<'a>(p: &mut CsvParser<'a>, options: u8) -> i32 {
    if p as *const _ == std::ptr::null() {
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
    p.is_space = Box::new(|_| 0);
    p.is_term = Box::new(|_| 0);
    p.blk_size = 128;
    p.malloc_func = Box::new(|size| {
        unsafe {
            std::alloc::alloc(std::alloc::Layout::from_size_align(size, 1).unwrap()) as *mut std::ffi::c_void
        }
    });
    p.realloc_func = Box::new(|ptr, size| {
        unsafe {
            if ptr.is_null() {
                std::alloc::alloc(std::alloc::Layout::from_size_align(size, 1).unwrap()) as *mut std::ffi::c_void
            } else {
                std::alloc::realloc(ptr as *mut u8, std::alloc::Layout::from_size_align(size, 1).unwrap(), size) as *mut std::ffi::c_void
            }
        }
    });
    p.free_func = Box::new(|ptr| {
        unsafe {
            if !ptr.is_null() {
                std::alloc::dealloc(ptr as *mut u8, std::alloc::Layout::from_size_align(1, 1).unwrap());
            }
        }
    });
    0
}

fn csv_set_realloc_func<'a>(p: &mut CsvParser<'a>, f: Box<dyn Fn(*mut std::ffi::c_void, usize) -> *mut std::ffi::c_void + 'a>) {
    p.realloc_func = f;
}

fn csv_increase_buffer(p: &mut CsvParser) -> i32 {
    if p.entry_buf.is_none() {
        return 0;
    }
    let mut to_add = p.blk_size;
    let mut vp: *mut std::ffi::c_void;
    if p.entry_size >= usize::MAX - to_add {
        to_add = usize::MAX - p.entry_size;
    }
    if to_add == 0 {
        p.status = 3;
        return -1;
    }
    while {
        let buf_ptr = p.entry_buf.as_mut().expect("entry_buf should not be None").as_mut_ptr();
        vp = (p.realloc_func)(buf_ptr as *mut std::ffi::c_void, p.entry_size + to_add);
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

fn csv_write(dest: *mut std::ffi::c_void, dest_size: usize, src: *const std::ffi::c_void, src_size: usize) -> usize {
    let dest_slice = unsafe { std::slice::from_raw_parts_mut(dest as *mut u8, dest_size) };
    let src_slice = unsafe { std::slice::from_raw_parts(src as *const u8, src_size) };
    let quote_char = 0x22u8;

    let mut written = 0;
    for &byte in src_slice.iter() {
        if written >= dest_size {
            break;
        }
        if byte == quote_char {
            if written + 2 > dest_size {
                break;
            }
            dest_slice[written] = quote_char;
            written += 1;
        }
        dest_slice[written] = byte;
        written += 1;
    }
    written
}

fn csv_free(p: &mut CsvParser) {
    if p.entry_buf.is_some() && !p.entry_buf.as_ref().unwrap().is_empty() {
        (p.free_func)(p.entry_buf.as_mut().unwrap().as_mut_ptr() as *mut std::ffi::c_void);
    }
    p.entry_buf = None;
    p.entry_size = 0;
}

fn csv_error(p: &CsvParser) -> i32 {
    assert!(!std::ptr::eq(p as *const _, std::ptr::null()), "received null csv_parser");
    p.status
}

fn csv_set_free_func<'a>(p: &mut CsvParser<'a>, f: Box<dyn Fn(*mut std::ffi::c_void) + 'a>) {
    if !std::ptr::eq(p as *const _, std::ptr::null()) {
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

use std::io::Write;

fn csv_fwrite2(fp: &mut dyn Write, src: *const u8, src_size: usize, quote: u8) -> i32 {
    if src.is_null() {
        return 0;
    }

    if fp.write_all(&[quote]).is_err() {
        return -1;
    }

    let mut csrc = src;
    let mut remaining = src_size;

    while remaining > 0 {
        unsafe {
            let byte = *csrc;
            if byte == quote {
                if fp.write_all(&[quote]).is_err() {
                    return -1;
                }
            }
            if fp.write_all(&[byte]).is_err() {
                return -1;
            }
            csrc = csrc.add(1);
            remaining -= 1;
        }
    }

    if fp.write_all(&[quote]).is_err() {
        return -1;
    }

    0
}

fn csv_set_space_func<'a>(p: &mut CsvParser<'a>, f: Box<dyn Fn(u8) -> i32 + 'a>) {
    if p as *const _ != std::ptr::null() {
        p.is_space = f;
    }
}

fn csv_set_term_func<'a>(p: &mut CsvParser<'a>, f: Box<dyn Fn(u8) -> i32 + 'a>) {
    if !std::ptr::eq(p as *const _, std::ptr::null()) {
        p.is_term = f;
    }
}

fn csv_parse<'a>(
    p: &mut CsvParser<'a>,
    s: *const u8,
    len: usize,
    cb1: Option<fn(*const u8, usize, *mut std::ffi::c_void)>,
    cb2: Option<fn(i32, *mut std::ffi::c_void)>,
    data: *mut std::ffi::c_void,
) -> usize {
    assert!(!std::ptr::eq(p as *const _, std::ptr::null()), "received null csv_parser");
    if s.is_null() {
        return 0;
    }

    let us = unsafe { std::slice::from_raw_parts(s, len) };
    let mut pos = 0;
    let delim = p.delim_char;
    let quote = p.quote_char;
    let mut quoted = p.quoted;
    let mut pstate = p.pstate;
    let mut spaces = p.spaces;
    let mut entry_pos = p.entry_pos;

    if p.entry_buf.is_none() && pos < len {
        if csv_increase_buffer(p) != 0 {
            p.quoted = quoted;
            p.pstate = pstate;
            p.spaces = spaces;
            p.entry_pos = entry_pos;
            return pos;
        }
    }

    while pos < len {
        if entry_pos == if (p.options & 8) != 0 { p.entry_size - 1 } else { p.entry_size } {
            if csv_increase_buffer(p) != 0 {
                p.quoted = quoted;
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
                if (p.is_space)(c) != 0 && c != delim {
                    continue;
                } else if (p.is_term)(c) != 0 {
                    if pstate == 1 {
                        if quoted == 0 {
                            entry_pos -= spaces;
                        }
                        if (p.options & 8) != 0 {
                            if let Some(ref mut buf) = p.entry_buf {
                                buf[entry_pos] = 0;
                            }
                        }
                        if let Some(cb1) = cb1 {
                            if (p.options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                                cb1(std::ptr::null(), entry_pos, data);
                            } else {
                                if let Some(ref buf) = p.entry_buf {
                                    cb1(buf.as_ptr(), entry_pos, data);
                                }
                            }
                        }
                        pstate = 1;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;
                    }
                    if let Some(cb2) = cb2 {
                        cb2(c as i32, data);
                    }
                    pstate = 0;
                    entry_pos = 0;
                    quoted = 0;
                    spaces = 0;
                    continue;
                } else if c == delim {
                    if quoted == 0 {
                        entry_pos -= spaces;
                    }
                    if (p.options & 8) != 0 {
                        if let Some(ref mut buf) = p.entry_buf {
                            buf[entry_pos] = 0;
                        }
                    }
                    if let Some(cb1) = cb1 {
                        if (p.options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                            cb1(std::ptr::null(), entry_pos, data);
                        } else {
                            if let Some(ref buf) = p.entry_buf {
                                cb1(buf.as_ptr(), entry_pos, data);
                            }
                        }
                    }
                    pstate = 1;
                    entry_pos = 0;
                    quoted = 0;
                    spaces = 0;
                } else if c == quote {
                    pstate = 2;
                    quoted = 1;
                } else {
                    pstate = 2;
                    quoted = 0;
                    if let Some(ref mut buf) = p.entry_buf {
                        buf[entry_pos] = c;
                    }
                    entry_pos += 1;
                }
            }
            2 => {
                if c == quote {
                    if quoted != 0 {
                        if let Some(ref mut buf) = p.entry_buf {
                            buf[entry_pos] = c;
                        }
                        entry_pos += 1;
                        pstate = 3;
                    } else {
                        if (p.options & 1) != 0 {
                            p.status = 1;
                            p.quoted = quoted;
                            p.pstate = pstate;
                            p.spaces = spaces;
                            p.entry_pos = entry_pos;
                            return pos - 1;
                        }
                        if let Some(ref mut buf) = p.entry_buf {
                            buf[entry_pos] = c;
                        }
                        entry_pos += 1;
                        spaces = 0;
                    }
                } else if c == delim {
                    if quoted != 0 {
                        if let Some(ref mut buf) = p.entry_buf {
                            buf[entry_pos] = c;
                        }
                        entry_pos += 1;
                    } else {
                        if quoted == 0 {
                            entry_pos -= spaces;
                        }
                        if (p.options & 8) != 0 {
                            if let Some(ref mut buf) = p.entry_buf {
                                buf[entry_pos] = 0;
                            }
                        }
                        if let Some(cb1) = cb1 {
                            if (p.options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                                cb1(std::ptr::null(), entry_pos, data);
                            } else {
                                if let Some(ref buf) = p.entry_buf {
                                    cb1(buf.as_ptr(), entry_pos, data);
                                }
                            }
                        }
                        pstate = 1;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;
                    }
                } else if (p.is_term)(c) != 0 {
                    if quoted == 0 {
                        if quoted == 0 {
                            entry_pos -= spaces;
                        }
                        if (p.options & 8) != 0 {
                            if let Some(ref mut buf) = p.entry_buf {
                                buf[entry_pos] = 0;
                            }
                        }
                        if let Some(cb1) = cb1 {
                            if (p.options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                                cb1(std::ptr::null(), entry_pos, data);
                            } else {
                                if let Some(ref buf) = p.entry_buf {
                                    cb1(buf.as_ptr(), entry_pos, data);
                                }
                            }
                        }
                        pstate = 1;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;
                    }
                    if let Some(ref mut buf) = p.entry_buf {
                        buf[entry_pos] = c;
                    }
                    entry_pos += 1;
                } else if quoted == 0 && (p.is_space)(c) != 0 {
                    if let Some(ref mut buf) = p.entry_buf {
                        buf[entry_pos] = c;
                    }
                    entry_pos += 1;
                    spaces += 1;
                } else {
                    if let Some(ref mut buf) = p.entry_buf {
                        buf[entry_pos] = c;
                    }
                    entry_pos += 1;
                    spaces = 0;
                }
            }
            3 => {
                if c == delim {
                    entry_pos -= spaces + 1;
                    if quoted == 0 {
                        entry_pos -= spaces;
                    }
                    if (p.options & 8) != 0 {
                        if let Some(ref mut buf) = p.entry_buf {
                            buf[entry_pos] = 0;
                        }
                    }
                    if let Some(cb1) = cb1 {
                        if (p.options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                            cb1(std::ptr::null(), entry_pos, data);
                        } else {
                            if let Some(ref buf) = p.entry_buf {
                                cb1(buf.as_ptr(), entry_pos, data);
                            }
                        }
                    }
                    pstate = 1;
                    entry_pos = 0;
                    quoted = 0;
                    spaces = 0;
                } else if (p.is_term)(c) != 0 {
                    entry_pos -= spaces + 1;
                    if quoted == 0 {
                        entry_pos -= spaces;
                    }
                    if (p.options & 8) != 0 {
                        if let Some(ref mut buf) = p.entry_buf {
                            buf[entry_pos] = 0;
                        }
                    }
                    if let Some(cb1) = cb1 {
                        if (p.options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                            cb1(std::ptr::null(), entry_pos, data);
                        } else {
                            if let Some(ref buf) = p.entry_buf {
                                cb1(buf.as_ptr(), entry_pos, data);
                            }
                        }
                    }
                    pstate = 1;
                    entry_pos = 0;
                    quoted = 0;
                    spaces = 0;
                    if let Some(cb2) = cb2 {
                        cb2(c as i32, data);
                    }
                    pstate = 0;
                    entry_pos = 0;
                    quoted = 0;
                    spaces = 0;
                } else if (p.is_space)(c) != 0 {
                    if let Some(ref mut buf) = p.entry_buf {
                        buf[entry_pos] = c;
                    }
                    entry_pos += 1;
                    spaces += 1;
                } else if c == quote {
                    if spaces != 0 {
                        if (p.options & 1) != 0 {
                            p.status = 1;
                            p.quoted = quoted;
                            p.pstate = pstate;
                            p.spaces = spaces;
                            p.entry_pos = entry_pos;
                            return pos - 1;
                        }
                        spaces = 0;
                        if let Some(ref mut buf) = p.entry_buf {
                            buf[entry_pos] = c;
                        }
                        entry_pos += 1;
                    } else {
                        pstate = 2;
                    }
                } else {
                    if (p.options & 1) != 0 {
                        p.status = 1;
                        p.quoted = quoted;
                        p.pstate = pstate;
                        p.spaces = spaces;
                        p.entry_pos = entry_pos;
                        return pos - 1;
                    }
                    pstate = 2;
                    spaces = 0;
                    if let Some(ref mut buf) = p.entry_buf {
                        buf[entry_pos] = c;
                    }
                    entry_pos += 1;
                }
            }
            _ => {}
        }
    }

    p.quoted = quoted;
    p.pstate = pstate;
    p.spaces = spaces;
    p.entry_pos = entry_pos;
    pos
}

fn csv_fwrite(fp: &mut dyn Write, src: *const u8, src_size: usize) -> i32 {
    csv_fwrite2(fp, src, src_size, b'"')
}

type __uint64_t = u64;

fn __bswap_64(__bsx: __uint64_t) -> __uint64_t {
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
    if p as *const _ != std::ptr::null() {
        p.delim_char = c;
    }
}

fn __uint64_identity(__x: u64) -> u64 {
    __x
}

fn csv_set_quote(p: &mut CsvParser, c: u8) {
    if !std::ptr::eq(p as *const _, std::ptr::null()) {
        p.quote_char = c;
    }
}

type __uint32_t = u32;

fn __uint32_identity(__x: __uint32_t) -> __uint32_t {
    __x
}

fn csv_set_opts(p: &mut CsvParser, options: u8) -> i32 {
    if p as *const _ == std::ptr::null() {
        return -1;
    }
    p.options = options;
    0
}

fn csv_write2(
    dest: *mut std::ffi::c_void,
    dest_size: usize,
    src: *const std::ffi::c_void,
    mut src_size: usize,
    quote: u8,
) -> usize {
    let mut cdest = dest as *mut u8;
    let mut csrc = src as *const u8;
    let mut chars = 0;

    if src.is_null() {
        return 0;
    }
    if dest.is_null() {
        return 0;
    }

    if dest_size > 0 {
        unsafe {
            *cdest = quote;
            cdest = cdest.add(1);
        }
    }
    chars += 1;

    while src_size > 0 {
        unsafe {
            if *csrc == quote {
                if dest_size > chars {
                    *cdest = quote;
                    cdest = cdest.add(1);
                }
                if chars < usize::MAX {
                    chars += 1;
                }
            }
            if dest_size > chars {
                *cdest = *csrc;
                cdest = cdest.add(1);
            }
            if chars < usize::MAX {
                chars += 1;
            }
            csrc = csrc.add(1);
        }
        src_size -= 1;
    }

    if dest_size > chars {
        unsafe {
            *cdest = quote;
        }
    }
    if chars < usize::MAX {
        chars += 1;
    }

    chars
}
