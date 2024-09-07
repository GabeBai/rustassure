use std::os::raw::{c_char, c_int, c_long};
use std::ptr;

#[repr(C)]
pub struct _IO_marker;

#[repr(C)]
pub struct _IO_codecvt;

#[repr(C)]
pub struct _IO_wide_data;

pub type _IO_lock_t = ();

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
    __pad5: size_t,
    _mode: c_int,
    _unused2: [c_char; 15 * std::mem::size_of::<c_int>() - 4 * std::mem::size_of::<*mut std::ffi::c_void>() - std::mem::size_of::<size_t>()],
}

extern "C" {
    static stdin: *mut _IO_FILE;
    static stdout: *mut _IO_FILE;
    static stderr: *mut _IO_FILE;
}

#[repr(C)]
pub union pthread_attr_t {
    __size: [c_char; 56],
    __align: c_long,
}

pub type ctor_f = extern "C" fn(*mut std::ffi::c_void, *const std::ffi::c_void);
pub type dtor_f = extern "C" fn(*mut std::ffi::c_void);
pub type init_f = extern "C" fn(*mut std::ffi::c_void);

#[repr(C)]
pub struct UT_icd {
    sz: size_t,
    init: Option<init_f>,
    copy: Option<ctor_f>,
    dtor: Option<dtor_f>,
}

static ut_str_icd: UT_icd = UT_icd {
    sz: std::mem::size_of::<*mut c_char>(),
    init: None,
    copy: Some(utarray_str_cpy),
    dtor: Some(utarray_str_dtor),
};

static ut_int_icd: UT_icd = UT_icd {
    sz: std::mem::size_of::<c_int>(),
    init: None,
    copy: None,
    dtor: None,
};

static ut_ptr_icd: UT_icd = UT_icd {
    sz: std::mem::size_of::<*mut std::ffi::c_void>(),
    init: None,
    copy: None,
    dtor: None,
};

fn reverse(a: *const std::ffi::c_void, b: *const std::ffi::c_void) -> c_int {
    let _a = unsafe { *(a as *const c_int) };
    let _b = unsafe { *(b as *const c_int) };
    _b - _a
}
