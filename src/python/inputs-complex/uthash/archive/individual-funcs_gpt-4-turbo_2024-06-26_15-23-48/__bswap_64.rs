use std::os::raw::{c_int, c_char, c_ulong, c_long};
use std::ffi::c_void;

#[repr(C)]
struct _IO_FILE {
    _flags: c_int,
    _IO_read_ptr: *mut c_char,
    _IO_read_end: *mut c_char,
    _IO_read_base: *mut c_char,
    _IO_write_base: *mut c_char,
    _IO_write_ptr: *mut c_char,
    _IO_write_end: *mut c_char,
    _IO_buf_base: *mut c_char,
    _IO_buf_end: *mut c_char,
    _IO_save_base: *mut c_char,
    _IO_backup_base: *mut c_char,
    _IO_save_end: *mut c_char,
    _markers: *mut _IO_marker,
    _chain: *mut _IO_FILE,
    _fileno: c_int,
    _flags2: c_int,
    _old_offset: c_long,
    _cur_column: u16,
    _vtable_offset: i8,
    _shortbuf: [c_char; 1],
    _lock: *mut c_void,
    _offset: i64,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut _IO_FILE,
    _freeres_buf: *mut c_void,
    __pad5: usize,
    _mode: c_int,
    _unused2: [c_char; 15 * std::mem::size_of::<c_int>() - 4 * std::mem::size_of::<*mut c_void>() - std::mem::size_of::<usize>()],
}

extern "C" {
    static stdin: *mut _IO_FILE;
    static stdout: *mut _IO_FILE;
    static stderr: *mut _IO_FILE;
}

fn __bswap_64(__bsx: u64) -> u64 {
    ((__bsx & 0xff00000000000000) >> 56)
    | ((__bsx & 0x00ff000000000000) >> 40)
    | ((__bsx & 0x0000ff0000000000) >> 24)
    | ((__bsx & 0x000000ff00000000) >> 8)
    | ((__bsx & 0x00000000ff000000) << 8)
    | ((__bsx & 0x0000000000ff0000) << 24)
    | ((__bsx & 0x000000000000ff00) << 40)
    | ((__bsx & 0x00000000000000ff) << 56)
}
