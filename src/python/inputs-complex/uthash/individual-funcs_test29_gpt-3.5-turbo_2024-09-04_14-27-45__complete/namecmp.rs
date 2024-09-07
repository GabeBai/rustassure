use std::cmp::Ordering;

#[repr(C)]
struct FILE {
    _flags: i32,
    _IO_read_ptr: *mut i8,
    _IO_read_end: *mut i8,
    _IO_read_base: *mut i8,
    _IO_write_base: *mut i8,
    _IO_write_ptr: *mut i8,
    _IO_write_end: *mut i8,
    _IO_buf_base: *mut i8,
    _IO_buf_end: *mut i8,
    _IO_save_base: *mut i8,
    _IO_backup_base: *mut i8,
    _IO_save_end: *mut i8,
    _markers: *mut _IO_marker,
    _chain: *mut FILE,
    _fileno: i32,
    _flags2: i32,
    _old_offset: __off_t,
    _cur_column: u16,
    _vtable_offset: i8,
    _shortbuf: [i8; 1],
    _lock: *mut _IO_lock_t,
    _offset: __off64_t,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut FILE,
    _freeres_buf: *mut std::ffi::c_void,
    __pad5: usize,
    _mode: i32,
    _unused2: [i32; 15],
}

static mut stdin: *mut FILE = std::ptr::null_mut();
static mut stdout: *mut FILE = std::ptr::null_mut();
static mut stderr: *mut FILE = std::ptr::null_mut();

#[repr(C)]
struct _IO_marker;

#[repr(C)]
struct _IO_codecvt;

#[repr(C)]
struct _IO_wide_data;

type _IO_lock_t = std::ffi::c_void;

type __off_t = i32;
type __off64_t = i32;

#[no_mangle]
extern "C" {
    fn strcmp(__s1: *const i8, __s2: *const i8) -> i32;
}

#[repr(C)]
struct el {
    bname: [i8; 20],
    next: *mut el,
    prev: *mut el,
}

fn namecmp(_a: *mut std::ffi::c_void, _b: *mut std::ffi::c_void) -> i32 {
    let a = _a as *mut el;
    let b = _b as *mut el;
    
    unsafe {
        let a_name = std::ffi::CStr::from_ptr((*a).bname.as_ptr()).to_str().unwrap();
        let b_name = std::ffi::CStr::from_ptr((*b).bname.as_ptr()).to_str().unwrap();
        
        match a_name.cmp(b_name) {
            Ordering::Less => -1,
            Ordering::Equal => 0,
            Ordering::Greater => 1,
        }
    }
}
