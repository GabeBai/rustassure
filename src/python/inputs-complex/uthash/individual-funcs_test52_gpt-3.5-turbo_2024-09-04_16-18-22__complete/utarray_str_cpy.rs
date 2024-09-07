use std::os::raw::{c_char, c_void};
use std::alloc::{alloc, dealloc, Layout};
use std::ptr;

#[repr(C)]
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

static mut stdin: *mut FILE = std::ptr::null_mut();
static mut stdout: *mut FILE = std::ptr::null_mut();
static mut stderr: *mut FILE = std::ptr::null_mut();

#[repr(C)]
union pthread_attr_t {
    __size: [c_char; 56],
    __align: i64,
}

extern "C" {
    fn malloc(size: usize) -> *mut c_void;
    fn exit(status: i32) -> !;
    fn strcpy(dest: *mut c_char, src: *const c_char) -> *mut c_char;
    fn strlen(s: *const c_char) -> usize;
}

fn utarray_str_cpy(dst: *mut c_void, src: *const c_void) {
    let srcc = src as *const *const c_char;
    let dstc = dst as *mut *mut c_char;

    unsafe {
        if *srcc == std::ptr::null() {
            *dstc = std::ptr::null_mut();
        } else {
            let src_str = *srcc;
            let len = strlen(src_str) + 1;
            let new_dst = malloc(len) as *mut c_char;
            if new_dst == std::ptr::null_mut() {
                exit(-1);
            } else {
                strcpy(new_dst, src_str);
                *dstc = new_dst;
            }
        }
    }
}
