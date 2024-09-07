use std::os::raw::{c_char, c_void};
use std::mem;

#[repr(C)]
struct _IO_marker;

#[repr(C)]
struct _IO_codecvt;

#[repr(C)]
struct _IO_wide_data;

type _IO_lock_t = c_void;

#[repr(C)]
struct _IO_FILE {
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
    _freeres_buf: *mut c_void,
    __pad5: usize,
    _mode: i32,
    _unused2: [i32; 15],
}

#[repr(C)]
struct _IO_marker;

#[repr(C)]
struct _IO_codecvt;

#[repr(C)]
struct _IO_wide_data;

type __off_t = i64;
type __off64_t = i64;

#[repr(C)]
union pthread_attr_t {
    __size: [u8; 56],
    __align: i64,
}

#[no_mangle]
pub extern "C" fn free(ptr: *mut c_void) {
    unsafe {
        libc::free(ptr);
    }
}

#[no_mangle]
pub extern "C" fn utarray_str_dtor(elt: *mut c_void) {
    let eltc = elt as *mut *mut c_char;
    if !(*eltc).is_null() {
        unsafe {
            libc::free(*eltc as *mut c_void);
        }
    }
}
