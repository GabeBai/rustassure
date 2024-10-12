
type __uint32_t = u32;

fn __uint32_identity(__x: __uint32_t) -> __uint32_t {
    __x
}

struct CsvParser<'a> {
    pstate: i32,
    quoted: i32,
    spaces: usize,
    entry_buf: Option<&'a mut [u8]>,
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

fn csv_set_free_func(p: &mut CsvParser, f: fn(*mut std::ffi::c_void)) {
    if p.free_func as *const () != std::ptr::null() && f as *const () != std::ptr::null() {
        p.free_func = f;
    }
}

use std::ffi::c_void;

extern "C" {
    fn csv_write2(dest: *mut c_void, dest_size: usize, src: *const c_void, src_size: usize, quote: u8) -> usize;
}

fn csv_write(dest: *mut c_void, dest_size: usize, src: *const c_void, src_size: usize) -> usize {
    unsafe {
        csv_write2(dest, dest_size, src, src_size, 0x22)
    }
}

type __uint16_t = u16;

fn __bswap_16(__bsx: __uint16_t) -> __uint16_t {
    ((__bsx >> 8) & 0xff) | ((__bsx & 0xff) << 8)
}

use std::io::Write;
use std::ptr;

fn csv_fwrite2(fp: &mut std::fs::File, src: &[u8], quote: u8) -> i32 {
    if fp as *mut _ == ptr::null_mut() || src.is_empty() {
        return 0;
    }
    if fp.write_all(&[quote]).is_err() {
        return -1;
    }
    for &c in src {
        if c == quote {
            if fp.write_all(&[quote]).is_err() {
                return -1;
            }
        }
        if fp.write_all(&[c]).is_err() {
            return -1;
        }
    }
    if fp.write_all(&[quote]).is_err() {
        return -1;
    }
    0
}

fn __bswap_32(__bsx: __uint32_t) -> __uint32_t {
    (((__bsx & 0xff000000) >> 24) | ((__bsx & 0x00ff0000) >> 8) | ((__bsx & 0x0000ff00) << 8) | ((__bsx & 0x000000ff) << 24))
}

fn __uint16_identity(__x: __uint16_t) -> __uint16_t {
    __x
}

fn csv_get_quote(p: &CsvParser) -> u8 {
    assert!(p as *const _ != std::ptr::null(), "received null csv_parser");
    p.quote_char
}

type __uint64_t = u64;

fn __uint64_identity(__x: __uint64_t) -> __uint64_t {
    __x
}
fn csv_fwrite(fp: &mut std::fs::File, src: &[u8], src_size: usize) -> i32 {
    csv_fwrite2(fp, &src[..src_size], 0x22)
}

fn csv_fini<'a>(p: &mut CsvParser<'a>, cb1: Option<fn(*mut c_void, usize, *mut c_void)>, cb2: Option<fn(i32, *mut c_void)>, data: *mut c_void) -> i32 {
    if p as *mut _ == std::ptr::null_mut() {
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
                if let Some(entry_buf) = p.entry_buf.as_mut() {
                    entry_buf[entry_pos] = 0;
                }
            }
            if let Some(cb1) = cb1 {
                if (p.options & 16 != 0) && quoted == 0 && entry_pos == 0 {
                    cb1(std::ptr::null_mut(), entry_pos, data);
                } else {
                    if let Some(entry_buf) = p.entry_buf.as_mut() {
                        cb1(entry_buf.as_mut_ptr() as *mut c_void, entry_pos, data);
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

fn csv_get_buffer_size(p: &CsvParser) -> usize {
    if p as *const _ != std::ptr::null() {
        return p.entry_size;
    }
    0
}

fn __bswap_64(__bsx: __uint64_t) -> __uint64_t {
    (((__bsx & 0xff00000000000000) >> 56)
        | ((__bsx & 0x00ff000000000000) >> 40)
        | ((__bsx & 0x0000ff0000000000) >> 24)
        | ((__bsx & 0x000000ff00000000) >> 8)
        | ((__bsx & 0x00000000ff000000) << 8)
        | ((__bsx & 0x0000000000ff0000) << 24)
        | ((__bsx & 0x000000000000ff00) << 40)
        | ((__bsx & 0x00000000000000ff) << 56))
}

fn csv_get_delim(p: &CsvParser) -> u8 {
    assert!(p as *const _ != std::ptr::null(), "received null csv_parser");
    p.delim_char
}

fn csv_get_opts(p: &CsvParser) -> i32 {
    if p as *const _ == std::ptr::null() {
        return -1;
    }
    p.options as i32
}

fn csv_set_delim(p: Option<&mut CsvParser>, c: u8) {
    if let Some(parser) = p {
        parser.delim_char = c;
    }
}

fn csv_set_opts(p: Option<&mut CsvParser>, options: u8) -> i32 {
    if p.is_none() {
        return -1;
    }
    p.unwrap().options = options;
    0
}

fn csv_set_quote(p: Option<&mut CsvParser>, c: u8) {
    if let Some(parser) = p {
        parser.quote_char = c;
    }
}

fn csv_set_realloc_func(p: Option<&mut CsvParser>, f: Option<fn(*mut std::ffi::c_void, usize) -> *mut std::ffi::c_void>) {
    if let (Some(parser), Some(func)) = (p, f) {
        parser.realloc_func = func;
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

fn csv_set_space_func(p: Option<&mut CsvParser>, f: fn(u8) -> i32) {
    if let Some(parser) = p {
        parser.is_space = f;
    }
}

fn csv_set_blk_size(p: Option<&mut CsvParser>, size: usize) {
    if let Some(parser) = p {
        parser.blk_size = size;
    }
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
