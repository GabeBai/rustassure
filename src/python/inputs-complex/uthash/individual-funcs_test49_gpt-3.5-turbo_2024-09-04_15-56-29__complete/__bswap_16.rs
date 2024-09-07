use std::os::raw::{c_char, c_int, c_void};

#[repr(C)]
pub struct _IO_marker {
    // Define _IO_marker fields here
}

#[repr(C)]
pub struct _IO_codecvt {
    // Define _IO_codecvt fields here
}

#[repr(C)]
pub struct _IO_wide_data {
    // Define _IO_wide_data fields here
}

pub type _IO_lock_t = c_void;
pub type __off_t = c_int;
pub type __off64_t = c_int;
pub type __uint16_t = u16;

#[repr(C)]
pub struct FILE {
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
    _chain: *mut FILE,
    _fileno: c_int,
    _flags2: c_int,
    _old_offset: __off_t,
    _cur_column: u16,
    _vtable_offset: i8,
    _shortbuf: [c_char; 1],
    _lock: *mut _IO_lock_t,
    _offset: __off64_t,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut FILE,
    _freeres_buf: *mut c_void,
    __pad5: usize,
    _mode: c_int,
    _unused2: [c_char; 15 * std::mem::size_of::<c_int>() - 4 * std::mem::size_of::<*mut c_void>() - std::mem::size_of::<usize>()],
}

extern {
    static stdin: *mut FILE;
    static stdout: *mut FILE;
    static stderr: *mut FILE;
}

#[no_mangle]
pub extern "C" fn __bswap_16(__bsx: __uint16_t) -> __uint16_t {
    ((__bsx >> 8) & 0xff) | ((__bsx & 0xff) << 8)
}
