struct CsvParser<'a> {
    pstate: i32,
    quoted: i32,
    spaces: usize,
    entry_buf: Option<&'a mut Vec<u8>>,
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



static CSV_ERRORS: [&str; 5] = [
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

fn csv_get_buffer_size(p: Option<&CsvParser>) -> usize {
    if let Some(parser) = p {
        parser.entry_size
    } else {
        0
    }
}

fn csv_set_space_func(p: Option<&mut CsvParser>, f: fn(u8) -> i32) {
    if let Some(parser) = p {
        parser.is_space = f;
    }
}

fn csv_increase_buffer(p: Option<&mut CsvParser>) -> i32 {
    if let Some(parser) = p {
        if parser.realloc_func as usize == 0 {
            return 0;
        }
        let mut to_add = parser.blk_size;
        if parser.entry_size >= usize::MAX - to_add {
            to_add = usize::MAX - parser.entry_size;
        }
        if to_add == 0 {
            parser.status = 3;
            return -1;
        }
        loop {
            let vp = (parser.realloc_func)(parser.entry_buf.as_mut().map_or(std::ptr::null_mut(), |buf| buf.as_mut_ptr() as *mut std::ffi::c_void), parser.entry_size + to_add);
            if !vp.is_null() {
                let new_buf = unsafe { Vec::from_raw_parts(vp as *mut u8, parser.entry_size + to_add, parser.entry_size + to_add) };
                parser.entry_buf = Some(Box::leak(Box::new(new_buf)));
                parser.entry_size += to_add;
                return 0;
            }
            to_add /= 2;
            if to_add == 0 {
                parser.status = 2;
                return -1;
            }
        }
    }
    0
}

fn csv_init<'a>(p: Option<&'a mut CsvParser<'a>>, options: u8) -> i32 {
    if let Some(parser) = p {
        parser.entry_buf = None;
        parser.pstate = 0;
        parser.quoted = 0;
        parser.spaces = 0;
        parser.entry_pos = 0;
        parser.entry_size = 0;
        parser.status = 0;
        parser.options = options;
        parser.quote_char = 0x22;
        parser.delim_char = 0x2c;
        parser.is_space = |_| 0;
        parser.is_term = |_| 0;
        parser.blk_size = 128;
        parser.malloc_func = |_| std::ptr::null_mut();
        parser.realloc_func = |ptr, size| unsafe { std::alloc::realloc(ptr as *mut u8, std::alloc::Layout::from_size_align_unchecked(size, 1), size) as *mut std::ffi::c_void };
        parser.free_func = |ptr| unsafe { std::alloc::dealloc(ptr as *mut u8, std::alloc::Layout::from_size_align_unchecked(0, 1)) };
        0
    } else {
        -1
    }
}

fn csv_set_quote(p: Option<&mut CsvParser>, c: u8) {
    if let Some(parser) = p {
        parser.quote_char = c;
    }
}

fn bswap_32(bsx: u32) -> u32 {
    ((bsx & 0xff000000) >> 24) | ((bsx & 0x00ff0000) >> 8) | ((bsx & 0x0000ff00) << 8) | ((bsx & 0x000000ff) << 24)
}

fn csv_get_opts(p: Option<&CsvParser>) -> i32 {
    if let Some(parser) = p {
        parser.options as i32
    } else {
        -1
    }
}

fn csv_set_opts(p: Option<&mut CsvParser>, options: u8) -> i32 {
    if let Some(parser) = p {
        parser.options = options;
        0
    } else {
        -1
    }
}

fn csv_set_blk_size(p: Option<&mut CsvParser>, size: usize) {
    if let Some(parser) = p {
        parser.blk_size = size;
    }
}

fn csv_set_free_func(p: Option<&mut CsvParser>, f: fn(*mut std::ffi::c_void)) {
    if let Some(parser) = p {
        parser.free_func = f;
    }
}

#[inline]
fn uint64_identity(x: u64) -> u64 {
    x
}

fn csv_get_quote(p: Option<&CsvParser>) -> u8 {
    if let Some(parser) = p {
        parser.quote_char
    } else {
        panic!("received null csv_parser");
    }
}

fn csv_get_delim(p: Option<&CsvParser>) -> u8 {
    if let Some(parser) = p {
        parser.delim_char
    } else {
        panic!("received null csv_parser");
    }
}

fn csv_set_term_func(p: Option<&mut CsvParser>, f: fn(u8) -> i32) {
    if let Some(parser) = p {
        parser.is_term = f;
    }
}

#[inline]
fn bswap_64(bsx: u64) -> u64 {
    ((bsx & 0xff00000000000000) >> 56)
        | ((bsx & 0x00ff000000000000) >> 40)
        | ((bsx & 0x0000ff0000000000) >> 24)
        | ((bsx & 0x000000ff00000000) >> 8)
        | ((bsx & 0x00000000ff000000) << 8)
        | ((bsx & 0x0000000000ff0000) << 24)
        | ((bsx & 0x000000000000ff00) << 40)
        | ((bsx & 0x00000000000000ff) << 56)
}

#[inline]
fn uint32_identity(x: u32) -> u32 {
    x
}

use std::io::{self, Write};
use std::ptr;

fn csv_fwrite2(fp: &mut dyn Write, src: &[u8], quote: u8) -> io::Result<()> {
    if fp.write_all(&[quote]).is_err() {
        return Err(io::Error::new(io::ErrorKind::Other, "write error"));
    }
    for &c in src {
        if c == quote {
            if fp.write_all(&[quote]).is_err() {
                return Err(io::Error::new(io::ErrorKind::Other, "write error"));
            }
        }
        if fp.write_all(&[c]).is_err() {
            return Err(io::Error::new(io::ErrorKind::Other, "write error"));
        }
    }
    if fp.write_all(&[quote]).is_err() {
        return Err(io::Error::new(io::ErrorKind::Other, "write error"));
    }
    Ok(())
}

fn csv_set_realloc_func(p: Option<&mut CsvParser>, f: fn(*mut std::ffi::c_void, usize) -> *mut std::ffi::c_void) {
    if let Some(parser) = p {
        parser.realloc_func = f;
    }
}

#[inline]
fn uint16_identity(x: u16) -> u16 {
    x
}

fn csv_error(p: Option<&CsvParser>) -> i32 {
    if let Some(parser) = p {
        parser.status
    } else {
        panic!("received null csv_parser");
    }
}

fn csv_set_delim(p: Option<&mut CsvParser>, c: u8) {
    if let Some(parser) = p {
        parser.delim_char = c;
    }
}

fn csv_fini<'a>(
    p: Option<&mut CsvParser<'a>>,
    cb1: Option<fn(Option<&[u8]>, usize, &mut std::ffi::c_void)>,
    cb2: Option<fn(i32, &mut std::ffi::c_void)>,
    data: &mut std::ffi::c_void,
) -> i32 {
    if let Some(parser) = p {
        let mut quoted = parser.quoted;
        let mut pstate = parser.pstate;
        let mut spaces = parser.spaces;
        let mut entry_pos = parser.entry_pos;

        if pstate == 2 && parser.quoted != 0 && (parser.options & 1) != 0 && (parser.options & 4) != 0 {
            parser.status = 1;
            return -1;
        }

        match pstate {
            3 => {
                parser.entry_pos -= parser.spaces + 1;
                entry_pos = parser.entry_pos;
                // fallthrough
            }
            1 | 2 => {
                if quoted == 0 {
                    entry_pos -= spaces;
                }
                if (parser.options & 8) != 0 {
                    if let Some(buf) = &mut parser.entry_buf {
                        buf[entry_pos] = 0;
                    }
                }
                if let Some(cb1_func) = cb1 {
                    if (parser.options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                        cb1_func(None, entry_pos, data);
                    } else if let Some(buf) = &parser.entry_buf {
                        cb1_func(Some(&buf[..entry_pos]), entry_pos, data);
                    }
                }
                pstate = 1;
                entry_pos = 0;
                quoted = 0;
                spaces = 0;
                if let Some(cb2_func) = cb2 {
                    cb2_func(-1, data);
                }
                pstate = 0;
                entry_pos = 0;
                quoted = 0;
                spaces = 0;
            }
            0 => {}
            _ => {}
        }

        parser.spaces = 0;
        parser.quoted = 0;
        parser.entry_pos = 0;
        parser.status = 0;
        parser.pstate = 0;
        0
    } else {
        -1
    }
}

fn csv_free(p: Option<&mut CsvParser>) {
    if let Some(parser) = p {
        if let Some(entry_buf) = parser.entry_buf.take() {
            (parser.free_func)(entry_buf.as_mut_ptr() as *mut std::ffi::c_void);
        }
        parser.entry_size = 0;
    }
}

#[inline]
fn bswap_16(bsx: u16) -> u16 {
    ((bsx >> 8) & 0xff) | ((bsx & 0xff) << 8)
}

fn csv_write2(dest: Option<&mut [u8]>, src: &[u8], quote: u8) -> usize {
    let mut chars = 0;
    if src.is_empty() {
        return 0;
    }
    let mut cdest = dest.unwrap_or(&mut []);
    if !cdest.is_empty() {
        cdest[0] = quote;
    }
    chars += 1;
    let mut cdest_index = 1;
    for &c in src {
        if c == quote {
            if cdest.len() > chars {
                cdest[cdest_index] = quote;
                cdest_index += 1;
            }
            chars += 1;
        }
        if cdest.len() > chars {
            cdest[cdest_index] = c;
            cdest_index += 1;
        }
        chars += 1;
    }
    if cdest.len() > chars {
        cdest[cdest_index] = quote;
    }
    chars += 1;
    chars
}

fn csv_parse<'a>(
    p: Option<&mut CsvParser<'a>>,
    s: Option<&[u8]>,
    len: usize,
    cb1: Option<fn(Option<&[u8]>, usize, &mut std::ffi::c_void)>,
    cb2: Option<fn(i32, &mut std::ffi::c_void)>,
    data: &mut std::ffi::c_void,
) -> usize {
    let p = p.expect("received null csv_parser");
    if s.is_none() {
        return 0;
    }
    let us = s.unwrap();
    let mut pos = 0;
    let delim = p.delim_char;
    let quote = p.quote_char;
    let is_space = p.is_space;
    let is_term = p.is_term;
    let mut quoted = p.quoted;
    let mut pstate = p.pstate;
    let mut spaces = p.spaces;
    let mut entry_pos = p.entry_pos;

    if p.entry_buf.is_none() && pos < len {
        if csv_increase_buffer(Some(p)) != 0 {
            p.quoted = quoted;
            p.pstate = pstate;
            p.spaces = spaces;
            p.entry_pos = entry_pos;
            return pos;
        }
    }

    while pos < len {
        if entry_pos == if (p.options & 8) != 0 { p.entry_size - 1 } else { p.entry_size } {
            if csv_increase_buffer(Some(p)) != 0 {
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
                if (is_space)(c) != 0 && c != delim {
                    continue;
                } else if (is_term)(c) != 0 {
                    if pstate == 1 {
                        if quoted == 0 {
                            entry_pos -= spaces;
                        }
                        if (p.options & 8) != 0 {
                            if let Some(buf) = &mut p.entry_buf {
                                buf[entry_pos] = 0;
                            }
                        }
                        if let Some(cb1_func) = cb1 {
                            if (p.options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                                cb1_func(None, entry_pos, data);
                            } else if let Some(buf) = &p.entry_buf {
                                cb1_func(Some(&buf[..entry_pos]), entry_pos, data);
                            }
                        }
                        pstate = 1;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;
                        if let Some(cb2_func) = cb2 {
                            cb2_func(c as i32, data);
                        }
                        pstate = 0;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;
                    } else {
                        if (p.options & 2) != 0 {
                            if let Some(cb2_func) = cb2 {
                                cb2_func(c as i32, data);
                            }
                            pstate = 0;
                            entry_pos = 0;
                            quoted = 0;
                            spaces = 0;
                        }
                    }
                    continue;
                } else if c == delim {
                    if quoted == 0 {
                        entry_pos -= spaces;
                    }
                    if (p.options & 8) != 0 {
                        if let Some(buf) = &mut p.entry_buf {
                            buf[entry_pos] = 0;
                        }
                    }
                    if let Some(cb1_func) = cb1 {
                        if (p.options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                            cb1_func(None, entry_pos, data);
                        } else if let Some(buf) = &p.entry_buf {
                            cb1_func(Some(&buf[..entry_pos]), entry_pos, data);
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
                    if let Some(buf) = &mut p.entry_buf {
                        buf[entry_pos] = c;
                    }
                    entry_pos += 1;
                }
            }
            2 => {
                if c == quote {
                    if quoted != 0 {
                        if let Some(buf) = &mut p.entry_buf {
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
                        if let Some(buf) = &mut p.entry_buf {
                            buf[entry_pos] = c;
                        }
                        entry_pos += 1;
                        spaces = 0;
                    }
                } else if c == delim {
                    if quoted != 0 {
                        if let Some(buf) = &mut p.entry_buf {
                            buf[entry_pos] = c;
                        }
                        entry_pos += 1;
                    } else {
                        if quoted == 0 {
                            entry_pos -= spaces;
                        }
                        if (p.options & 8) != 0 {
                            if let Some(buf) = &mut p.entry_buf {
                                buf[entry_pos] = 0;
                            }
                        }
                        if let Some(cb1_func) = cb1 {
                            if (p.options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                                cb1_func(None, entry_pos, data);
                            } else if let Some(buf) = &p.entry_buf {
                                cb1_func(Some(&buf[..entry_pos]), entry_pos, data);
                            }
                        }
                        pstate = 1;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;
                    }
                } else if (is_term)(c) != 0 {
                    if quoted == 0 {
                        if quoted == 0 {
                            entry_pos -= spaces;
                        }
                        if (p.options & 8) != 0 {
                            if let Some(buf) = &mut p.entry_buf {
                                buf[entry_pos] = 0;
                            }
                        }
                        if let Some(cb1_func) = cb1 {
                            if (p.options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                                cb1_func(None, entry_pos, data);
                            } else if let Some(buf) = &p.entry_buf {
                                cb1_func(Some(&buf[..entry_pos]), entry_pos, data);
                            }
                        }
                        pstate = 1;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;
                        if let Some(cb2_func) = cb2 {
                            cb2_func(c as i32, data);
                        }
                        pstate = 0;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;
                    } else {
                        if let Some(buf) = &mut p.entry_buf {
                            buf[entry_pos] = c;
                        }
                        entry_pos += 1;
                    }
                } else if quoted == 0 && (is_space)(c) != 0 {
                    if let Some(buf) = &mut p.entry_buf {
                        buf[entry_pos] = c;
                    }
                    entry_pos += 1;
                    spaces += 1;
                } else {
                    if let Some(buf) = &mut p.entry_buf {
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
                        if let Some(buf) = &mut p.entry_buf {
                            buf[entry_pos] = 0;
                        }
                    }
                    if let Some(cb1_func) = cb1 {
                        if (p.options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                            cb1_func(None, entry_pos, data);
                        } else if let Some(buf) = &p.entry_buf {
                            cb1_func(Some(&buf[..entry_pos]), entry_pos, data);
                        }
                    }
                    pstate = 1;
                    entry_pos = 0;
                    quoted = 0;
                    spaces = 0;
                } else if (is_term)(c) != 0 {
                    entry_pos -= spaces + 1;
                    if quoted == 0 {
                        entry_pos -= spaces;
                    }
                    if (p.options & 8) != 0 {
                        if let Some(buf) = &mut p.entry_buf {
                            buf[entry_pos] = 0;
                        }
                    }
                    if let Some(cb1_func) = cb1 {
                        if (p.options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                            cb1_func(None, entry_pos, data);
                        } else if let Some(buf) = &p.entry_buf {
                            cb1_func(Some(&buf[..entry_pos]), entry_pos, data);
                        }
                    }
                    pstate = 1;
                    entry_pos = 0;
                    quoted = 0;
                    spaces = 0;
                    if let Some(cb2_func) = cb2 {
                        cb2_func(c as i32, data);
                    }
                    pstate = 0;
                    entry_pos = 0;
                    quoted = 0;
                    spaces = 0;
                } else if (is_space)(c) != 0 {
                    if let Some(buf) = &mut p.entry_buf {
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
                        if let Some(buf) = &mut p.entry_buf {
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
                    if let Some(buf) = &mut p.entry_buf {
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

fn csv_fwrite(fp: &mut dyn Write, src: &[u8]) -> std::io::Result<()> {
    csv_fwrite2(fp, src, 0x22)
}

fn csv_write(dest: Option<&mut [u8]>, src: &[u8]) -> usize {
    csv_write2(dest, src, 0x22)
}
