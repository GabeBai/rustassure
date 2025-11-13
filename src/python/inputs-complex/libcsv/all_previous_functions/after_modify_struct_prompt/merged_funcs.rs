
struct CsvParser {
    pub pstate: i32,
    pub quoted: i32,
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
    p: Option<&mut CsvParser>,
    cb1: Option<fn(*const u8, usize, *mut c_void)>,
    cb2: Option<fn(i32, *mut c_void)>,
    data: *mut c_void,
) -> i32 {
    let parser = match p {
        Some(p) => p,
        None => return -1,
    };

    let mut quoted = parser.quoted;
    let mut pstate = parser.pstate;
    let mut spaces = parser.spaces;
    let mut entry_pos = parser.entry_pos;

    if pstate == 2 && parser.quoted != 0 && (parser.options & 1 != 0) && (parser.options & 4 != 0) {
        parser.status = 1;
        return -1;
    }

    match pstate {
        3 => {
            parser.entry_pos = parser.entry_pos.saturating_sub(parser.spaces + 1);
            entry_pos = parser.entry_pos;
            if quoted == 0 {
                entry_pos = entry_pos.saturating_sub(spaces);
            }
            if (parser.options & 8) != 0 {
                if entry_pos < parser.entry_buf.len() {
                    parser.entry_buf[entry_pos] = b'\0';
                }
            }
            if let Some(f) = cb1 {
                if (parser.options & 16 != 0) && quoted == 0 && entry_pos == 0 {
                    f(std::ptr::null(), entry_pos, data);
                } else {
                    f(parser.entry_buf.as_ptr(), entry_pos, data);
                }
            }
            pstate = 1;
            entry_pos = 0;
            quoted = 0;
            spaces = 0;

            if let Some(f) = cb2 {
                f(-1, data);
            }
            pstate = 0;
            entry_pos = 0;
            quoted = 0;
            spaces = 0;
        }
        1 | 2 => {
            if quoted == 0 {
                entry_pos = entry_pos.saturating_sub(spaces);
            }
            if (parser.options & 8) != 0 {
                if entry_pos < parser.entry_buf.len() {
                    parser.entry_buf[entry_pos] = b'\0';
                }
            }
            if let Some(f) = cb1 {
                if (parser.options & 16 != 0) && quoted == 0 && entry_pos == 0 {
                    f(std::ptr::null(), entry_pos, data);
                } else {
                    f(parser.entry_buf.as_ptr(), entry_pos, data);
                }
            }
            pstate = 1;
            entry_pos = 0;
            quoted = 0;
            spaces = 0;

            if let Some(f) = cb2 {
                f(-1, data);
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
}
pub fn csv_init(parser: Option<&mut CsvParser>, options: u8) -> i32 {
    let p = match parser {
        Some(parser) => parser,
        None => return -1,
    };

    p.entry_buf = Vec::new();
    p.pstate = 0;
    p.quoted = 0;
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
pub fn csv_set_realloc_func(
    p: Option<&mut CsvParser>,
    _f: Option<fn(*mut c_void, usize) -> *mut c_void>,
) {
    // CsvParser does not have a realloc_func field.
    // This function is a no-op in this implementation.
    let _ = p;
}
pub fn csv_increase_buffer(p: &mut CsvParser) -> i32 {
    let mut to_add = p.blk_size;
    let current_capacity = p.entry_buf.capacity();
    if current_capacity >= usize::MAX.saturating_sub(to_add) {
        to_add = usize::MAX - current_capacity;
    }
    if to_add == 0 {
        p.status = 3;
        return -1;
    }
    loop {
        match p.entry_buf.try_reserve_exact(to_add) {
            Ok(_) => return 0,
            Err(_) => {
                to_add /= 2;
                if to_add == 0 {
                    p.status = 2;
                    return -1;
                }
            }
        }
    }
}
static CSV_ERRORS: [&str; 5] = [
    "success",
    "error parsing data while strict checking enabled",
    "memory exhausted while increasing buffer size",
    "data size too large",
    "invalid status code",
];

pub fn csv_strerror(status: i32) -> &'static str {
    if status >= 4 || status < 0 {
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
    bsx.swap_bytes()
}
pub fn csv_free(p: Option<&mut CsvParser>) {
    if let Some(parser) = p {
        parser.entry_buf = Vec::new();
    }
}
pub fn csv_error(p: &CsvParser) -> i32 {
    p.status
}
pub fn csv_set_free_func(_parser: Option<&mut CsvParser>, _free_func: Option<fn(*mut std::ffi::c_void)>) {
    // no-op: CsvParser does not have a free_func field.
}
pub fn __uint16_identity(x: u16) -> u16 {
    x
}
pub fn csv_get_buffer_size(p: Option<&CsvParser>) -> usize {
    if let Some(parser) = p {
        parser.entry_buf.capacity()
    } else {
        0
    }
}
pub fn __bswap_16(bsx: u16) -> u16 {
    bsx.swap_bytes()
}
use std::io::Write;

pub fn csv_fwrite2(fp: &mut impl Write, src: &[u8], quote: u8) -> i32 {
    if fp.write_all(&[quote]).is_err() {
        return -1;
    }
    for &byte in src {
        if byte == quote {
            if fp.write_all(&[quote]).is_err() {
                return -1;
            }
        }
        if fp.write_all(&[byte]).is_err() {
            return -1;
        }
    }
    if fp.write_all(&[quote]).is_err() {
        return -1;
    }
    0
}
pub fn csv_set_space_func(p: Option<&mut CsvParser>, f: fn(u8) -> i32) {
    if let Some(parser) = p {
        parser.is_space = Some(Box::new(move |c| f(c) != 0));
    }
}
pub fn csv_set_term_func(p: Option<&mut CsvParser>, f: Option<fn(u8) -> i32>) {
    if let Some(parser) = p {
        parser.is_term = f.map(|func| Box::new(move |c| func(c) != 0) as Box<dyn Fn(u8) -> bool>);
    }
}
pub fn __bswap_64(bsx: u64) -> u64 {
    bsx.swap_bytes()
}
pub fn csv_get_opts(p: Option<&CsvParser>) -> i32 {
    match p {
        Some(parser) => parser.options as i32,
        None => -1,
    }
}
pub fn csv_set_delim(p: Option<&mut CsvParser>, c: u8) {
    if let Some(parser) = p {
        parser.delim_char = c;
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
pub fn __uint32_identity(x: u32) -> u32 {
    x
}
pub fn csv_set_opts(p: Option<&mut CsvParser>, options: u8) -> i32 {
    match p {
        Some(parser) => {
            parser.options = options;
            0
        }
        None => -1,
    }
}
#[no_mangle]
pub unsafe extern "C" fn csv_write2(
    dest: *mut c_void,
    mut dest_size: usize,
    src: *const c_void,
    src_size: usize,
    quote: u8,
) -> usize {
    if src.is_null() {
        return 0;
    }
    if dest.is_null() {
        dest_size = 0;
    }
    let mut chars: usize = 0;
    let mut cdest = dest as *mut u8;
    let mut csrc = src as *const u8;
    if dest_size > 0 {
        *cdest = quote;
        cdest = cdest.add(1);
    }
    chars = chars.saturating_add(1);
    let mut remaining = src_size;
    while remaining != 0 {
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
        csrc = csrc.add(1);
        remaining -= 1;
    }
    if dest_size > chars {
        *cdest = quote;
    }
    chars = chars.saturating_add(1);
    chars
}
pub fn csv_parse(
    p: &mut CsvParser,
    s: *const std::ffi::c_void,
    len: usize,
    cb1: Option<fn(*const u8, usize, *mut std::ffi::c_void)>,
    cb2: Option<fn(i32, *mut std::ffi::c_void)>,
    data: *mut std::ffi::c_void,
) -> usize {
    if s.is_null() {
        return 0;
    }
    // Safety: the caller guarantees that s points to at least `len` bytes.
    let us = unsafe { std::slice::from_raw_parts(s as *const u8, len) };

    let options = p.options;
    let delim = p.delim_char;
    let quote = p.quote_char;

    let mut pos: usize = 0;
    let mut local_pstate: i32 = p.pstate;
    let mut local_quoted: i32 = p.quoted;
    let mut local_spaces: usize = p.spaces;
    let mut local_entry_pos: usize = p.entry_pos;

    // If entry_buf is not allocated and there is data to parse, try to increase it.
    if p.entry_buf.capacity() == 0 && pos < len {
        if csv_increase_buffer(p) != 0 {
            p.quoted = local_quoted;
            p.pstate = local_pstate;
            p.spaces = local_spaces;
            p.entry_pos = local_entry_pos;
            return pos;
        }
    }

    while pos < len {
        let cap_threshold = if options & 8 != 0 {
            p.entry_buf.capacity().saturating_sub(1)
        } else {
            p.entry_buf.capacity()
        };
        if local_entry_pos == cap_threshold {
            if csv_increase_buffer(p) != 0 {
                p.quoted = local_quoted;
                p.pstate = local_pstate;
                p.spaces = local_spaces;
                p.entry_pos = local_entry_pos;
                return pos;
            }
        }
        let c = us[pos];
        pos += 1;
        match local_pstate {
            0 | 1 => {
                let is_space = if let Some(ref f) = p.is_space { f(c) } else { c == 0x20 || c == 0x09 };
                if is_space && c != delim {
                    continue;
                } else {
                    let is_term = if let Some(ref f) = p.is_term { f(c) } else { c == 0x0d || c == 0x0a };
                    if is_term {
                        if local_pstate == 1 {
                            if local_quoted == 0 && local_entry_pos >= local_spaces {
                                local_entry_pos = local_entry_pos.saturating_sub(local_spaces);
                            }
                            if options & 8 != 0 {
                                if local_entry_pos < p.entry_buf.len() {
                                    p.entry_buf[local_entry_pos] = b'\0';
                                } else {
                                    p.entry_buf.push(b'\0');
                                }
                            }
                            if let Some(callback) = cb1 {
                                if (options & 16 != 0) && (local_quoted == 0) && (local_entry_pos == 0) {
                                    callback(std::ptr::null(), local_entry_pos, data);
                                } else {
                                    callback(p.entry_buf.as_ptr(), local_entry_pos, data);
                                }
                            }
                            local_pstate = 1;
                            local_entry_pos = 0;
                            local_quoted = 0;
                            local_spaces = 0;
                            if let Some(callback) = cb2 {
                                callback(c as i32, data);
                            }
                            local_pstate = 0;
                            local_entry_pos = 0;
                            local_quoted = 0;
                            local_spaces = 0;
                        } else {
                            if options & 2 != 0 {
                                if let Some(callback) = cb2 {
                                    callback(c as i32, data);
                                }
                                local_pstate = 0;
                                local_entry_pos = 0;
                                local_quoted = 0;
                                local_spaces = 0;
                            }
                        }
                        continue;
                    } else if c == delim {
                        if local_quoted == 0 && local_entry_pos >= local_spaces {
                            local_entry_pos = local_entry_pos.saturating_sub(local_spaces);
                        }
                        if options & 8 != 0 {
                            if local_entry_pos < p.entry_buf.len() {
                                p.entry_buf[local_entry_pos] = b'\0';
                            } else {
                                p.entry_buf.push(b'\0');
                            }
                        }
                        if let Some(callback) = cb1 {
                            if (options & 16 != 0) && (local_quoted == 0) && (local_entry_pos == 0) {
                                callback(std::ptr::null(), local_entry_pos, data);
                            } else {
                                callback(p.entry_buf.as_ptr(), local_entry_pos, data);
                            }
                        }
                        local_pstate = 1;
                        local_entry_pos = 0;
                        local_quoted = 0;
                        local_spaces = 0;
                        break;
                    } else if c == quote {
                        local_pstate = 2;
                        local_quoted = 1;
                    } else {
                        local_pstate = 2;
                        local_quoted = 0;
                        if local_entry_pos < p.entry_buf.len() {
                            p.entry_buf[local_entry_pos] = c;
                        } else {
                            p.entry_buf.push(c);
                        }
                        local_entry_pos += 1;
                    }
                }
            }
            2 => {
                if c == quote {
                    if local_quoted != 0 {
                        if local_entry_pos < p.entry_buf.len() {
                            p.entry_buf[local_entry_pos] = c;
                        } else {
                            p.entry_buf.push(c);
                        }
                        local_entry_pos += 1;
                        local_pstate = 3;
                    } else {
                        if options & 1 != 0 {
                            p.status = 1;
                            p.quoted = local_quoted;
                            p.pstate = local_pstate;
                            p.spaces = local_spaces;
                            p.entry_pos = local_entry_pos;
                            return pos - 1;
                        }
                        if local_entry_pos < p.entry_buf.len() {
                            p.entry_buf[local_entry_pos] = c;
                        } else {
                            p.entry_buf.push(c);
                        }
                        local_entry_pos += 1;
                        local_spaces = 0;
                    }
                } else if c == delim {
                    if local_quoted != 0 {
                        if local_entry_pos < p.entry_buf.len() {
                            p.entry_buf[local_entry_pos] = c;
                        } else {
                            p.entry_buf.push(c);
                        }
                        local_entry_pos += 1;
                    } else {
                        if local_quoted == 0 && local_entry_pos >= local_spaces {
                            local_entry_pos = local_entry_pos.saturating_sub(local_spaces);
                        }
                        if options & 8 != 0 {
                            if local_entry_pos < p.entry_buf.len() {
                                p.entry_buf[local_entry_pos] = b'\0';
                            } else {
                                p.entry_buf.push(b'\0');
                            }
                        }
                        if let Some(callback) = cb1 {
                            if (options & 16 != 0) && (local_quoted == 0) && (local_entry_pos == 0) {
                                callback(std::ptr::null(), local_entry_pos, data);
                            } else {
                                callback(p.entry_buf.as_ptr(), local_entry_pos, data);
                            }
                        }
                        local_pstate = 1;
                        local_entry_pos = 0;
                        local_quoted = 0;
                        local_spaces = 0;
                    }
                } else {
                    let is_term = if let Some(ref f) = p.is_term { f(c) } else { c == 0x0d || c == 0x0a };
                    if is_term {
                        if local_quoted == 0 {
                            if local_quoted == 0 && local_entry_pos >= local_spaces {
                                local_entry_pos = local_entry_pos.saturating_sub(local_spaces);
                            }
                            if options & 8 != 0 {
                                if local_entry_pos < p.entry_buf.len() {
                                    p.entry_buf[local_entry_pos] = b'\0';
                                } else {
                                    p.entry_buf.push(b'\0');
                                }
                            }
                            if let Some(callback) = cb1 {
                                if (options & 16 != 0) && (local_quoted == 0) && (local_entry_pos == 0) {
                                    callback(std::ptr::null(), local_entry_pos, data);
                                } else {
                                    callback(p.entry_buf.as_ptr(), local_entry_pos, data);
                                }
                            }
                            local_pstate = 1;
                            local_entry_pos = 0;
                            local_quoted = 0;
                            local_spaces = 0;
                            if let Some(callback) = cb2 {
                                callback(c as i32, data);
                            }
                            local_pstate = 0;
                            local_entry_pos = 0;
                            local_quoted = 0;
                            local_spaces = 0;
                        } else {
                            if options & 1 != 0 {
                                p.status = 1;
                                p.quoted = local_quoted;
                                p.pstate = local_pstate;
                                p.spaces = local_spaces;
                                p.entry_pos = local_entry_pos;
                                return pos - 1;
                            }
                            if local_entry_pos < p.entry_buf.len() {
                                p.entry_buf[local_entry_pos] = c;
                            } else {
                                p.entry_buf.push(c);
                            }
                            local_entry_pos += 1;
                            local_spaces = 0;
                        }
                    } else {
                        let is_space = if let Some(ref f) = p.is_space { f(c) } else { c == 0x20 || c == 0x09 };
                        if local_quoted == 0 && is_space {
                            if local_entry_pos < p.entry_buf.len() {
                                p.entry_buf[local_entry_pos] = c;
                            } else {
                                p.entry_buf.push(c);
                            }
                            local_entry_pos += 1;
                            local_spaces += 1;
                        } else {
                            if local_entry_pos < p.entry_buf.len() {
                                p.entry_buf[local_entry_pos] = c;
                            } else {
                                p.entry_buf.push(c);
                            }
                            local_entry_pos += 1;
                            local_spaces = 0;
                        }
                    }
                }
            }
            3 => {
                if c == delim {
                    local_entry_pos = local_entry_pos.saturating_sub(local_spaces + 1);
                    if local_quoted == 0 && local_entry_pos >= local_spaces {
                        local_entry_pos = local_entry_pos.saturating_sub(local_spaces);
                    }
                    if options & 8 != 0 {
                        if local_entry_pos < p.entry_buf.len() {
                            p.entry_buf[local_entry_pos] = b'\0';
                        } else {
                            p.entry_buf.push(b'\0');
                        }
                    }
                    if let Some(callback) = cb1 {
                        if (options & 16 != 0) && (local_quoted == 0) && (local_entry_pos == 0) {
                            callback(std::ptr::null(), local_entry_pos, data);
                        } else {
                            callback(p.entry_buf.as_ptr(), local_entry_pos, data);
                        }
                    }
                    local_pstate = 1;
                    local_entry_pos = 0;
                    local_quoted = 0;
                    local_spaces = 0;
                } else {
                    let is_term = if let Some(ref f) = p.is_term { f(c) } else { c == 0x0d || c == 0x0a };
                    if is_term {
                        local_entry_pos = local_entry_pos.saturating_sub(local_spaces + 1);
                        if local_quoted == 0 && local_entry_pos >= local_spaces {
                            local_entry_pos = local_entry_pos.saturating_sub(local_spaces);
                        }
                        if options & 8 != 0 {
                            if local_entry_pos < p.entry_buf.len() {
                                p.entry_buf[local_entry_pos] = b'\0';
                            } else {
                                p.entry_buf.push(b'\0');
                            }
                        }
                        if let Some(callback) = cb1 {
                            if (options & 16 != 0) && (local_quoted == 0) && (local_entry_pos == 0) {
                                callback(std::ptr::null(), local_entry_pos, data);
                            } else {
                                callback(p.entry_buf.as_ptr(), local_entry_pos, data);
                            }
                        }
                        local_pstate = 1;
                        local_entry_pos = 0;
                        local_quoted = 0;
                        local_spaces = 0;
                        if let Some(callback) = cb2 {
                            callback(c as i32, data);
                        }
                        local_pstate = 0;
                        local_entry_pos = 0;
                        local_quoted = 0;
                        local_spaces = 0;
                    } else {
                        let is_space = if let Some(ref f) = p.is_space { f(c) } else { c == 0x20 || c == 0x09 };
                        if is_space {
                            if local_entry_pos < p.entry_buf.len() {
                                p.entry_buf[local_entry_pos] = c;
                            } else {
                                p.entry_buf.push(c);
                            }
                            local_entry_pos += 1;
                            local_spaces += 1;
                        } else if c == quote {
                            if local_spaces != 0 {
                                if options & 1 != 0 {
                                    p.status = 1;
                                    p.quoted = local_quoted;
                                    p.pstate = local_pstate;
                                    p.spaces = local_spaces;
                                    p.entry_pos = local_entry_pos;
                                    return pos - 1;
                                }
                                local_spaces = 0;
                                if local_entry_pos < p.entry_buf.len() {
                                    p.entry_buf[local_entry_pos] = c;
                                } else {
                                    p.entry_buf.push(c);
                                }
                                local_entry_pos += 1;
                            } else {
                                local_pstate = 2;
                            }
                        } else {
                            if options & 1 != 0 {
                                p.status = 1;
                                p.quoted = local_quoted;
                                p.pstate = local_pstate;
                                p.spaces = local_spaces;
                                p.entry_pos = local_entry_pos;
                                return pos - 1;
                            }
                            local_pstate = 2;
                            local_spaces = 0;
                            if local_entry_pos < p.entry_buf.len() {
                                p.entry_buf[local_entry_pos] = c;
                            } else {
                                p.entry_buf.push(c);
                            }
                            local_entry_pos += 1;
                        }
                    }
                }
            }
            _ => {}
        }
    }
    p.quoted = local_quoted;
    p.pstate = local_pstate;
    p.spaces = local_spaces;
    p.entry_pos = local_entry_pos;
    pos
}
pub fn csv_fwrite(fp: &mut impl std::io::Write, src: &[u8]) -> i32 {
    csv_fwrite2(fp, src, 0x22)
}
#[no_mangle]
pub unsafe extern "C" fn csv_write(
    dest: *mut std::ffi::c_void,
    dest_size: usize,
    src: *const std::ffi::c_void,
    src_size: usize,
) -> usize {
    csv_write2(dest, dest_size, src, src_size, 0x22)
}