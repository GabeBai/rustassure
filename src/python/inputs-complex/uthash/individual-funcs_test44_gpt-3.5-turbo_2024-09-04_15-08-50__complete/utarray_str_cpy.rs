use std::ffi::CString;
use std::os::raw::{c_char, c_void};
use std::ptr;

struct FILE {
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
    _chain: *mut FILE,
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
    _freeres_list: *mut FILE,
    _freeres_buf: *mut c_void,
    __pad5: usize,
    _mode: i32,
    _unused2: [i32; 15],
}

extern "C" {
    static mut stdin: *mut FILE;
    static mut stdout: *mut FILE;
    static mut stderr: *mut FILE;

    fn strcpy(dest: *mut c_char, src: *const c_char) -> *mut c_char;
    fn strlen(s: *const c_char) -> usize;

    fn malloc(size: usize) -> *mut c_void;
    fn exit(status: i32) -> !;
}

fn utarray_str_cpy(dst: *mut c_void, src: *const c_void) {
    let srcc = src as *const *const c_char;
    let mut dstc = dst as *mut *mut c_char;

    if *srcc == ptr::null() {
        *dstc = ptr::null_mut();
    } else {
        let src_str = unsafe { std::ffi::CStr::from_ptr(*srcc) };
        let len = src_str.to_bytes().len();
        let new_str = unsafe { malloc(len + 1) as *mut c_char };

        if new_str == ptr::null_mut() {
            unsafe { exit(-1) };
        } else {
            unsafe {
                strcpy(new_str, *srcc);
                *dstc = new_str;
            }
        }
    }
}
