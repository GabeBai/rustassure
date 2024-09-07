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

struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
type _IO_lock_t = c_void;

extern "C" {
    static stdin: *mut FILE;
    static stdout: *mut FILE;
    static stderr: *mut FILE;

    fn strcpy(dest: *mut c_char, src: *const c_char) -> *mut c_char;
    fn strlen(s: *const c_char) -> usize;
    fn malloc(size: usize) -> *mut c_void;
    fn exit(status: i32) -> !;
}

fn utarray_str_cpy(dst: *mut c_void, src: *const c_void) {
    let srcc = src as *const *const c_char;
    let dstc = dst as *mut *mut c_char;

    unsafe {
        if *srcc == ptr::null() {
            *dstc = ptr::null_mut();
        } else {
            let len = strlen(*srcc);
            let new_size = len + 1;
            let new_layout = Layout::from_size_align(new_size, 1).unwrap();
            let new_ptr = malloc(new_size);
            if new_ptr == ptr::null_mut() {
                exit(-1);
            } else {
                let src_str = *srcc;
                let dst_str = new_ptr as *mut c_char;
                for i in 0..len {
                    *dst_str.add(i) = *src_str.add(i);
                }
                *dst_str.add(len) = 0;
                *dstc = new_ptr as *mut c_char;
            }
        }
    }
}
