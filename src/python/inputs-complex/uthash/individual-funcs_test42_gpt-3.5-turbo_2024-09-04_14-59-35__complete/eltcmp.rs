use std::os::raw::{c_int, c_char};

#[repr(C)]
pub struct _IO_FILE {
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
    _old_offset: __off_t,
    _cur_column: u16,
    _vtable_offset: i8,
    _shortbuf: [c_char; 1],
    _lock: *mut _IO_lock_t,
    _offset: __off64_t,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut _IO_FILE,
    _freeres_buf: *mut std::ffi::c_void,
    __pad5: usize,
    _mode: c_int,
    _unused2: [c_char; 15 * std::mem::size_of::<c_int>() - 4 * std::mem::size_of::<*mut std::ffi::c_void>() - std::mem::size_of::<usize>()],
}

pub struct _IO_marker;

pub struct _IO_codecvt;

pub struct _IO_wide_data;

pub type _IO_lock_t = std::ffi::c_void;

pub type __off_t = c_int;

pub type __off64_t = c_int;

pub struct el {
    id: c_int,
    next: *mut el,
    prev: *mut el,
}

impl el {
    fn eltcmp(a: &el, b: &el) -> c_int {
        a.id - b.id
    }
}

pub static mut stdin: *mut _IO_FILE = std::ptr::null_mut();
pub static mut stdout: *mut _IO_FILE = std::ptr::null_mut();
pub static mut stderr: *mut _IO_FILE = std::ptr::null_mut();
