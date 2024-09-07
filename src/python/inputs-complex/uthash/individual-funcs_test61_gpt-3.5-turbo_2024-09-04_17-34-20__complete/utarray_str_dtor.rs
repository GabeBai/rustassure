use std::os::raw::{c_char, c_int, c_long, c_void};

pub type size_t = c_ulong;
pub type __off_t = c_long;
pub type __off64_t = c_long;

pub struct _IO_FILE {
    pub _flags: c_int,
    pub _IO_read_ptr: *mut c_char,
    pub _IO_read_end: *mut c_char,
    pub _IO_read_base: *mut c_char,
    pub _IO_write_base: *mut c_char,
    pub _IO_write_ptr: *mut c_char,
    pub _IO_write_end: *mut c_char,
    pub _IO_buf_base: *mut c_char,
    pub _IO_buf_end: *mut c_char,
    pub _IO_save_base: *mut c_char,
    pub _IO_backup_base: *mut c_char,
    pub _IO_save_end: *mut c_char,
    pub _markers: *mut _IO_marker,
    pub _chain: *mut _IO_FILE,
    pub _fileno: c_int,
    pub _flags2: c_int,
    pub _old_offset: __off_t,
    pub _cur_column: u16,
    pub _vtable_offset: i8,
    pub _shortbuf: [c_char; 1],
    pub _lock: *mut _IO_lock_t,
    pub _offset: __off64_t,
    pub _codecvt: *mut _IO_codecvt,
    pub _wide_data: *mut _IO_wide_data,
    pub _freeres_list: *mut _IO_FILE,
    pub _freeres_buf: *mut c_void,
    pub __pad5: size_t,
    pub _mode: c_int,
    pub _unused2: [c_char; 15 * std::mem::size_of::<c_int>() - 4 * std::mem::size_of::<*mut c_void>() - std::mem::size_of::<size_t>()],
}

pub type FILE = *mut _IO_FILE;

pub struct _IO_marker;

pub struct _IO_codecvt;

pub struct _IO_wide_data;

pub type _IO_lock_t = c_void;

extern {
    pub static stdin: FILE;
    pub static stdout: FILE;
    pub static stderr: FILE;
}

#[repr(C)]
pub union pthread_attr_t {
    __size: [c_char; 56],
    __align: c_long,
}

extern "C" {
    pub fn free(ptr: *mut c_void);
}

pub fn utarray_str_dtor(elt: *mut c_void) {
    let eltc = elt as *mut *mut c_char;
    if !(*eltc).is_null() {
        unsafe { free(*eltc as *mut c_void) };
    }
}
