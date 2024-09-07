use std::os::raw::{c_char, c_int, c_long, c_ulong, c_void};
use std::ptr::null_mut;

type SizeT = usize;
type OffT = i64;
type Off64T = i64;

#[repr(C)]
struct FILE {
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
    _chain: *mut FILE,
    _fileno: c_int,
    _flags2: c_int,
    _old_offset: OffT,
    _cur_column: u16,
    _vtable_offset: i8,
    _shortbuf: [c_char; 1],
    _lock: *mut c_void,
    _offset: Off64T,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut FILE,
    _freeres_buf: *mut c_void,
    __pad5: SizeT,
    _mode: c_int,
    _unused2: [c_char; 15 * std::mem::size_of::<c_int>() - 4 * std::mem::size_of::<*mut c_void>() - std::mem::size_of::<SizeT>()],
}

extern "C" {
    static stdin: *mut FILE;
    static stdout: *mut FILE;
    static stderr: *mut FILE;
}

#[repr(C)]
union pthread_attr_t {
    __size: [c_char; 56],
    __align: c_long,
}

type CtorF = unsafe extern "C" fn(*mut c_void, *const c_void);
type DtorF = unsafe extern "C" fn(*mut c_void);
type InitF = unsafe extern "C" fn(*mut c_void);

#[repr(C)]
struct UT_icd {
    sz: SizeT,
    init: Option<InitF>,
    copy: Option<CtorF>,
    dtor: Option<DtorF>,
}

static UT_STR_ICD: UT_icd = UT_icd {
    sz: std::mem::size_of::<*mut c_char>(),
    init: None,
    copy: Some(utarray_str_cpy),
    dtor: Some(utarray_str_dtor),
};

static UT_INT_ICD: UT_icd = UT_icd {
    sz: std::mem::size_of::<c_int>(),
    init: None,
    copy: None,
    dtor: None,
};

static UT_PTR_ICD: UT_icd = UT_icd {
    sz: std::mem::size_of::<*mut c_void>(),
    init: None,
    copy: None,
    dtor: None,
};

unsafe extern "C" fn reverse(a: *const c_void, b: *const c_void) -> c_int {
    let _a = *(a as *const c_int);
    let _b = *(b as *const c_int);
    _b - _a
}
