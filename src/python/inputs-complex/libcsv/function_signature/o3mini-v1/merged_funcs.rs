
struct CsvParser {
    pub pstate: i32,
    pub quoted: i32,
    pub spaces: usize,
    // Use a Vec<u8> for a growable buffer.
    pub entry_buf: Vec<u8>,
    // Current index into the buffer.
    pub entry_pos: usize,
    // The status value.
    pub status: i32,
    // Bitflags options.
    pub options: u8,
    // The quote and delimiter characters.
    pub quote_char: u8,
    pub delim_char: u8,
    // Function pointer to check if a byte is a space.
    pub is_space: Option<fn(u8) -> bool>,
    // Function pointer to check if a byte is a terminator.
    pub is_term: Option<fn(u8) -> bool>,
    // Block size for buffer allocation increments.
    pub blk_size: usize,
    // Custom allocation function pointers.
    // In idiomatic Rust these would normally be replaced by Vec’s allocation.
    pub malloc_func: Option<fn(usize) -> *mut u8>,
    pub realloc_func: Option<fn(*mut u8, usize) -> *mut u8>,
    pub free_func: Option<fn(*mut u8)>,
}

pub fn csv_set_blk_size(p: Option<&mut CsvParser>, size: usize) {
    if let Some(parser) = p {
        parser.blk_size = size;
    }
}
use std::ptr;
use std::os::raw::c_void;

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

    if pstate == 3 {
        // Ensure we don't underflow.
        parser.entry_pos = parser.entry_pos.saturating_sub(spaces + 1);
        entry_pos = parser.entry_pos;
    }

    if pstate == 1 || pstate == 2 || pstate == 3 {
        if quoted == 0 {
            entry_pos = entry_pos.saturating_sub(spaces);
        }
        if (parser.options & 8) != 0 {
            if entry_pos < parser.entry_buf.len() {
                parser.entry_buf[entry_pos] = 0;
            }
        }
        if let Some(cb) = cb1 {
            if (parser.options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                cb(ptr::null(), entry_pos, data);
            } else {
                cb(parser.entry_buf.as_ptr(), entry_pos, data);
            }
        }
        pstate = 1;
        entry_pos = 0;
        quoted = 0;
        spaces = 0;

        if let Some(cb) = cb2 {
            cb(-1, data);
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
pub unsafe extern "C" fn csv_init(p: *mut CsvParser, options: u8) -> i32 {
    if p.is_null() {
        return -1;
    }
    let parser = &mut *p;
    parser.entry_buf = Vec::new();
    parser.pstate = 0;
    parser.quoted = 0;
    parser.spaces = 0;
    parser.entry_pos = 0;
    parser.status = 0;
    parser.options = options;
    parser.quote_char = 0x22;
    parser.delim_char = 0x2c;
    parser.is_space = None;
    parser.is_term = None;
    parser.blk_size = 128;

    extern "C" {
        fn realloc(ptr: *mut core::ffi::c_void, size: usize) -> *mut core::ffi::c_void;
        fn free(ptr: *mut core::ffi::c_void);
    }

    fn realloc_wrapper(ptr: *mut u8, size: usize) -> *mut u8 {
        unsafe { realloc(ptr as *mut core::ffi::c_void, size) as *mut u8 }
    }

    fn free_wrapper(ptr: *mut u8) {
        unsafe { free(ptr as *mut core::ffi::c_void) }
    }

    parser.malloc_func = None;
    parser.realloc_func = Some(realloc_wrapper);
    parser.free_func = Some(free_wrapper);
    0
}
pub fn csv_set_realloc_func(
    p: Option<&mut CsvParser>,
    f: Option<fn(*mut u8, usize) -> *mut u8>,
) {
    if let (Some(parser), Some(func)) = (p, f) {
        parser.realloc_func = Some(func);
    }
}
pub fn csv_increase_buffer(p: &mut CsvParser) -> i32 {
    // In Rust, p cannot be null. Check custom realloc function.
    if p.realloc_func.is_none() {
        return 0;
    }

    let mut to_add = p.blk_size;
    // Use current capacity as the equivalent of entry_size.
    let current_size = p.entry_buf.capacity();

    // Prevent overflow.
    if current_size >= usize::MAX - to_add {
        to_add = usize::MAX - current_size;
    }
    if to_add == 0 {
        p.status = 3;
        return -1;
    }

    // Attempt to reserve additional capacity using Vec's fallible allocation.
    while p.entry_buf.try_reserve_exact(to_add).is_err() {
        to_add /= 2;
        if to_add == 0 {
            p.status = 2;
            return -1;
        }
    }
    0
}
const CSV_ERRORS: [&str; 5] = [
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
    ((bsx & 0xff000000) >> 24)
        | ((bsx & 0x00ff0000) >> 8)
        | ((bsx & 0x0000ff00) << 8)
        | ((bsx & 0x000000ff) << 24)
}
pub fn csv_free(p: *mut CsvParser) {
    unsafe {
        let parser = match p.as_mut() {
            Some(parser) => parser,
            None => return,
        };
        if parser.entry_buf.capacity() != 0 {
            if let Some(free_func) = parser.free_func {
                let buf = std::mem::replace(&mut parser.entry_buf, Vec::new());
                let ptr = buf.as_ptr() as *mut u8;
                std::mem::forget(buf);
                free_func(ptr);
            }
        }
        parser.entry_buf.clear();
        parser.entry_pos = 0;
    }
}
pub fn csv_error(p: *const CsvParser) -> i32 {
    assert!(!p.is_null(), "received null csv_parser");
    unsafe { (*p).status }
}
pub fn csv_set_free_func(p: Option<&mut CsvParser>, f: Option<fn(*mut u8)>) {
    if let (Some(parser), Some(func)) = (p, f) {
        parser.free_func = Some(func);
    }
}
pub fn __uint16_identity(x: u16) -> u16 {
    x
}
pub fn csv_get_buffer_size(p: Option<&CsvParser>) -> usize {
    if let Some(parser) = p {
        parser.entry_buf.len()
    } else {
        0
    }
}
pub fn __bswap_16(bsx: u16) -> u16 {
    bsx.swap_bytes()
}
#[no_mangle]
pub unsafe extern "C" fn csv_set_space_func(p: *mut CsvParser, f: Option<fn(u8) -> bool>) {
    if !p.is_null() {
        (*p).is_space = f;
    }
}
pub fn csv_set_term_func(parser: Option<&mut CsvParser>, f: Option<fn(u8) -> bool>) {
    if let Some(p) = parser {
        p.is_term = f;
    }
}
pub fn __bswap_64(bsx: u64) -> u64 {
    ((bsx & 0xff00000000000000) >> 56)
        | ((bsx & 0x00ff000000000000) >> 40)
        | ((bsx & 0x0000ff0000000000) >> 24)
        | ((bsx & 0x000000ff00000000) >> 8)
        | ((bsx & 0x00000000ff000000) << 8)
        | ((bsx & 0x0000000000ff0000) << 24)
        | ((bsx & 0x000000000000ff00) << 40)
        | ((bsx & 0x00000000000000ff) << 56)
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
pub fn __uint32_identity(__x: u32) -> u32 {
    __x
}
pub fn csv_set_opts(parser: Option<&mut CsvParser>, options: u8) -> i32 {
    if let Some(p) = parser {
        p.options = options;
        0
    } else {
        -1
    }
}
#[no_mangle]
pub unsafe extern "C" fn csv_write2(
    dest: *mut u8,
    mut dest_size: usize,
    src: *const u8,
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
    let mut cdest = dest;
    let mut csrc = src;
    if dest_size > 0 {
        std::ptr::write(cdest, quote);
        cdest = cdest.add(1);
    }
    chars = chars.wrapping_add(1);
    let mut remaining = src_size;
    while remaining != 0 {
        let byte = std::ptr::read(csrc);
        if byte == quote {
            if dest_size > chars {
                std::ptr::write(cdest, quote);
                cdest = cdest.add(1);
            }
            if chars < usize::MAX {
                chars = chars.wrapping_add(1);
            }
        }
        if dest_size > chars {
            std::ptr::write(cdest, byte);
            cdest = cdest.add(1);
        }
        if chars < usize::MAX {
            chars = chars.wrapping_add(1);
        }
        csrc = csrc.add(1);
        remaining -= 1;
    }
    if dest_size > chars {
        std::ptr::write(cdest, quote);
    }
    if chars < usize::MAX {
        chars = chars.wrapping_add(1);
    }
    chars
}
pub unsafe fn csv_parse(
    p: &mut CsvParser,
    s: *const c_void,
    len: usize,
    mut cb1: Option<fn(*mut u8, usize, *mut c_void)>,
    mut cb2: Option<fn(i32, *mut c_void)>,
    data: *mut c_void,
) -> usize {
    if s.is_null() {
        return 0;
    }
    let us = std::slice::from_raw_parts(s as *const u8, len);
    let mut pos: usize = 0;
    let delim: u8 = p.delim_char;
    let quote: u8 = p.quote_char;
    let is_space = p.is_space;
    let is_term = p.is_term;
    let mut quoted = p.quoted;
    let mut pstate = p.pstate;
    let mut spaces = p.spaces;
    let mut entry_pos = p.entry_pos;

    if p.entry_buf.is_empty() && pos < len {
        if csv_increase_buffer(p) != 0 {
            p.quoted = quoted;
            p.pstate = pstate;
            p.spaces = spaces;
            p.entry_pos = entry_pos;
            return pos;
        }
    }

    while pos < len {
        let buf_size = p.entry_buf.len();
        let cap = if (p.options & 8) != 0 {
            buf_size.saturating_sub(1)
        } else {
            buf_size
        };
        if entry_pos == cap {
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
                let space_cond = if let Some(func) = is_space {
                    func(c)
                } else {
                    c == 0x20 || c == 0x09
                };
                if space_cond && c != delim {
                    continue;
                } else if if let Some(func) = is_term { func(c) } else { c == 0x0d || c == 0x0a }
                {
                    if pstate == 1 {
                        if quoted == 0 {
                            entry_pos = entry_pos.saturating_sub(spaces);
                        }
                        if (p.options & 8) != 0 {
                            p.entry_buf[entry_pos] = 0;
                        }
                        if let Some(f) = cb1 {
                            if (p.options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                                f(std::ptr::null_mut(), entry_pos, data);
                            } else {
                                f(p.entry_buf.as_mut_ptr(), entry_pos, data);
                            }
                        }
                        pstate = 1;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;

                        if let Some(f) = cb2 {
                            f(c as i32, data);
                        }
                        pstate = 0;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;
                    } else {
                        if (p.options & 2) != 0 {
                            if let Some(f) = cb2 {
                                f(c as i32, data);
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
                    if (p.options & 8) != 0 {
                        p.entry_buf[entry_pos] = 0;
                    }
                    if let Some(f) = cb1 {
                        if (p.options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                            f(std::ptr::null_mut(), entry_pos, data);
                        } else {
                            f(p.entry_buf.as_mut_ptr(), entry_pos, data);
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
                    p.entry_buf[entry_pos] = c;
                    entry_pos += 1;
                }
            }
            2 => {
                if c == quote {
                    if quoted != 0 {
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
                    if quoted != 0 {
                        p.entry_buf[entry_pos] = c;
                        entry_pos += 1;
                    } else {
                        if quoted == 0 {
                            entry_pos = entry_pos.saturating_sub(spaces);
                        }
                        if (p.options & 8) != 0 {
                            p.entry_buf[entry_pos] = 0;
                        }
                        if let Some(f) = cb1 {
                            if (p.options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                                f(std::ptr::null_mut(), entry_pos, data);
                            } else {
                                f(p.entry_buf.as_mut_ptr(), entry_pos, data);
                            }
                        }
                        pstate = 1;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;
                    }
                } else if if let Some(func) = is_term { func(c) } else { c == 0x0d || c == 0x0a } {
                    if quoted == 0 {
                        if quoted == 0 {
                            entry_pos = entry_pos.saturating_sub(spaces);
                        }
                        if (p.options & 8) != 0 {
                            p.entry_buf[entry_pos] = 0;
                        }
                        if let Some(f) = cb1 {
                            if (p.options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                                f(std::ptr::null_mut(), entry_pos, data);
                            } else {
                                f(p.entry_buf.as_mut_ptr(), entry_pos, data);
                            }
                        }
                        pstate = 1;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;

                        if let Some(f) = cb2 {
                            f(c as i32, data);
                        }
                        pstate = 0;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;
                    } else {
                        p.entry_buf[entry_pos] = c;
                        entry_pos += 1;
                    }
                } else if quoted == 0 && (if let Some(func) = is_space { func(c) } else { c == 0x20 || c == 0x09 }) {
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
                    if quoted == 0 {
                        entry_pos = entry_pos.saturating_sub(spaces);
                    }
                    if (p.options & 8) != 0 {
                        p.entry_buf[entry_pos] = 0;
                    }
                    if let Some(f) = cb1 {
                        if (p.options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                            f(std::ptr::null_mut(), entry_pos, data);
                        } else {
                            f(p.entry_buf.as_mut_ptr(), entry_pos, data);
                        }
                    }
                    pstate = 1;
                    entry_pos = 0;
                    quoted = 0;
                    spaces = 0;
                } else if if let Some(func) = is_term { func(c) } else { c == 0x0d || c == 0x0a } {
                    entry_pos = entry_pos.saturating_sub(spaces + 1);
                    if quoted == 0 {
                        entry_pos = entry_pos.saturating_sub(spaces);
                    }
                    if (p.options & 8) != 0 {
                        p.entry_buf[entry_pos] = 0;
                    }
                    if let Some(f) = cb1 {
                        if (p.options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                            f(std::ptr::null_mut(), entry_pos, data);
                        } else {
                            f(p.entry_buf.as_mut_ptr(), entry_pos, data);
                        }
                    }
                    pstate = 1;
                    entry_pos = 0;
                    quoted = 0;
                    spaces = 0;
                    if let Some(f) = cb2 {
                        f(c as i32, data);
                    }
                    pstate = 0;
                    entry_pos = 0;
                    quoted = 0;
                    spaces = 0;
                } else if if let Some(func) = is_space { func(c) } else { c == 0x20 || c == 0x09 } {
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
    p.quoted = quoted;
    p.pstate = pstate;
    p.spaces = spaces;
    p.entry_pos = entry_pos;
    pos
}
#[no_mangle]
pub extern "C" fn csv_fwrite(
    fp: *mut std::fs::File,
    src: *const std::os::raw::c_void,
    src_size: usize,
) -> i32 {
    unsafe {
        extern "C" {
            fn csv_fwrite2(
                fp: *mut std::fs::File,
                src: *const std::os::raw::c_void,
                src_size: usize,
                quote: u8,
            ) -> i32;
        }
        csv_fwrite2(fp, src, src_size, 0x22)
    }
}
#[no_mangle]
pub extern "C" fn csv_write(
    dest: *mut u8,
    dest_size: usize,
    src: *const u8,
    src_size: usize,
) -> usize {
    unsafe { csv_write2(dest, dest_size, src, src_size, 0x22) }
}