struct CsvParser {
    pub pstate: i32,
    pub quoted: i32,
    pub spaces: usize,
    pub entry_buf: Option<Vec<u8>>,
    pub entry_pos: usize,
    pub entry_size: usize,
    pub status: i32,
    pub options: u8,
    pub quote_char: u8,
    pub delim_char: u8,
    pub is_space: Option<fn(u8) -> i32>,
    pub is_term: Option<fn(u8) -> i32>,
    pub blk_size: usize,
    pub malloc_func: Option<fn(usize) -> *mut c_void>,
    pub realloc_func: Option<fn(*mut c_void, usize) -> *mut c_void>,
    pub free_func: Option<fn(*mut c_void)>,
}

use std::os::raw::{c_char, c_void};

#[no_mangle]
pub extern "C" fn csv_strerror(status: i32) -> *const c_char {
    static CSV_ERRORS: [&'static [u8]; 5] = [
        b"Success\0",
        b"Out of memory\0",
        b"Invalid format\0",
        b"Internal error\0",
        b"Unknown error\0",
    ];
    if status < 0 || status >= CSV_ERRORS.len() as i32 {
        CSV_ERRORS[4].as_ptr() as *const c_char
    } else {
        CSV_ERRORS[status as usize].as_ptr() as *const c_char
    }
}
#[no_mangle]
pub extern "C" fn csv_get_buffer_size(p: *const std::os::raw::c_void) -> usize {
    if p.is_null() {
        0
    } else {
        unsafe { (*(p as *const CsvParser)).entry_size }
    }
}
#[no_mangle]
pub extern "C" fn csv_set_space_func(p: *mut c_void, f: Option<fn(u8) -> i32>) {
    if !p.is_null() {
        unsafe {
            (*(p as *mut CsvParser)).is_space = f;
        }
    }
}
#[no_mangle]
pub unsafe extern "C" fn csv_increase_buffer(p: *mut std::os::raw::c_void) -> i32 {
    if p.is_null() {
        return 0;
    }
    let parser = &mut *(p as *mut CsvParser);
    if parser.realloc_func.is_none() {
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
    let realloc_func = parser.realloc_func.unwrap();
    let mut new_ptr: *mut std::os::raw::c_void;
    loop {
        let new_size = parser.entry_size.wrapping_add(to_add);
        let current_ptr = if let Some(ref mut buf) = parser.entry_buf {
            buf.as_mut_ptr() as *mut std::os::raw::c_void
        } else {
            std::ptr::null_mut()
        };
        new_ptr = realloc_func(current_ptr, new_size);
        if !new_ptr.is_null() {
            break;
        }
        to_add /= 2;
        if to_add == 0 {
            parser.status = 2;
            return -1;
        }
    }
    let new_entry_size = parser.entry_size + to_add;
    let entry_pos = parser.entry_pos;
    let new_buf = Vec::from_raw_parts(new_ptr as *mut u8, entry_pos, new_entry_size);
    parser.entry_buf = Some(new_buf);
    parser.entry_size = new_entry_size;
    0
}
#[no_mangle]
pub extern "C" fn csv_init(p: *mut c_void, options: u8) -> i32 {
    unsafe extern "C" fn rust_realloc(ptr: *mut c_void, size: usize) -> *mut c_void {
        use std::alloc::{alloc, realloc, Layout};
        if ptr.is_null() {
            let layout = Layout::from_size_align(size, std::mem::align_of::<u8>()).unwrap();
            let new_ptr = alloc(layout);
            new_ptr as *mut c_void
        } else {
            let layout = Layout::from_size_align(size, 1).unwrap();
            let new_ptr = realloc(ptr as *mut u8, layout, size);
            new_ptr as *mut c_void
        }
    }
    unsafe extern "C" fn rust_free(ptr: *mut c_void) {
        use std::alloc::{dealloc, Layout};
        if !ptr.is_null() {
            // NOTE: In a real implementation, the correct layout must be used.
        }
    }
    fn safe_rust_realloc(ptr: *mut c_void, size: usize) -> *mut c_void {
        unsafe { rust_realloc(ptr, size) }
    }
    fn safe_rust_free(ptr: *mut c_void) {
        unsafe { rust_free(ptr) }
    }
    if p.is_null() {
        return -1;
    }
    unsafe {
        let parser = &mut *(p as *mut CsvParser);
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
        parser.realloc_func = Some(safe_rust_realloc);
        parser.free_func = Some(safe_rust_free);
    }
    0
}
#[no_mangle]
pub extern "C" fn csv_set_quote(p: *mut c_void, c: u8) {
    if !p.is_null() {
        unsafe {
            (*(p as *mut CsvParser)).quote_char = c;
        }
    }
}
#[inline]
pub fn __bswap_32(bsx: u32) -> u32 {
    ((bsx & 0xff000000) >> 24) |
    ((bsx & 0x00ff0000) >> 8) |
    ((bsx & 0x0000ff00) << 8) |
    ((bsx & 0x000000ff) << 24)
}
#[no_mangle]
pub extern "C" fn csv_get_opts(p: *const std::os::raw::c_void) -> std::os::raw::c_int {
    if p.is_null() {
        -1
    } else {
        unsafe { (*(p as *const CsvParser)).options as std::os::raw::c_int }
    }
}
#[no_mangle]
pub extern "C" fn csv_set_opts(p: *mut c_void, options: u8) -> i32 {
    if p.is_null() {
        return -1;
    }
    unsafe {
        (*(p as *mut CsvParser)).options = options;
    }
    0
}
#[no_mangle]
pub extern "C" fn csv_set_blk_size(p: *mut c_void, size: usize) {
    if !p.is_null() {
        unsafe {
            (*(p as *mut CsvParser)).blk_size = size;
        }
    }
}
#[no_mangle]
pub extern "C" fn csv_set_free_func(p: *mut c_void, f: Option<fn(*mut c_void)>) {
    if !p.is_null() && f.is_some() {
        unsafe {
            (*(p as *mut CsvParser)).free_func = f;
        }
    }
}
#[inline]
fn __uint64_identity(x: u64) -> u64 {
    x
}
#[no_mangle]
pub extern "C" fn csv_get_quote(p: *const c_void) -> u8 {
    assert!(!p.is_null(), "received null csv_parser");
    unsafe { (*(p as *const CsvParser)).quote_char }
}
#[no_mangle]
pub extern "C" fn csv_get_delim(p: *const c_void) -> u8 {
    assert!(!p.is_null(), "received null csv_parser");
    unsafe { (*(p as *const CsvParser)).delim_char }
}
#[no_mangle]
pub extern "C" fn csv_set_term_func(p: *mut std::os::raw::c_void, f: Option<fn(u8) -> i32>) {
    if !p.is_null() {
        unsafe {
            (*(p as *mut CsvParser)).is_term = f;
        }
    }
}
#[inline]
pub fn __bswap_64(bsx: u64) -> u64 {
    ((bsx & 0xff00000000000000u64) >> 56)
        | ((bsx & 0x00ff000000000000u64) >> 40)
        | ((bsx & 0x0000ff0000000000u64) >> 24)
        | ((bsx & 0x000000ff00000000u64) >> 8)
        | ((bsx & 0x00000000ff000000u64) << 8)
        | ((bsx & 0x0000000000ff0000u64) << 24)
        | ((bsx & 0x000000000000ff00u64) << 40)
        | ((bsx & 0x00000000000000ffu64) << 56)
}
#[inline]
fn __uint32_identity(x: u32) -> u32 {
    x
}
#[no_mangle]
pub unsafe extern "C" fn csv_fwrite2(
    fp: *mut std::fs::File,
    src: *const c_void,
    mut src_size: usize,
    quote: u8,
) -> std::os::raw::c_int {
    use std::io::Write;
    if fp.is_null() || src.is_null() {
        return 0;
    }
    let file = &mut *fp;
    if file.write_all(&[quote]).is_err() {
        return -1;
    }
    let source_slice = std::slice::from_raw_parts(src as *const u8, src_size);
    for &byte in source_slice.iter() {
        if byte == quote {
            if file.write_all(&[quote]).is_err() {
                return -1;
            }
        }
        if file.write_all(&[byte]).is_err() {
            return -1;
        }
    }
    if file.write_all(&[quote]).is_err() {
        return -1;
    }
    0
}
#[no_mangle]
pub extern "C" fn csv_set_realloc_func(
    p: *mut std::os::raw::c_void,
    f: Option<fn(*mut std::os::raw::c_void, usize) -> *mut std::os::raw::c_void>,
) {
    if !p.is_null() && f.is_some() {
        unsafe {
            (*(p as *mut CsvParser)).realloc_func = f;
        }
    }
}
#[inline]
fn __uint16_identity(x: u16) -> u16 {
    x
}
#[no_mangle]
pub extern "C" fn csv_error(p: *const c_void) -> std::os::raw::c_int {
    assert!(!p.is_null(), "received null csv_parser");
    unsafe { (*(p as *const CsvParser)).status }
}
#[no_mangle]
pub extern "C" fn csv_set_delim(p: *mut c_void, c: u8) {
    if !p.is_null() {
        unsafe {
            (*(p as *mut CsvParser)).delim_char = c;
        }
    }
}
#[no_mangle]
pub extern "C" fn csv_fini(
    p: *mut c_void,
    cb1: Option<unsafe extern "C" fn(*mut c_void, usize, *mut c_void)>,
    cb2: Option<unsafe extern "C" fn(i32, *mut c_void)>,
    data: *mut c_void,
) -> std::os::raw::c_int {
    if p.is_null() {
        return -1;
    }
    let parser = unsafe { &mut *(p as *mut CsvParser) };
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
            parser.entry_pos = parser.entry_pos.wrapping_sub(parser.spaces.wrapping_add(1));
            entry_pos = parser.entry_pos;
            if quoted == 0 {
                entry_pos = entry_pos.wrapping_sub(spaces);
            }
            if (parser.options & 8) != 0 {
                if let Some(ref mut buf) = parser.entry_buf {
                    if entry_pos < buf.len() {
                        buf[entry_pos] = 0;
                    }
                }
            }
            if let Some(f) = cb1 {
                unsafe {
                    if (parser.options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                        f(std::ptr::null_mut(), entry_pos, data);
                    } else {
                        let buf_ptr = if let Some(ref mut buf) = parser.entry_buf {
                            buf.as_mut_ptr() as *mut c_void
                        } else {
                            std::ptr::null_mut()
                        };
                        f(buf_ptr, entry_pos, data);
                    }
                }
            }
            pstate = 1;
            entry_pos = 0;
            quoted = 0;
            spaces = 0;
            if let Some(f) = cb2 {
                unsafe {
                    f(-1, data);
                }
            }
            pstate = 0;
            entry_pos = 0;
            quoted = 0;
            spaces = 0;
        }
        1 | 2 => {
            if quoted == 0 {
                entry_pos = entry_pos.wrapping_sub(spaces);
            }
            if (parser.options & 8) != 0 {
                if let Some(ref mut buf) = parser.entry_buf {
                    if entry_pos < buf.len() {
                        buf[entry_pos] = 0;
                    }
                }
            }
            if let Some(f) = cb1 {
                unsafe {
                    if (parser.options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                        f(std::ptr::null_mut(), entry_pos, data);
                    } else {
                        let buf_ptr = if let Some(ref mut buf) = parser.entry_buf {
                            buf.as_mut_ptr() as *mut c_void
                        } else {
                            std::ptr::null_mut()
                        };
                        f(buf_ptr, entry_pos, data);
                    }
                }
            }
            pstate = 1;
            entry_pos = 0;
            quoted = 0;
            spaces = 0;
            if let Some(f) = cb2 {
                unsafe {
                    f(-1, data);
                }
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
#[no_mangle]
pub unsafe extern "C" fn csv_free(p: *mut c_void) {
    if p.is_null() {
        return;
    }
    let parser = &mut *(p as *mut CsvParser);
    if let Some(ref buf) = parser.entry_buf {
        if let Some(free_func) = parser.free_func {
            free_func(buf.as_ptr() as *mut c_void);
        }
    }
    parser.entry_buf = None;
    parser.entry_size = 0;
}
#[inline]
pub fn __bswap_16(bsx: u16) -> u16 {
    ((bsx >> 8) & 0xff) | ((bsx & 0xff) << 8)
}
#[no_mangle]
pub unsafe extern "C" fn csv_write2(
    dest: *mut ::std::os::raw::c_void,
    mut dest_size: usize,
    src: *const ::std::os::raw::c_void,
    mut src_size: usize,
    quote: u8,
) -> usize {
    let mut chars: usize = 0;
    if src.is_null() {
        return 0;
    }
    let mut csrc = src as *const u8;
    let mut cdest = dest as *mut u8;
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
    chars
}
#[no_mangle]
pub unsafe extern "C" fn csv_parse(
    p: *mut ::std::os::raw::c_void,
    s: *const ::std::os::raw::c_void,
    len: usize,
    cb1: Option<unsafe extern "C" fn(*mut ::std::os::raw::c_void, usize, *mut ::std::os::raw::c_void)>,
    cb2: Option<unsafe extern "C" fn(i32, *mut ::std::os::raw::c_void)>,
    data: *mut ::std::os::raw::c_void,
) -> usize {
    assert!(!p.is_null(), "received null csv_parser");
    if s.is_null() {
        return 0;
    }
    let parser = &mut *(p as *mut CsvParser);
    let us = ::std::slice::from_raw_parts(s as *const u8, len);
    let mut pos: usize = 0;
    let delim = parser.delim_char;
    let quote = parser.quote_char;
    let is_space = parser.is_space;
    let is_term = parser.is_term;
    let mut quoted = parser.quoted;
    let mut pstate = parser.pstate;
    let mut spaces = parser.spaces;
    let mut entry_pos = parser.entry_pos;
    if parser.entry_buf.is_none() && pos < len {
        if csv_increase_buffer(p) != 0 {
            parser.quoted = quoted;
            parser.pstate = pstate;
            parser.spaces = spaces;
            parser.entry_pos = entry_pos;
            return pos;
        }
    }
    while pos < len {
        let cap = if parser.options & 8 != 0 {
            parser.entry_size.saturating_sub(1)
        } else {
            parser.entry_size
        };
        if entry_pos == cap {
            if csv_increase_buffer(p) != 0 {
                parser.quoted = quoted;
                parser.pstate = pstate;
                parser.spaces = spaces;
                parser.entry_pos = entry_pos;
                return pos;
            }
        }
        let c = us[pos];
        pos += 1;
        match pstate {
            0 | 1 => {
                let space_cond = if let Some(func) = is_space {
                    func(c) != 0
                } else {
                    c == 0x20 || c == 0x09
                };
                if space_cond && c != delim {
                    continue;
                } else if {
                    let term_cond = if let Some(func) = is_term {
                        func(c) != 0
                    } else {
                        c == 0x0d || c == 0x0a
                    };
                    term_cond
                } {
                    if pstate == 1 {
                        {
                            if quoted == 0 {
                                entry_pos = entry_pos.saturating_sub(spaces);
                            }
                            if parser.options & 8 != 0 {
                                if let Some(ref mut buf) = parser.entry_buf {
                                    if entry_pos < buf.len() {
                                        buf[entry_pos] = 0;
                                    }
                                }
                            }
                            if let Some(f) = cb1 {
                                if (parser.options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                                    f(::std::ptr::null_mut(), entry_pos, data);
                                } else {
                                    let buf_ptr = if let Some(ref mut buf) = parser.entry_buf {
                                        buf.as_mut_ptr() as *mut ::std::os::raw::c_void
                                    } else {
                                        ::std::ptr::null_mut()
                                    };
                                    f(buf_ptr, entry_pos, data);
                                }
                            }
                            pstate = 1;
                            entry_pos = 0;
                            quoted = 0;
                            spaces = 0;
                        }
                        {
                            if let Some(f) = cb2 {
                                f(c as i32, data);
                            }
                            pstate = 0;
                            entry_pos = 0;
                            quoted = 0;
                            spaces = 0;
                        }
                    } else if parser.options & 2 != 0 {
                        if let Some(f) = cb2 {
                            f(c as i32, data);
                        }
                        pstate = 0;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;
                    }
                    continue;
                } else if c == delim {
                    {
                        if quoted == 0 {
                            entry_pos = entry_pos.saturating_sub(spaces);
                        }
                        if parser.options & 8 != 0 {
                            if let Some(ref mut buf) = parser.entry_buf {
                                if entry_pos < buf.len() {
                                    buf[entry_pos] = 0;
                                }
                            }
                        }
                        if let Some(f) = cb1 {
                            if (parser.options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                                f(::std::ptr::null_mut(), entry_pos, data);
                            } else {
                                let buf_ptr = if let Some(ref mut buf) = parser.entry_buf {
                                    buf.as_mut_ptr() as *mut ::std::os::raw::c_void
                                } else {
                                    ::std::ptr::null_mut()
                                };
                                f(buf_ptr, entry_pos, data);
                            }
                        }
                        pstate = 1;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;
                    }
                } else if c == quote {
                    pstate = 2;
                    quoted = 1;
                } else {
                    pstate = 2;
                    quoted = 0;
                    if let Some(ref mut buf) = parser.entry_buf {
                        if entry_pos < buf.len() {
                            buf[entry_pos] = c;
                        }
                    }
                    entry_pos += 1;
                }
            }
            2 => {
                if c == quote {
                    if quoted != 0 {
                        if let Some(ref mut buf) = parser.entry_buf {
                            if entry_pos < buf.len() {
                                buf[entry_pos] = c;
                            }
                        }
                        entry_pos += 1;
                        pstate = 3;
                    } else {
                        if parser.options & 1 != 0 {
                            parser.status = 1;
                            parser.quoted = quoted;
                            parser.pstate = pstate;
                            parser.spaces = spaces;
                            parser.entry_pos = entry_pos;
                            return pos - 1;
                        }
                        if let Some(ref mut buf) = parser.entry_buf {
                            if entry_pos < buf.len() {
                                buf[entry_pos] = c;
                            }
                        }
                        entry_pos += 1;
                        spaces = 0;
                    }
                } else if c == delim {
                    if quoted != 0 {
                        if let Some(ref mut buf) = parser.entry_buf {
                            if entry_pos < buf.len() {
                                buf[entry_pos] = c;
                            }
                        }
                        entry_pos += 1;
                    } else {
                        {
                            if quoted == 0 {
                                entry_pos = entry_pos.saturating_sub(spaces);
                            }
                            if parser.options & 8 != 0 {
                                if let Some(ref mut buf) = parser.entry_buf {
                                    if entry_pos < buf.len() {
                                        buf[entry_pos] = 0;
                                    }
                                }
                            }
                            if let Some(f) = cb1 {
                                if (parser.options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                                    f(::std::ptr::null_mut(), entry_pos, data);
                                } else {
                                    let buf_ptr = if let Some(ref mut buf) = parser.entry_buf {
                                        buf.as_mut_ptr() as *mut ::std::os::raw::c_void
                                    } else {
                                        ::std::ptr::null_mut()
                                    };
                                    f(buf_ptr, entry_pos, data);
                                }
                            }
                            pstate = 1;
                            entry_pos = 0;
                            quoted = 0;
                            spaces = 0;
                        }
                    }
                } else if {
                    let term_cond = if let Some(func) = is_term {
                        func(c) != 0
                    } else {
                        c == 0x0d || c == 0x0a
                    };
                    term_cond
                } {
                    if quoted == 0 {
                        {
                            if quoted == 0 {
                                entry_pos = entry_pos.saturating_sub(spaces);
                            }
                            if parser.options & 8 != 0 {
                                if let Some(ref mut buf) = parser.entry_buf {
                                    if entry_pos < buf.len() {
                                        buf[entry_pos] = 0;
                                    }
                                }
                            }
                            if let Some(f) = cb1 {
                                if (parser.options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                                    f(::std::ptr::null_mut(), entry_pos, data);
                                } else {
                                    let buf_ptr = if let Some(ref mut buf) = parser.entry_buf {
                                        buf.as_mut_ptr() as *mut ::std::os::raw::c_void
                                    } else {
                                        ::std::ptr::null_mut()
                                    };
                                    f(buf_ptr, entry_pos, data);
                                }
                            }
                            pstate = 1;
                            entry_pos = 0;
                            quoted = 0;
                            spaces = 0;
                        }
                        {
                            if let Some(f) = cb2 {
                                f(c as i32, data);
                            }
                            pstate = 0;
                            entry_pos = 0;
                            quoted = 0;
                            spaces = 0;
                        }
                    } else {
                        if let Some(ref mut buf) = parser.entry_buf {
                            if entry_pos < buf.len() {
                                buf[entry_pos] = c;
                            }
                        }
                        entry_pos += 1;
                    }
                } else if quoted == 0 && {
                    let sp = if let Some(func) = is_space {
                        func(c) != 0
                    } else {
                        c == 0x20 || c == 0x09
                    };
                    sp
                } {
                    if let Some(ref mut buf) = parser.entry_buf {
                        if entry_pos < buf.len() {
                            buf[entry_pos] = c;
                        }
                    }
                    entry_pos += 1;
                    spaces += 1;
                } else {
                    if let Some(ref mut buf) = parser.entry_buf {
                        if entry_pos < buf.len() {
                            buf[entry_pos] = c;
                        }
                    }
                    entry_pos += 1;
                    spaces = 0;
                }
            }
            3 => {
                if c == delim {
                    entry_pos = entry_pos.saturating_sub(spaces + 1);
                    {
                        if quoted == 0 {
                            entry_pos = entry_pos.saturating_sub(spaces);
                        }
                        if parser.options & 8 != 0 {
                            if let Some(ref mut buf) = parser.entry_buf {
                                if entry_pos < buf.len() {
                                    buf[entry_pos] = 0;
                                }
                            }
                        }
                        if let Some(f) = cb1 {
                            if (parser.options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                                f(::std::ptr::null_mut(), entry_pos, data);
                            } else {
                                let buf_ptr = if let Some(ref mut buf) = parser.entry_buf {
                                    buf.as_mut_ptr() as *mut ::std::os::raw::c_void
                                } else {
                                    ::std::ptr::null_mut()
                                };
                                f(buf_ptr, entry_pos, data);
                            }
                        }
                        pstate = 1;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;
                    }
                } else if {
                    let term_cond = if let Some(func) = is_term {
                        func(c) != 0
                    } else {
                        c == 0x0d || c == 0x0a
                    };
                    term_cond
                } {
                    entry_pos = entry_pos.saturating_sub(spaces + 1);
                    {
                        if quoted == 0 {
                            entry_pos = entry_pos.saturating_sub(spaces);
                        }
                        if parser.options & 8 != 0 {
                            if let Some(ref mut buf) = parser.entry_buf {
                                if entry_pos < buf.len() {
                                    buf[entry_pos] = 0;
                                }
                            }
                        }
                        if let Some(f) = cb1 {
                            if (parser.options & 16) != 0 && quoted == 0 && entry_pos == 0 {
                                f(::std::ptr::null_mut(), entry_pos, data);
                            } else {
                                let buf_ptr = if let Some(ref mut buf) = parser.entry_buf {
                                    buf.as_mut_ptr() as *mut ::std::os::raw::c_void
                                } else {
                                    ::std::ptr::null_mut()
                                };
                                f(buf_ptr, entry_pos, data);
                            }
                        }
                        pstate = 1;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;
                    }
                    {
                        if let Some(f) = cb2 {
                            f(c as i32, data);
                        }
                        pstate = 0;
                        entry_pos = 0;
                        quoted = 0;
                        spaces = 0;
                    }
                } else if {
                    let sp = if let Some(func) = is_space {
                        func(c) != 0
                    } else {
                        c == 0x20 || c == 0x09
                    };
                    sp
                } {
                    if let Some(ref mut buf) = parser.entry_buf {
                        if entry_pos < buf.len() {
                            buf[entry_pos] = c;
                        }
                    }
                    entry_pos += 1;
                    spaces += 1;
                } else if c == quote {
                    if spaces != 0 {
                        if parser.options & 1 != 0 {
                            parser.status = 1;
                            parser.quoted = quoted;
                            parser.pstate = pstate;
                            parser.spaces = spaces;
                            parser.entry_pos = entry_pos;
                            return pos - 1;
                        }
                        spaces = 0;
                        if let Some(ref mut buf) = parser.entry_buf {
                            if entry_pos < buf.len() {
                                buf[entry_pos] = c;
                            }
                        }
                        entry_pos += 1;
                    } else {
                        pstate = 2;
                    }
                } else {
                    if parser.options & 1 != 0 {
                        parser.status = 1;
                        parser.quoted = quoted;
                        parser.pstate = pstate;
                        parser.spaces = spaces;
                        parser.entry_pos = entry_pos;
                        return pos - 1;
                    }
                    pstate = 2;
                    spaces = 0;
                    if let Some(ref mut buf) = parser.entry_buf {
                        if entry_pos < buf.len() {
                            buf[entry_pos] = c;
                        }
                    }
                    entry_pos += 1;
                }
            }
            _ => {}
        }
    }
    parser.quoted = quoted;
    parser.pstate = pstate;
    parser.spaces = spaces;
    parser.entry_pos = entry_pos;
    pos
}
#[no_mangle]
pub extern "C" fn csv_fwrite(
    fp: *mut std::fs::File,
    src: *const std::os::raw::c_void,
    src_size: usize,
) -> std::os::raw::c_int {
    unsafe { csv_fwrite2(fp, src, src_size, 0x22) }
}
#[no_mangle]
pub unsafe extern "C" fn csv_write(
    dest: *mut ::std::os::raw::c_void,
    dest_size: usize,
    src: *const ::std::os::raw::c_void,
    src_size: usize,
) -> usize {
    csv_write2(dest, dest_size, src, src_size, 0x22)
}