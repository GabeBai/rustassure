use std::os::raw::{c_char, c_void};
use std::cmp::Ordering;

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

type FILE = _IO_FILE;

static mut stdin: *mut FILE = std::ptr::null_mut();
static mut stdout: *mut FILE = std::ptr::null_mut();
static mut stderr: *mut FILE = std::ptr::null_mut();

#[no_mangle]
pub extern "C" fn strcmp(s1: *const c_char, s2: *const c_char) -> i32 {
    let s1_str = unsafe { std::ffi::CStr::from_ptr(s1).to_str().unwrap() };
    let s2_str = unsafe { std::ffi::CStr::from_ptr(s2).to_str().unwrap() };
    s1_str.cmp(s2_str) as i32
}

#[repr(C)]
union pthread_attr_t {
    __size: [c_char; 56],
    __align: i32,
}

type ctor_f = extern "C" fn(*mut c_void, *const c_void);
type dtor_f = extern "C" fn(*mut c_void);
type init_f = extern "C" fn(*mut c_void);

#[repr(C)]
struct UT_icd {
    sz: usize,
    init: Option<init_f>,
    copy: Option<ctor_f>,
    dtor: Option<dtor_f>,
}

#[no_mangle]
pub static ut_str_icd: UT_icd = UT_icd {
    sz: std::mem::size_of::<*const c_char>(),
    init: None,
    copy: Some(utarray_str_cpy),
    dtor: Some(utarray_str_dtor),
};

#[no_mangle]
pub static ut_int_icd: UT_icd = UT_icd {
    sz: std::mem::size_of::<i32>(),
    init: None,
    copy: None,
    dtor: None,
};

#[no_mangle]
pub static ut_ptr_icd: UT_icd = UT_icd {
    sz: std::mem::size_of::<*mut c_void>(),
    init: None,
    copy: None,
    dtor: None,
};

#[no_mangle]
pub extern "C" fn strsort(_a: *const c_void, _b: *const c_void) -> i32 {
    let a = unsafe { *(const *const c_char).cast::<*const c_char>().read(_a as *const *const c_char) };
    let b = unsafe { *(const *const c_char).cast::<*const c_char>().read(_b as *const *const c_char) };
    strcmp(a, b)
}
