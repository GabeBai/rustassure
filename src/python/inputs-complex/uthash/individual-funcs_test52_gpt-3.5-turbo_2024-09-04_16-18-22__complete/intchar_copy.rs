use std::os::raw::{c_char, c_int, c_long};
use std::mem::size_of;

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
    _mode: c_int,
    _unused2: [c_char; 15 * size_of::<c_int>() - 4 * size_of::<*mut c_void>() - size_of::<size_t>()],
}

pub static mut stdin: *mut _IO_FILE = 0 as *mut _IO_FILE;
pub static mut stdout: *mut _IO_FILE = 0 as *mut _IO_FILE;
pub static mut stderr: *mut _IO_FILE = 0 as *mut _IO_FILE;

#[repr(C)]
pub union pthread_attr_t {
    __size: [c_char; 56],
    __align: c_long,
}

extern "C" {
    pub fn strdup(s: *const c_char) -> *mut c_char;
}

pub type ctor_f = extern "C" fn(*mut c_void, *const c_void);
pub type dtor_f = extern "C" fn(*mut c_void);
pub type init_f = extern "C" fn(*mut c_void);

#[repr(C)]
pub struct UT_icd {
    sz: size_t,
    init: Option<init_f>,
    copy: Option<ctor_f>,
    dtor: Option<dtor_f>,
}

pub static ut_str_icd: UT_icd = UT_icd {
    sz: size_of::<*mut c_char>(),
    init: None,
    copy: Some(intchar_copy as ctor_f),
    dtor: Some(utarray_str_dtor as dtor_f),
};

pub static ut_int_icd: UT_icd = UT_icd {
    sz: size_of::<c_int>(),
    init: None,
    copy: None,
    dtor: None,
};

pub static ut_ptr_icd: UT_icd = UT_icd {
    sz: size_of::<*mut c_void>(),
    init: None,
    copy: None,
    dtor: None,
};

#[repr(C)]
pub struct intchar_t {
    a: c_int,
    s: *mut c_char,
}

pub extern "C" fn intchar_copy(_dst: *mut c_void, _src: *const c_void) {
    let dst = _dst as *mut intchar_t;
    let src = _src as *const intchar_t;

    unsafe {
        (*dst).a = (*src).a;
        (*dst).s = if !(*src).s.is_null() {
            strdup((*src).s)
        } else {
            std::ptr::null_mut()
        };
    }
}
