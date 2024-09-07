use std::os::raw::{c_char, c_int, c_void};

#[repr(C)]
pub struct _IO_marker;

#[repr(C)]
pub struct _IO_codecvt;

#[repr(C)]
pub struct _IO_wide_data;

pub type _IO_lock_t = c_void;

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
    _old_offset: c_int,
    _cur_column: u16,
    _vtable_offset: i8,
    _shortbuf: [c_char; 1],
    _lock: *mut _IO_lock_t,
    _offset: c_int,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut _IO_FILE,
    _freeres_buf: *mut c_void,
    __pad5: usize,
    _mode: c_int,
    _unused2: [c_char; 15 * std::mem::size_of::<c_int>() - 4 * std::mem::size_of::<*mut c_void>() - std::mem::size_of::<usize>()],
}

pub type va_list = ::std::ffi::VaList;

#[link(name = "c")]
extern "C" {
    static stdin: *mut _IO_FILE;
    static stdout: *mut _IO_FILE;
    static stderr: *mut _IO_FILE;
}

#[repr(C)]
pub struct pthread_attr_t {
    __size: [c_char; 56],
    __align: c_int,
}

#[repr(C)]
pub struct UT_string {
    d: *mut c_char,
    n: usize,
    i: usize,
}

extern "C" {
    pub fn utstring_printf(s: *mut UT_string, fmt: *const c_char, ...) -> c_void;
}

#[no_mangle]
pub extern "C" fn utstring_printf_va(s: *mut UT_string, fmt: *const c_char, ap: va_list) {
    unsafe {
        utstring_printf(s, fmt, ap.as_va_list());
    }
}
