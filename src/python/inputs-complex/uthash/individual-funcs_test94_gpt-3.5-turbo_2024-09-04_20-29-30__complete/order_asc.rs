use std::os::raw::{c_long, c_ulong};

#[repr(C)]
pub struct _IO_FILE {
    _flags: i32,
    _IO_read_ptr: *mut i8,
    _IO_read_end: *mut i8,
    _IO_read_base: *mut i8,
    _IO_write_base: *mut i8,
    _IO_write_ptr: *mut i8,
    _IO_write_end: *mut i8,
    _IO_buf_base: *mut i8,
    _IO_buf_end: *mut i8,
    _IO_save_base: *mut i8,
    _IO_backup_base: *mut i8,
    _IO_save_end: *mut i8,
    _markers: *mut _IO_marker,
    _chain: *mut _IO_FILE,
    _fileno: i32,
    _flags2: i32,
    _old_offset: __off_t,
    _cur_column: u16,
    _vtable_offset: i8,
    _shortbuf: [i8; 1],
    _lock: *mut _IO_lock_t,
    _offset: __off64_t,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut _IO_FILE,
    _freeres_buf: *mut std::ffi::c_void,
    __pad5: c_ulong,
    _mode: i32,
    _unused2: [i8; 15 * std::mem::size_of::<i32>() - 4 * std::mem::size_of::<*mut std::ffi::c_void>() - std::mem::size_of::<c_ulong>()],
}

pub type FILE = _IO_FILE;

#[repr(C)]
pub struct _IO_marker;

#[repr(C)]
pub struct _IO_codecvt;

#[repr(C)]
pub struct _IO_wide_data;

pub type _IO_lock_t = std::ffi::c_void;

pub type __off_t = c_long;
pub type __off64_t = c_long;

extern {
    static stdin: *mut FILE;
    static stdout: *mut FILE;
    static stderr: *mut FILE;
}

pub struct el {
    id: i32,
    score: i32,
    next: *mut el,
    prev: *mut el,
    next_list2: *mut el,
    prev_list2: *mut el,
}

impl el {
    pub fn new(id: i32, score: i32) -> Self {
        Self {
            id,
            score,
            next: std::ptr::null_mut(),
            prev: std::ptr::null_mut(),
            next_list2: std::ptr::null_mut(),
            prev_list2: std::ptr::null_mut(),
        }
    }
}

pub fn order_asc(a: *mut el, b: *mut el) -> i32 {
    unsafe { -order_desc(a, b) }
}

fn order_desc(a: *mut el, b: *mut el) -> i32 {
    // Implement your order_desc logic here
    0
}
