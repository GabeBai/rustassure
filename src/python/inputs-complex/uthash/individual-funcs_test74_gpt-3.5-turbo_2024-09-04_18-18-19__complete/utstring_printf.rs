use std::os::raw::{c_char, c_int, c_void};
use std::ffi::CStr;
use std::fmt::Arguments;

#[repr(C)]
pub struct _IO_marker;

#[repr(C)]
pub struct _IO_codecvt;

#[repr(C)]
pub struct _IO_wide_data;

pub type size_t = usize;
pub type __off_t = c_int;
pub type __off64_t = c_int;

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
    _lock: *mut c_void, // Assuming _IO_lock_t is a void pointer
    _offset: __off64_t,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut _IO_FILE,
    _freeres_buf: *mut c_void,
    __pad5: size_t,
    _mode: c_int,
    _unused2: [c_char; 15 * std::mem::size_of::<c_int>() - 4 * std::mem::size_of::<*mut c_void>() - std::mem::size_of::<size_t>()],
}

pub type va_list = ::std::ffi::VaList;

#[repr(C)]
pub struct UT_string {
    d: *mut c_char,
    n: size_t,
    i: size_t,
}

extern "C" {
    static mut stdin: *mut _IO_FILE;
    static mut stdout: *mut _IO_FILE;
    static mut stderr: *mut _IO_FILE;

    fn utstring_printf_va(s: *mut UT_string, fmt: *const c_char, ap: va_list);
}

#[allow(non_snake_case)]
pub fn utstring_printf(s: *mut UT_string, fmt: *const c_char, args: Arguments) {
    unsafe {
        let ap = args.as_va_list();
        utstring_printf_va(s, fmt, ap);
    }
}
