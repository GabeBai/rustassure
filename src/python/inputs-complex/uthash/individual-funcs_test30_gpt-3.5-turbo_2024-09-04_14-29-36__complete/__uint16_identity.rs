use std::os::raw::{c_ulong, c_ushort, c_long};

#[repr(C)]
pub struct _IO_FILE {
    _flags: i32,
    _IO_read_ptr: *mut u8,
    _IO_read_end: *mut u8,
    _IO_read_base: *mut u8,
    _IO_write_base: *mut u8,
    _IO_write_ptr: *mut u8,
    _IO_write_end: *mut u8,
    _IO_buf_base: *mut u8,
    _IO_buf_end: *mut u8,
    _IO_save_base: *mut u8,
    _IO_backup_base: *mut u8,
    _IO_save_end: *mut u8,
    _markers: *mut _IO_marker,
    _chain: *mut _IO_FILE,
    _fileno: i32,
    _flags2: i32,
    _old_offset: c_long,
    _cur_column: c_ushort,
    _vtable_offset: i8,
    _shortbuf: [u8; 1],
    _lock: *mut _IO_lock_t,
    _offset: c_long,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut _IO_FILE,
    _freeres_buf: *mut std::ffi::c_void,
    __pad5: c_ulong,
    _mode: i32,
    _unused2: [i32; 15],
}

pub struct _IO_marker;

pub struct _IO_codecvt;

pub struct _IO_wide_data;

pub type _IO_lock_t = std::ffi::c_void;

#[no_mangle]
pub static mut stdin: *mut _IO_FILE = std::ptr::null_mut();
#[no_mangle]
pub static mut stdout: *mut _IO_FILE = std::ptr::null_mut();
#[no_mangle]
pub static mut stderr: *mut _IO_FILE = std::ptr::null_mut();

#[no_mangle]
pub extern "C" fn __uint16_identity(x: c_ushort) -> c_ushort {
    x
}
