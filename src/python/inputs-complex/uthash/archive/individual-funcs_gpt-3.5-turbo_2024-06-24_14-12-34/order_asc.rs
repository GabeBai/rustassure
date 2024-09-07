use std::os::raw::{c_char, c_int, c_uchar, c_void};

#[repr(C)]
pub struct _IO_marker {
    _unused: [c_uchar; 24],
}

#[repr(C)]
pub struct _IO_codecvt {
    _unused: [c_uchar; 1],
}

#[repr(C)]
pub struct _IO_wide_data {
    _unused: [c_uchar; 4],
}

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
    _old_offset: __off_t,
    _cur_column: u16,
    _vtable_offset: i8,
    _shortbuf: [c_char; 1],
    _lock: *mut _IO_lock_t,
    _offset: __off64_t,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut _IO_FILE,
    _freeres_buf: *mut c_void,
    __pad5: size_t,
    _mode: c_int,
    _unused2: [c_char; 15 * std::mem::size_of::<c_int>() - 4 * std::mem::size_of::<*mut c_void>() - std::mem::size_of::<size_t>()],
}

extern "C" {
    pub static mut stdin: *mut _IO_FILE;
    pub static mut stdout: *mut _IO_FILE;
    pub static mut stderr: *mut _IO_FILE;
}

#[repr(C)]
pub struct el {
    id: c_int,
    score: c_int,
    next: *mut el,
    prev: *mut el,
    next_list2: *mut el,
    prev_list2: *mut el,
}

fn order_asc(a: *mut el, b: *mut el) -> c_int {
    return -order_desc(a, b);
}
