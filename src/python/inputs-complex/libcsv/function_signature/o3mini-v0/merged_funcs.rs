
struct CsvParser {
    pub pstate: i32,
    pub quoted: bool,
    pub spaces: usize,
    pub entry_buf: Vec<u8>,
    pub entry_pos: usize,
    pub status: i32,
    pub options: u8,
    pub quote_char: u8,
    pub delim_char: u8,
    pub is_space: Option<Box<dyn Fn(u8) -> bool>>,
    pub is_term: Option<Box<dyn Fn(u8) -> bool>>,
    pub blk_size: usize,
}

pub fn csv_set_blk_size(p: Option<&mut CsvParser>, size: usize) {
    if let Some(parser) = p {
        parser.blk_size = size;
    }
}
use std::ffi::c_void;
  
pub fn csv_fini(
    p: *mut CsvParser,
    cb1: Option<fn(*mut c_void, usize, *mut c_void)>,
    cb2: Option<fn(i32, *mut c_void)>,
    data: *mut c_void,
) -> i32 {
    if p.is_null() {
        return -1;
    }
    // SAFETY: We have checked that p is not null.
    let parser = unsafe { &mut *p };
    let quoted = parser.quoted;
    let pstate = parser.pstate;
    let spaces = parser.spaces;
    let mut entry_pos = parser.entry_pos;
  
    if pstate == 2 && parser.quoted && (parser.options & 1 != 0) && (parser.options & 4 != 0) {
        parser.status = 1;
        return -1;
    }
  
    match pstate {
        3 | 1 | 2 => {
            if pstate == 3 {
                // In C, subtraction is unchecked.
                parser.entry_pos = parser.entry_pos.saturating_sub(parser.spaces + 1);
                entry_pos = parser.entry_pos;
            }
            if !quoted {
                entry_pos = entry_pos.saturating_sub(spaces);
            }
            if parser.options & 8 != 0 {
                if entry_pos < parser.entry_buf.len() {
                    parser.entry_buf[entry_pos] = 0;
                }
            }
            if let Some(cb1_fn) = cb1 {
                if (parser.options & 16 != 0) && (!quoted) && (entry_pos == 0) {
                    cb1_fn(std::ptr::null_mut(), entry_pos, data);
                } else {
                    cb1_fn(parser.entry_buf.as_mut_ptr() as *mut c_void, entry_pos, data);
                }
            }
            if let Some(cb2_fn) = cb2 {
                cb2_fn(-1, data);
            }
        }
        0 => {}
        _ => {}
    }
  
    parser.spaces = 0;
    parser.quoted = false;
    parser.entry_pos = 0;
    parser.status = 0;
    parser.pstate = 0;
  
    0
}
pub fn csv_init(p: &mut CsvParser, options: u8) -> i32 {
    p.entry_buf.clear();
    p.pstate = 0;
    p.quoted = false;
    p.spaces = 0;
    p.entry_pos = 0;
    p.status = 0;
    p.options = options;
    p.quote_char = 0x22;
    p.delim_char = 0x2c;
    p.is_space = None;
    p.is_term = None;
    p.blk_size = 128;
    0
}
pub unsafe fn csv_set_realloc_func(
    p: *mut CsvParser,
    f: Option<fn(*mut std::ffi::c_void, usize) -> *mut std::ffi::c_void>,
) {
    if !p.is_null() && f.is_some() {
        // No realloc_func field exists in CsvParser, so no assignment is performed.
    }
}
pub fn csv_increase_buffer(p: &mut CsvParser) -> i32 {
    let mut to_add = p.blk_size;
    const MAX: usize = u64::MAX as usize;
    let current_cap = p.entry_buf.capacity();
    if current_cap >= MAX.saturating_sub(to_add) {
        to_add = MAX - current_cap;
    }
    if to_add == 0 {
        p.status = 3;
        return -1;
    }
    while p.entry_buf.try_reserve_exact(to_add).is_err() {
        to_add /= 2;
        if to_add == 0 {
            p.status = 2;
            return -1;
        }
    }
    0
}
static CSV_ERRORS: [&str; 5] = [
    "success",
    "error parsing data while strict checking enabled",
    "memory exhausted while increasing buffer size",
    "data size too large",
    "invalid status code",
];

pub fn csv_strerror(status: i32) -> &'static str {
    if status < 0 || status >= 4 {
        CSV_ERRORS[4]
    } else {
        CSV_ERRORS[status as usize]
    }
}
pub fn csv_get_quote(p: &CsvParser) -> u8 {
    p.quote_char
}
pub fn csv_get_delim(p: &CsvParser) -> u8 {
    p.delim_char
}
pub fn __bswap_32(bsx: u32) -> u32 {
    ((bsx & 0xff000000) >> 24) |
    ((bsx & 0x00ff0000) >> 8)  |
    ((bsx & 0x0000ff00) << 8)  |
    ((bsx & 0x000000ff) << 24)
}
pub fn csv_free(parser: Option<&mut CsvParser>) {
    if let Some(p) = parser {
        // In Rust, explicit deallocation via a free function is unnecessary.
        // Clearing the buffer is sufficient.
        p.entry_buf.clear();
        p.entry_pos = 0;
    }
}
pub fn csv_error(p: &CsvParser) -> i32 {
    p.status
}
pub fn csv_set_free_func(_p: Option<&mut CsvParser>, _f: Option<fn(*mut std::ffi::c_void)>) {
    // no-op: CsvParser does not contain a free_func field
}
pub fn __uint16_identity(x: u16) -> u16 {
    x
}
pub fn csv_get_buffer_size(p: Option<&CsvParser>) -> usize {
    p.map_or(0, |parser| parser.blk_size)
}
#[inline]
pub fn __bswap_16(bsx: u16) -> u16 {
    ((bsx >> 8) & 0xff) | ((bsx & 0xff) << 8)
}
mod libc {
    use std::os::raw::{c_int, c_void};

    #[repr(C)]
    pub struct FILE {
        _unused: [u8; 0],
    }

    extern "C" {
        pub fn fputc(c: c_int, stream: *mut FILE) -> c_int;
    }
}

#[no_mangle]
pub unsafe extern "C" fn csv_fwrite2(
    fp: *mut libc::FILE,
    src: *const std::ffi::c_void,
    mut src_size: usize,
    quote: std::os::raw::c_uchar,
) -> std::os::raw::c_int {
    if fp.is_null() || src.is_null() {
        return 0;
    }
    if libc::fputc(quote as std::os::raw::c_int, fp) == -1 {
        return -1;
    }
    let mut csrc = src as *const u8;
    while src_size != 0 {
        if *csrc == quote {
            if libc::fputc(quote as std::os::raw::c_int, fp) == -1 {
                return -1;
            }
        }
        if libc::fputc(*csrc as std::os::raw::c_int, fp) == -1 {
            return -1;
        }
        src_size -= 1;
        csrc = csrc.add(1);
    }
    if libc::fputc(quote as std::os::raw::c_int, fp) == -1 {
        return -1;
    }
    0
}
pub fn csv_set_space_func(p: Option<&mut CsvParser>, f: Box<dyn Fn(u8) -> bool>) {
    if let Some(parser) = p {
        parser.is_space = Some(f);
    }
}
pub fn csv_set_term_func(p: Option<&mut CsvParser>, f: Box<dyn Fn(u8) -> bool>) {
    if let Some(parser) = p {
        parser.is_term = Some(f);
    }
}
pub fn __bswap_64(bsx: u64) -> u64 {
    ((bsx & 0xff00000000000000) >> 56) |
    ((bsx & 0x00ff000000000000) >> 40) |
    ((bsx & 0x0000ff0000000000) >> 24) |
    ((bsx & 0x000000ff00000000) >> 8)  |
    ((bsx & 0x00000000ff000000) << 8)  |
    ((bsx & 0x0000000000ff0000) << 24) |
    ((bsx & 0x000000000000ff00) << 40) |
    ((bsx & 0x00000000000000ff) << 56)
}
pub fn csv_get_opts(p: Option<&CsvParser>) -> i32 {
    match p {
        Some(parser) => parser.options as i32,
        None => -1,
    }
}
pub fn csv_set_delim(parser: Option<&mut CsvParser>, c: u8) {
    if let Some(p) = parser {
        p.delim_char = c;
    }
}
pub fn __uint64_identity(x: u64) -> u64 {
    x
}
pub fn csv_set_quote(p: Option<&mut CsvParser>, c: u8) {
    if let Some(parser) = p {
        parser.quote_char = c;
    }
}
#[no_mangle]
pub extern "C" fn __uint32_identity(x: u32) -> u32 {
    x
}
pub fn csv_set_opts(p: Option<&mut CsvParser>, options: u8) -> i32 {
    let parser = match p {
        Some(parser) => parser,
        None => return -1,
    };
    parser.options = options;
    0
}
#[no_mangle]
pub unsafe extern "C" fn csv_write2(
    dest: *mut ::std::os::raw::c_void,
    mut dest_size: usize,
    src: *const ::std::os::raw::c_void,
    mut src_size: usize,
    quote: u8,
) -> usize {
    if src.is_null() {
        return 0;
    }
    let mut cdest = dest as *mut u8;
    let mut csrc = src as *const u8;
    let mut chars: usize = 0;
    if dest.is_null() {
        dest_size = 0;
    }
    if dest_size > 0 {
        *cdest = quote;
        cdest = cdest.add(1);
    }
    chars = chars.saturating_add(1);
    while src_size != 0 {
        if *csrc == quote {
            if dest_size > chars {
                *cdest = quote;
                cdest = cdest.add(1);
            }
            chars = chars.saturating_add(1);
        }
        if dest_size > chars {
            *cdest = *csrc;
            cdest = cdest.add(1);
        }
        chars = chars.saturating_add(1);
        src_size -= 1;
        csrc = csrc.add(1);
    }
    if dest_size > chars {
        *cdest = quote;
    }
    chars = chars.saturating_add(1);
    return chars;
}
pub fn csv_parse(
    p: &mut CsvParser,
    s: *const std::os::raw::c_void,
    len: usize,
    cb1: Option<fn(*mut u8, usize, *mut std::os::raw::c_void)>,
    cb2: Option<fn(i32, *mut std::os::raw::c_void)>,
    data: *mut std::os::raw::c_void,
) -> usize {
    if s.is_null() {
        return 0;
    }
    let us = s as *const u8;
    let mut pos: usize = 0;
    // Copy values that don't change.
    let delim = p.delim_char;
    let quote = p.quote_char;
    let mut quoted = p.quoted;
    let mut pstate = p.pstate;
    let mut spaces = p.spaces;
    let mut entry_pos = p.entry_pos;

    // Ensure there is an entry buffer allocated.
    if p.entry_buf.is_empty() && pos < len {
        if csv_increase_buffer(p) != 0 {
            p.quoted = quoted;
            p.pstate = pstate;
            p.spaces = spaces;
            p.entry_pos = entry_pos;
            return pos;
        }
    }

    unsafe {
        while pos < len {
            let entry_size = if (p.options & 8) != 0 {
                p.entry_buf.capacity() - 1
            } else {
                p.entry_buf.capacity()
            };
            if entry_pos == entry_size {
                if csv_increase_buffer(p) != 0 {
                    p.quoted = quoted;
                    p.pstate = pstate;
                    p.spaces = spaces;
                    p.entry_pos = entry_pos;
                    return pos;
                }
            }
            let c = *us.add(pos);
            pos += 1;
            match pstate {
                0 | 1 => {
                    let space = if let Some(ref f) = p.is_space {
                        f(c)
                    } else {
                        c == 0x20 || c == 0x09
                    };
                    let term = if let Some(ref f) = p.is_term {
                        f(c)
                    } else {
                        c == 0x0d || c == 0x0a
                    };
                    if space && c != delim {
                        continue;
                    } else if term {
                        if pstate == 1 {
                            if !quoted {
                                entry_pos = entry_pos.saturating_sub(spaces);
                            }
                            if (p.options & 8) != 0 && entry_pos < p.entry_buf.capacity() {
                                p.entry_buf[entry_pos] = 0;
                            }
                            if let Some(cb1_fn) = cb1 {
                                if (p.options & 16) != 0 && !quoted && entry_pos == 0 {
                                    cb1_fn(std::ptr::null_mut(), entry_pos, data);
                                } else {
                                    cb1_fn(p.entry_buf.as_mut_ptr(), entry_pos, data);
                                }
                            }
                            pstate = 1;
                            entry_pos = 0;
                            quoted = false;
                            spaces = 0;
                        }
                        if let Some(cb2_fn) = cb2 {
                            cb2_fn(c as i32, data);
                        }
                        pstate = 0;
                        entry_pos = 0;
                        quoted = false;
                        spaces = 0;
                    } else if c == delim {
                        if !quoted {
                            entry_pos = entry_pos.saturating_sub(spaces);
                        }
                        if (p.options & 8) != 0 && entry_pos < p.entry_buf.capacity() {
                            p.entry_buf[entry_pos] = 0;
                        }
                        if let Some(cb1_fn) = cb1 {
                            if (p.options & 16) != 0 && !quoted && entry_pos == 0 {
                                cb1_fn(std::ptr::null_mut(), entry_pos, data);
                            } else {
                                cb1_fn(p.entry_buf.as_mut_ptr(), entry_pos, data);
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
                        p.entry_buf[entry_pos] = c;
                        entry_pos += 1;
                    }
                }
                2 => {
                    if c == quote {
                        if quoted {
                            p.entry_buf[entry_pos] = c;
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
                            p.entry_buf[entry_pos] = c;
                            entry_pos += 1;
                            spaces = 0;
                        }
                    } else if c == delim {
                        if quoted {
                            p.entry_buf[entry_pos] = c;
                            entry_pos += 1;
                        } else {
                            entry_pos = entry_pos.saturating_sub(spaces);
                            if (p.options & 8) != 0 && entry_pos < p.entry_buf.capacity() {
                                p.entry_buf[entry_pos] = 0;
                            }
                            if let Some(cb1_fn) = cb1 {
                                if (p.options & 16) != 0 && !quoted && entry_pos == 0 {
                                    cb1_fn(std::ptr::null_mut(), entry_pos, data);
                                } else {
                                    cb1_fn(p.entry_buf.as_mut_ptr(), entry_pos, data);
                                }
                            }
                            pstate = 1;
                            entry_pos = 0;
                            quoted = false;
                            spaces = 0;
                        }
                    } else if if let Some(ref f) = p.is_term {
                        f(c)
                    } else {
                        c == 0x0d || c == 0x0a
                    } {
                        if !quoted {
                            entry_pos = entry_pos.saturating_sub(spaces);
                            if (p.options & 8) != 0 && entry_pos < p.entry_buf.capacity() {
                                p.entry_buf[entry_pos] = 0;
                            }
                            if let Some(cb1_fn) = cb1 {
                                if (p.options & 16) != 0 && !quoted && entry_pos == 0 {
                                    cb1_fn(std::ptr::null_mut(), entry_pos, data);
                                } else {
                                    cb1_fn(p.entry_buf.as_mut_ptr(), entry_pos, data);
                                }
                            }
                            pstate = 1;
                            entry_pos = 0;
                            quoted = false;
                            spaces = 0;
                            if let Some(cb2_fn) = cb2 {
                                cb2_fn(c as i32, data);
                            }
                            pstate = 0;
                            entry_pos = 0;
                            quoted = false;
                            spaces = 0;
                        } else {
                            p.entry_buf[entry_pos] = c;
                            entry_pos += 1;
                        }
                    } else if !quoted && if let Some(ref f) = p.is_space {
                        f(c)
                    } else {
                        c == 0x20 || c == 0x09
                    } {
                        p.entry_buf[entry_pos] = c;
                        entry_pos += 1;
                        spaces += 1;
                    } else {
                        p.entry_buf[entry_pos] = c;
                        entry_pos += 1;
                        spaces = 0;
                    }
                }
                3 => {
                    if c == delim {
                        entry_pos = entry_pos.saturating_sub(spaces + 1);
                        if !quoted {
                            entry_pos = entry_pos.saturating_sub(spaces);
                        }
                        if (p.options & 8) != 0 && entry_pos < p.entry_buf.capacity() {
                            p.entry_buf[entry_pos] = 0;
                        }
                        if let Some(cb1_fn) = cb1 {
                            if (p.options & 16) != 0 && !quoted && entry_pos == 0 {
                                cb1_fn(std::ptr::null_mut(), entry_pos, data);
                            } else {
                                cb1_fn(p.entry_buf.as_mut_ptr(), entry_pos, data);
                            }
                        }
                        pstate = 1;
                        entry_pos = 0;
                        quoted = false;
                        spaces = 0;
                    } else if if let Some(ref f) = p.is_term {
                        f(c)
                    } else {
                        c == 0x0d || c == 0x0a
                    } {
                        entry_pos = entry_pos.saturating_sub(spaces + 1);
                        if !quoted {
                            entry_pos = entry_pos.saturating_sub(spaces);
                        }
                        if (p.options & 8) != 0 && entry_pos < p.entry_buf.capacity() {
                            p.entry_buf[entry_pos] = 0;
                        }
                        if let Some(cb1_fn) = cb1 {
                            if (p.options & 16) != 0 && !quoted && entry_pos == 0 {
                                cb1_fn(std::ptr::null_mut(), entry_pos, data);
                            } else {
                                cb1_fn(p.entry_buf.as_mut_ptr(), entry_pos, data);
                            }
                        }
                        pstate = 1;
                        entry_pos = 0;
                        quoted = false;
                        spaces = 0;
                        if let Some(cb2_fn) = cb2 {
                            cb2_fn(c as i32, data);
                        }
                        pstate = 0;
                        entry_pos = 0;
                        quoted = false;
                        spaces = 0;
                    } else if if let Some(ref f) = p.is_space {
                        f(c)
                    } else {
                        c == 0x20 || c == 0x09
                    } {
                        p.entry_buf[entry_pos] = c;
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
                            p.entry_buf[entry_pos] = c;
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
                        p.entry_buf[entry_pos] = c;
                        entry_pos += 1;
                    }
                }
                _ => {}
            }
        }
    }
    p.quoted = quoted;
    p.pstate = pstate;
    p.spaces = spaces;
    p.entry_pos = entry_pos;
    pos
}
#[no_mangle]
pub unsafe extern "C" fn csv_fwrite(
    fp: *mut libc::FILE,
    src: *const std::ffi::c_void,
    src_size: usize,
) -> std::os::raw::c_int {
    csv_fwrite2(fp, src, src_size, 0x22u8)
}
#[no_mangle]
pub extern "C" fn csv_write(
    dest: *mut std::ffi::c_void,
    dest_size: usize,
    src: *const std::ffi::c_void,
    src_size: usize,
) -> usize {
    unsafe { csv_write2(dest, dest_size, src, src_size, 0x22) }
}