use std::os::raw::{c_uchar, c_ulong};

struct CsvParser {
    pstate: i32,
    quoted: i32,
    spaces: c_ulong,
    entry_buf: *mut c_uchar,
    entry_pos: c_ulong,
    entry_size: c_ulong,
    status: i32,
    options: u8,
    quote_char: u8,
    delim_char: u8,
    is_space: Option<fn(c_uchar) -> i32>,
    is_term: Option<fn(c_uchar) -> i32>,
    blk_size: c_ulong,
    malloc_func: Option<fn(c_ulong) -> *mut std::ffi::c_void>,
    realloc_func: Option<fn(*mut std::ffi::c_void, c_ulong) -> *mut std::ffi::c_void>,
    free_func: Option<fn(*mut std::ffi::c_void)>,
}

fn csv_get_buffer_size(p: Option<&CsvParser>) -> c_ulong {
    if let Some(parser) = p {
        return parser.entry_size;
    }
    return 0;
}
