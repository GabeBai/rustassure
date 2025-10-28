struct CsvParser {
    pub pstate: i32,
    pub quoted: i32,
    pub spaces: usize,
    // Use Option<Vec<u8>> to represent a possibly unallocated buffer.
    pub entry_buf: Option<Vec<u8>>,
    // Invariant: if entry_buf is Some(buf), then entry_size equals buf.capacity()
    // and entry_pos is the current length/position in use.
    pub entry_pos: usize,
    pub entry_size: usize,
    pub status: i32,
    pub options: u8,
    pub quote_char: u8,
    pub delim_char: u8,
    // Function pointers to character classification callbacks:
    // They accept a byte and return an i32 (typically 0 for false, nonzero for true).
    pub is_space: Option<fn(u8) -> i32>,
    pub is_term: Option<fn(u8) -> i32>,
    pub blk_size: usize,
    // Custom memory allocation callbacks.
    // The malloc_func returns an allocated buffer as an Option<Vec<u8>>
    // of the requested capacity.
    pub malloc_func: Option<fn(usize) -> Option<Vec<u8>>>,
    // The realloc_func takes the old buffer (or None) and a new capacity, and returns
    // a new buffer with the requested capacity (or None on failure).
    pub realloc_func: Option<fn(Option<Vec<u8>>, usize) -> Option<Vec<u8>>>,
    // The free_func is called with a buffer to be freed.
    pub free_func: Option<fn(Vec<u8>)>,
}

pub fn csv_set_blk_size(p: Option<&mut CsvParser>, size: usize) {
    if let Some(parser) = p {
        parser.blk_size = size;
    }
}
use std::ffi::c_void;
use std::ptr;

pub fn csv_fini(
    p: Option<&mut CsvParser>,
    cb1: Option<fn(*mut u8, usize, *mut c_void)>,
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

    if pstate == 2 && quoted != 0 && (parser.options & 1 != 0) && (parser.options & 4 != 0) {
        parser.status = 1;
        return -1;
    }

    if pstate == 3 {
        // In C: p->entry_pos -= p->spaces + 1;
        // Use saturating_sub to avoid underflow.
        parser.entry_pos = parser.entry_pos.saturating_sub(spaces + 1);
        entry_pos = parser.entry_pos;
        // fallthrough to case 1/2 processing.
    }

    if matches!(pstate, 1 | 2 | 3) {
        if quoted == 0 {
            entry_pos = entry_pos.saturating_sub(spaces);
        }
        if (parser.options & 8) != 0 {
            if let Some(ref mut buf) = parser.entry_buf {
                if entry_pos < buf.len() {
                    buf[entry_pos] = 0;
                }
            }
        }
        if let Some(callback) = cb1 {
            if (parser.options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                callback(ptr::null_mut(), entry_pos, data);
            } else {
                let buf_ptr = parser
                    .entry_buf
                    .as_mut()
                    .map_or(ptr::null_mut(), |buf| buf.as_mut_ptr());
                callback(buf_ptr, entry_pos, data);
            }
        }
        // First callback block resets local state.
        pstate = 1;
        entry_pos = 0;
        quoted = 0;
        spaces = 0;

        if let Some(callback) = cb2 {
            callback(-1, data);
        }
        pstate = 0;
        entry_pos = 0;
        quoted = 0;
        spaces = 0;
    }

    parser.spaces = 0;
    parser.quoted = 0;
    parser.entry_pos = 0;
    parser.status = 0;
    parser.pstate = 0;

    0
}
pub fn csv_init(p: Option<&mut CsvParser>, options: u8) -> i32 {
    let parser = match p {
        Some(p) => p,
        None => return -1,
    };

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
    parser.is_space = None;
    parser.is_term = None;
    parser.blk_size = 128;
    parser.malloc_func = None;
    parser.realloc_func = Some(std_realloc);
    parser.free_func = Some(std_free);
    0
}

fn std_realloc(buf: Option<Vec<u8>>, new_cap: usize) -> Option<Vec<u8>> {
    let mut new_buf = Vec::with_capacity(new_cap);
    if let Some(old_buf) = buf {
        new_buf.extend_from_slice(&old_buf);
    }
    Some(new_buf)
}

fn std_free(_buf: Vec<u8>) {}

pub fn csv_set_realloc_func(
    p: Option<&mut CsvParser>,
    f: Option<fn(Option<Vec<u8>>, usize) -> Option<Vec<u8>>>,
) {
    if let (Some(parser), Some(func)) = (p, f) {
        parser.realloc_func = Some(func);
    }
}
pub fn csv_increase_buffer(p: Option<&mut CsvParser>) -> i32 {
    let parser = match p {
        Some(parser) => parser,
        None => return 0,
    };

    let realloc = match parser.realloc_func {
        Some(func) => func,
        None => return 0,
    };

    let mut to_add = parser.blk_size;
    let max = usize::MAX;
    if parser.entry_size >= max.saturating_sub(to_add) {
        to_add = max - parser.entry_size;
    }
    if to_add == 0 {
        parser.status = 3;
        return -1;
    }

    loop {
        let new_cap = parser.entry_size.checked_add(to_add).unwrap();
        if let Some(new_buf) = realloc(parser.entry_buf.clone(), new_cap) {
            parser.entry_buf = Some(new_buf);
            break;
        }
        to_add /= 2;
        if to_add == 0 {
            parser.status = 2;
            return -1;
        }
    }
    parser.entry_size += to_add;
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
pub fn csv_write(
    dest: *mut std::ffi::c_void,
    dest_size: usize,
    src: *const std::ffi::c_void,
    src_size: usize,
) -> usize {
    // In this implementation, the quote character (0x22) is ignored.
    // Safety: Caller must ensure that dest and src are valid for dest_size and src_size bytes respectively.
    if dest.is_null() || src.is_null() || dest_size < src_size {
        return 0;
    }
    unsafe {
        let src_slice = std::slice::from_raw_parts(src as *const u8, src_size);
        let dest_slice = std::slice::from_raw_parts_mut(dest as *mut u8, dest_size);
        dest_slice[..src_size].copy_from_slice(src_slice);
    }
    src_size
}
pub fn csv_free(p: Option<&mut CsvParser>) {
    if let Some(parser) = p {
        if let (Some(buf), Some(free_func)) = (parser.entry_buf.take(), parser.free_func) {
            free_func(buf);
        }
        parser.entry_size = 0;
    }
}
pub fn csv_error(p: Option<&CsvParser>) -> i32 {
    let parser = p.expect("received null csv_parser");
    parser.status
}
pub fn csv_set_free_func(p: Option<&mut CsvParser>, f: Option<fn(Vec<u8>)>) {
    if let (Some(parser), Some(func)) = (p, f) {
        parser.free_func = Some(func);
    }
}
pub fn __uint16_identity(x: u16) -> u16 {
    x
}
pub fn csv_get_buffer_size(p: Option<&CsvParser>) -> usize {
    if let Some(parser) = p {
        parser.entry_size
    } else {
        0
    }
}
pub fn __bswap_16(bsx: u16) -> u16 {
    bsx.swap_bytes()
}
#[repr(C)]
pub struct FILE {
    _private: [u8; 0],
}

extern "C" {
    fn fputc(c: i32, stream: *mut FILE) -> i32;
}

#[no_mangle]
pub unsafe extern "C" fn csv_fwrite2(
    fp: *mut FILE,
    src: *const std::ffi::c_void,
    src_size: usize,
    quote: u8,
) -> i32 {
    if fp.is_null() || src.is_null() {
        return 0;
    }
    if fputc(quote as i32, fp) == -1 {
        return -1;
    }
    let bytes = std::slice::from_raw_parts(src as *const u8, src_size);
    for &b in bytes {
        if b == quote {
            if fputc(quote as i32, fp) == -1 {
                return -1;
            }
        }
        if fputc(b as i32, fp) == -1 {
            return -1;
        }
    }
    if fputc(quote as i32, fp) == -1 {
        return -1;
    }
    0
}
pub fn csv_set_space_func(p: Option<&mut CsvParser>, f: fn(u8) -> i32) {
    if let Some(parser) = p {
        parser.is_space = Some(f);
    }
}
pub fn csv_set_term_func(p: Option<&mut CsvParser>, f: fn(u8) -> i32) {
    if let Some(parser) = p {
        parser.is_term = Some(f);
    }
}
pub fn csv_parse(
    p: &mut CsvParser,
    s: *const c_void,
    len: usize,
    cb1: Option<fn(*mut u8, usize, *mut c_void)>,
    cb2: Option<fn(i32, *mut c_void)>,
    data: *mut c_void,
) -> usize {
    use std::slice;
    if s.is_null() {
        return 0;
    }
    let us = unsafe { slice::from_raw_parts(s as *const u8, len) };
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
        let limit = if p.options & 8 != 0 {
            p.entry_size.saturating_sub(1)
        } else {
            p.entry_size
        };
        if entry_pos == limit {
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
                if (is_space
                    .map(|f| f(c))
                    .unwrap_or_else(|| if c == 0x20 || c == 0x09 { 1 } else { 0 })
                    != 0)
                    && c != delim
                {
                    continue;
                } else if is_term
                    .map(|f| f(c))
                    .unwrap_or_else(|| if c == 0x0d || c == 0x0a { 1 } else { 0 })
                    != 0
                {
                    if pstate == 1 {
                        if quoted == 0 {
                            entry_pos = entry_pos.saturating_sub(spaces);
                        }
                        if p.options & 8 != 0 {
                            if let Some(ref mut buf) = p.entry_buf {
                                if entry_pos < buf.len() {
                                    buf[entry_pos] = 0;
                                }
                            }
                        }
                        if let Some(callback) = cb1 {
                            if (p.options & 16 != 0) && (quoted == 0) && (entry_pos == 0) {
                                callback(ptr::null_mut(), entry_pos, data);
                            } else {
                                let buf_ptr = p
                                    .entry_buf
                                    .as_mut()
                                    .map_or(ptr::null_mut(), |buf| buf.as_mut_ptr());
                                callback(buf_ptr, entry_pos, data);
                            }
                        }
                        pstate = 1;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;
                        if let Some(callback) = cb2 {
                            callback(c as i32, data);
                        }
                        pstate = 0;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;
                    } else {
                        if p.options & 2 != 0 {
                            if let Some(callback) = cb2 {
                                callback(c as i32, data);
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
                        entry_pos = entry_pos.saturating_sub(spaces);
                    }
                    if p.options & 8 != 0 {
                        if let Some(ref mut buf) = p.entry_buf {
                            if entry_pos < buf.len() {
                                buf[entry_pos] = 0;
                            }
                        }
                    }
                    if let Some(callback) = cb1 {
                        if (p.options & 16 != 0) && (quoted == 0) && (entry_pos == 0) {
                            callback(ptr::null_mut(), entry_pos, data);
                        } else {
                            let buf_ptr = p
                                .entry_buf
                                .as_mut()
                                .map_or(ptr::null_mut(), |buf| buf.as_mut_ptr());
                            callback(buf_ptr, entry_pos, data);
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
                        if entry_pos < buf.len() {
                            buf[entry_pos] = c;
                        } else {
                            buf.push(c);
                        }
                    }
                    entry_pos += 1;
                }
            }
            2 => {
                if c == quote {
                    if quoted != 0 {
                        if let Some(ref mut buf) = p.entry_buf {
                            if entry_pos < buf.len() {
                                buf[entry_pos] = c;
                            } else {
                                buf.push(c);
                            }
                        }
                        entry_pos += 1;
                        pstate = 3;
                    } else {
                        if p.options & 1 != 0 {
                            p.status = 1;
                            p.quoted = quoted;
                            p.pstate = pstate;
                            p.spaces = spaces;
                            p.entry_pos = entry_pos;
                            return pos.saturating_sub(1);
                        }
                        if let Some(ref mut buf) = p.entry_buf {
                            if entry_pos < buf.len() {
                                buf[entry_pos] = c;
                            } else {
                                buf.push(c);
                            }
                        }
                        entry_pos += 1;
                        spaces = 0;
                    }
                } else if c == delim {
                    if quoted != 0 {
                        if let Some(ref mut buf) = p.entry_buf {
                            if entry_pos < buf.len() {
                                buf[entry_pos] = c;
                            } else {
                                buf.push(c);
                            }
                        }
                        entry_pos += 1;
                    } else {
                        entry_pos = entry_pos.saturating_sub(spaces);
                        if p.options & 8 != 0 {
                            if let Some(ref mut buf) = p.entry_buf {
                                if entry_pos < buf.len() {
                                    buf[entry_pos] = 0;
                                }
                            }
                        }
                        if let Some(callback) = cb1 {
                            if (p.options & 16 != 0) && (quoted == 0) && (entry_pos == 0) {
                                callback(ptr::null_mut(), entry_pos, data);
                            } else {
                                let buf_ptr = p
                                    .entry_buf
                                    .as_mut()
                                    .map_or(ptr::null_mut(), |buf| buf.as_mut_ptr());
                                callback(buf_ptr, entry_pos, data);
                            }
                        }
                        pstate = 1;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;
                    }
                } else if is_term
                    .map(|f| f(c))
                    .unwrap_or_else(|| if c == 0x0d || c == 0x0a { 1 } else { 0 })
                    != 0
                {
                    if quoted == 0 {
                        entry_pos = entry_pos.saturating_sub(spaces);
                        if p.options & 8 != 0 {
                            if let Some(ref mut buf) = p.entry_buf {
                                if entry_pos < buf.len() {
                                    buf[entry_pos] = 0;
                                }
                            }
                        }
                        if let Some(callback) = cb1 {
                            if (p.options & 16 != 0) && (quoted == 0) && (entry_pos == 0) {
                                callback(ptr::null_mut(), entry_pos, data);
                            } else {
                                let buf_ptr = p
                                    .entry_buf
                                    .as_mut()
                                    .map_or(ptr::null_mut(), |buf| buf.as_mut_ptr());
                                callback(buf_ptr, entry_pos, data);
                            }
                        }
                        pstate = 1;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;
                        if let Some(callback) = cb2 {
                            callback(c as i32, data);
                        }
                        pstate = 0;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;
                    } else {
                        if let Some(ref mut buf) = p.entry_buf {
                            if entry_pos < buf.len() {
                                buf[entry_pos] = c;
                            } else {
                                buf.push(c);
                            }
                        }
                        entry_pos += 1;
                    }
                } else if quoted == 0
                    && (is_space
                        .map(|f| f(c))
                        .unwrap_or_else(|| if c == 0x20 || c == 0x09 { 1 } else { 0 })
                        != 0)
                {
                    if let Some(ref mut buf) = p.entry_buf {
                        if entry_pos < buf.len() {
                            buf[entry_pos] = c;
                        } else {
                            buf.push(c);
                        }
                    }
                    entry_pos += 1;
                    spaces += 1;
                } else {
                    if let Some(ref mut buf) = p.entry_buf {
                        if entry_pos < buf.len() {
                            buf[entry_pos] = c;
                        } else {
                            buf.push(c);
                        }
                    }
                    entry_pos += 1;
                    spaces = 0;
                }
            }
            3 => {
                if c == delim {
                    entry_pos = entry_pos.saturating_sub(spaces + 1);
                    if quoted == 0 {
                        entry_pos = entry_pos.saturating_sub(spaces);
                    }
                    if p.options & 8 != 0 {
                        if let Some(ref mut buf) = p.entry_buf {
                            if entry_pos < buf.len() {
                                buf[entry_pos] = 0;
                            }
                        }
                    }
                    if let Some(callback) = cb1 {
                        if (p.options & 16 != 0) && (quoted == 0) && (entry_pos == 0) {
                            callback(ptr::null_mut(), entry_pos, data);
                        } else {
                            let buf_ptr = p
                                .entry_buf
                                .as_mut()
                                .map_or(ptr::null_mut(), |buf| buf.as_mut_ptr());
                            callback(buf_ptr, entry_pos, data);
                        }
                    }
                    pstate = 1;
                    entry_pos = 0;
                    quoted = 0;
                    spaces = 0;
                } else if is_term
                    .map(|f| f(c))
                    .unwrap_or_else(|| if c == 0x0d || c == 0x0a { 1 } else { 0 })
                    != 0
                {
                    entry_pos = entry_pos.saturating_sub(spaces + 1);
                    if quoted == 0 {
                        entry_pos = entry_pos.saturating_sub(spaces);
                    }
                    if p.options & 8 != 0 {
                        if let Some(ref mut buf) = p.entry_buf {
                            if entry_pos < buf.len() {
                                buf[entry_pos] = 0;
                            }
                        }
                    }
                    if let Some(callback) = cb1 {
                        if (p.options & 16 != 0) && (quoted == 0) && (entry_pos == 0) {
                            callback(ptr::null_mut(), entry_pos, data);
                        } else {
                            let buf_ptr = p
                                .entry_buf
                                .as_mut()
                                .map_or(ptr::null_mut(), |buf| buf.as_mut_ptr());
                            callback(buf_ptr, entry_pos, data);
                        }
                    }
                    pstate = 1;
                    entry_pos = 0;
                    quoted = 0;
                    spaces = 0;
                    if let Some(callback) = cb2 {
                        callback(c as i32, data);
                    }
                    pstate = 0;
                    entry_pos = 0;
                    quoted = 0;
                    spaces = 0;
                } else if is_space
                    .map(|f| f(c))
                    .unwrap_or_else(|| if c == 0x20 || c == 0x09 { 1 } else { 0 })
                    != 0
                {
                    if let Some(ref mut buf) = p.entry_buf {
                        if entry_pos < buf.len() {
                            buf[entry_pos] = c;
                        } else {
                            buf.push(c);
                        }
                    }
                    entry_pos += 1;
                    spaces += 1;
                } else if c == quote {
                    if spaces > 0 {
                        if p.options & 1 != 0 {
                            p.status = 1;
                            p.quoted = quoted;
                            p.pstate = pstate;
                            p.spaces = spaces;
                            p.entry_pos = entry_pos;
                            return pos.saturating_sub(1);
                        }
                        spaces = 0;
                        if let Some(ref mut buf) = p.entry_buf {
                            if entry_pos < buf.len() {
                                buf[entry_pos] = c;
                            } else {
                                buf.push(c);
                            }
                        }
                        entry_pos += 1;
                    } else {
                        pstate = 2;
                    }
                } else {
                    if p.options & 1 != 0 {
                        p.status = 1;
                        p.quoted = quoted;
                        p.pstate = pstate;
                        p.spaces = spaces;
                        p.entry_pos = entry_pos;
                        return pos.saturating_sub(1);
                    }
                    pstate = 2;
                    spaces = 0;
                    if let Some(ref mut buf) = p.entry_buf {
                        if entry_pos < buf.len() {
                            buf[entry_pos] = c;
                        } else {
                            buf.push(c);
                        }
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
#[no_mangle]
pub unsafe extern "C" fn csv_fwrite(
    fp: *mut FILE,
    src: *const std::ffi::c_void,
    src_size: usize,
) -> i32 {
    csv_fwrite2(fp, src, src_size, 0x22)
}
pub fn __bswap_64(bsx: u64) -> u64 {
    bsx.swap_bytes()
}
pub fn csv_get_opts(p: Option<&CsvParser>) -> i32 {
    p.map(|parser| parser.options as i32).unwrap_or(-1)
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
    if let Some(parser) = p {
        parser.options = options;
        0
    } else {
        -1
    }
}
pub unsafe fn csv_write2(
    dest: *mut c_void,
    dest_size: usize,
    src: *const c_void,
    src_size: usize,
    quote: u8,
) -> usize {
    if src.is_null() {
        return 0;
    }
    let mut dsize = if dest.is_null() { 0 } else { dest_size };
    let mut chars: usize = 0;
    let mut cdest = dest as *mut u8;
    let mut csrc = src as *const u8;

    if dsize > 0 {
        *cdest = quote;
        cdest = cdest.add(1);
        chars += 1;
    }

    let mut remaining = src_size;
    while remaining > 0 {
        let byte = *csrc;
        if byte == quote {
            if dsize > chars {
                *cdest = quote;
                cdest = cdest.add(1);
            }
            chars += 1;
        }
        if dsize > chars {
            *cdest = byte;
            cdest = cdest.add(1);
        }
        chars += 1;
        csrc = csrc.add(1);
        remaining -= 1;
    }

    if dsize > chars {
        *cdest = quote;
    }
    chars + 1
}