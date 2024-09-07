use std::os::raw::{c_char, c_void};
use std::mem;

#[repr(C)]
struct _IO_marker {
    // Define _IO_marker fields here if needed
}

#[repr(C)]
struct _IO_codecvt {
    // Define _IO_codecvt fields here if needed
}

#[repr(C)]
struct _IO_wide_data {
    // Define _IO_wide_data fields here if needed
}

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

static mut stdin: *mut _IO_FILE = std::ptr::null_mut();
static mut stdout: *mut _IO_FILE = std::ptr::null_mut();
static mut stderr: *mut _IO_FILE = std::ptr::null_mut();

#[repr(C)]
union pthread_attr_t {
    __size: [c_char; 56],
    __align: i64,
}

extern "C" {
    fn free(ptr: *mut c_void);
}

fn utarray_str_dtor(elt: *mut c_void) {
    let eltc = elt as *mut *mut c_char;
    unsafe {
        if !(*eltc).is_null() {
            free(*eltc as *mut c_void);
        }
    }
}
