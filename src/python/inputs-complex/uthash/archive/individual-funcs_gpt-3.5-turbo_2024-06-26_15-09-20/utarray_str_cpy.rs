use std::os::raw::{c_char, c_void};
use std::mem::size_of;

#[repr(C)]
pub struct _IO_marker {
    _unused: [u8; 24],
}

#[repr(C)]
pub struct _IO_codecvt {
    _unused: [u8; 1],
}

#[repr(C)]
pub struct _IO_wide_data {
    _unused: [u8; 1],
}

pub type _IO_lock_t = c_void;

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
    _freeres_buf: *mut c_void,
    __pad5: size_t,
    _mode: i32,
    _unused2: [i32; 15],
}

extern "C" {
    static mut stdin: *mut _IO_FILE;
    static mut stdout: *mut _IO_FILE;
    static mut stderr: *mut _IO_FILE;

    fn strcpy(__dest: *mut c_char, __src: *const c_char) -> *mut c_char;
    fn strlen(__s: *const c_char) -> size_t;
    fn malloc(__size: size_t) -> *mut c_void;
    fn exit(__status: i32) -> !;
}

#[repr(C)]
pub union pthread_attr_t {
    __size: [u8; 56],
    __align: i32,
}

static mut utarray_str_cpy: unsafe extern "C" fn(*mut c_void, *const c_void) = utarray_str_cpy;

unsafe fn utarray_str_cpy(dst: *mut c_void, src: *const c_void) {
    let srcc = src as *const *const c_char;
    let dstc = dst as *mut *mut c_char;
    if *srcc == std::ptr::null() {
        *dstc = std::ptr::null_mut();
    } else {
        *dstc = malloc(strlen(*srcc) + 1);
        if *dstc == std::ptr::null_mut() {
            exit(-1);
        } else {
            strcpy(*dstc, *srcc);
        }
    }
}
