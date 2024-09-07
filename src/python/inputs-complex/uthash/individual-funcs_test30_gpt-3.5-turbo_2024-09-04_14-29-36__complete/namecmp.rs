use std::os::raw::{c_char, c_int, c_long};
use std::cmp::Ordering;

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
    _old_offset: c_long,
    _cur_column: u16,
    _vtable_offset: i8,
    _shortbuf: [c_char; 1],
    _lock: *mut _IO_lock_t,
    _offset: c_long,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut _IO_FILE,
    _freeres_buf: *mut std::ffi::c_void,
    __pad5: usize,
    _mode: c_int,
    _unused2: [c_char; 15 * std::mem::size_of::<c_int>() - 4 * std::mem::size_of::<*mut std::ffi::c_void>() - std::mem::size_of::<usize>()],
}

#[repr(C)]
pub struct _IO_marker;

#[repr(C)]
pub struct _IO_codecvt;

#[repr(C)]
pub struct _IO_wide_data;

pub type _IO_lock_t = std::ffi::c_void;

extern {
    static stdin: *mut _IO_FILE;
    static stdout: *mut _IO_FILE;
    static stderr: *mut _IO_FILE;

    fn strcmp(s1: *const c_char, s2: *const c_char) -> c_int;
}

#[repr(C)]
pub struct el {
    bname: [c_char; 20],
    next: *mut el,
    prev: *mut el,
}

fn namecmp(_a: *mut std::ffi::c_void, _b: *mut std::ffi::c_void) -> c_int {
    let a = _a as *mut el;
    let b = _b as *mut el;
    
    unsafe {
        let a_name = std::ffi::CStr::from_ptr((*a).bname.as_ptr()).to_str().unwrap();
        let b_name = std::ffi::CStr::from_ptr((*b).bname.as_ptr()).to_str().unwrap();
        
        match strcmp(a_name.as_ptr() as *const c_char, b_name.as_ptr() as *const c_char).cmp(&0) {
            Ordering::Less => -1,
            Ordering::Equal => 0,
            Ordering::Greater => 1,
        }
    }
}
