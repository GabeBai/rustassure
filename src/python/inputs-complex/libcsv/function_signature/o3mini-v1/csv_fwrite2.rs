
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
pub unsafe extern "C" fn csv_fwrite2(
    fp: *mut std::fs::File,
    src: *const std::os::raw::c_void,
    src_size: usize,
    quote: u8,
) -> std::os::raw::c_int {
    if fp.is_null() || src.is_null() {
        return 0;
    }
    let writer = &mut *fp;
    let mut output = Vec::with_capacity(src_size + 2);
    output.push(quote);
    let bytes = std::slice::from_raw_parts(src as *const u8, src_size);
    for &byte in bytes {
        if byte == quote {
            output.push(quote);
        }
        output.push(byte);
    }
    output.push(quote);
    if writer.write_all(&output).is_err() {
        return -1;
    }
    0
}