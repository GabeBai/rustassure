use std::os::raw::c_char;

#[repr(C)]
pub struct _IO_FILE {
    _flags: i32,
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
    _fileno: i32,
    _flags2: i32,
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
    _mode: i32,
    _unused2: [i32; 15],
}

pub type __off_t = i64;
pub type __off64_t = i64;
pub type _IO_lock_t = std::ffi::c_void;
pub struct _IO_marker;
pub struct _IO_codecvt;
pub struct _IO_wide_data;

extern {
    static stdin: *mut _IO_FILE;
    static stdout: *mut _IO_FILE;
    static stderr: *mut _IO_FILE;
    fn free(ptr: *mut std::ffi::c_void);
}

pub fn utarray_str_dtor(elt: *mut std::ffi::c_void) {
    let eltc = elt as *mut *mut c_char;
    unsafe {
        if !(*eltc).is_null() {
            free(*eltc as *mut std::ffi::c_void);
        }
    }
}
