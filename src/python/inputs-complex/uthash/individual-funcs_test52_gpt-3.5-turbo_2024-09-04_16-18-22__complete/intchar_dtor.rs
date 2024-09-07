use std::os::raw::{c_char, c_int, c_void};

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
    __pad5: usize,
    _mode: c_int,
    _unused2: [c_char; 15 * std::mem::size_of::<c_int>() - 4 * std::mem::size_of::<*mut c_void>() - std::mem::size_of::<usize>()],
}

pub struct _IO_marker;

pub struct _IO_codecvt;

pub struct _IO_wide_data;

pub type _IO_lock_t = c_void;

pub type __off_t = c_int;

pub type __off64_t = c_int;

pub type FILE = _IO_FILE;

pub static mut stdin: *mut FILE = std::ptr::null_mut();
pub static mut stdout: *mut FILE = std::ptr::null_mut();
pub static mut stderr: *mut FILE = std::ptr::null_mut();

#[repr(C)]
pub union pthread_attr_t {
    __size: [c_char; 56],
    __align: c_int,
}

extern "C" {
    pub fn free(ptr: *mut c_void);
}

pub type ctor_f = extern "C" fn(*mut c_void, *const c_void);
pub type dtor_f = extern "C" fn(*mut c_void);
pub type init_f = extern "C" fn(*mut c_void);

#[repr(C)]
pub struct UT_icd {
    sz: usize,
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
    sz: std::mem::size_of::<*mut c_void>(),
    init: None,
    copy: None,
    dtor: None,
};

pub struct intchar_t {
    a: c_int,
    s: *mut c_char,
}

pub fn intchar_dtor(elt: *mut c_void) {
    let elt = elt as *mut intchar_t;
    if !(*elt).s.is_null() {
        unsafe {
            free((*elt).s as *mut c_void);
        }
    }
}

extern "C" {
    fn utarray_str_cpy(dst: *mut c_void, src: *const c_void);
    fn utarray_str_dtor(elt: *mut c_void);
}
