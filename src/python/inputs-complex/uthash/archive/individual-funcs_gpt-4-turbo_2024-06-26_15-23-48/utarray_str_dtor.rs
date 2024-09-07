use std::os::raw::{c_char, c_int, c_long, c_ulong, c_void};

type size_t = c_ulong;
type __off_t = c_long;
type __off64_t = c_long;

#[repr(C)]
struct FILE {
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
    _cur_column: c_ushort,
    _vtable_offset: c_char,
    _shortbuf: [c_char; 1],
    _lock: *mut c_void,
    _offset: __off64_t,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut FILE,
    _freeres_buf: *mut c_void,
    __pad5: size_t,
    _mode: c_int,
    _unused2: [c_char; 15 * std::mem::size_of::<c_int>() - 4 * std::mem::size_of::<*mut c_void>() - std::mem::size_of::<size_t>()],
}

extern "C" {
    static stdin: *mut FILE;
    static stdout: *mut FILE;
    static stderr: *mut FILE;
}

#[repr(C)]
union pthread_attr_t {
    __size: [c_char; 56],
    __align: c_long,
}

extern "C" {
    fn free(__ptr: *mut c_void);
}

unsafe fn utarray_str_dtor(elt: *mut c_void) {
    let eltc = elt as *mut *mut c_char;
    if !(*eltc).is_null() {
        free(*eltc as *mut c_void);
    }
}
