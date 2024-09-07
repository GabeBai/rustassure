
pub type size_t = u64;
pub type __off_t = i64;
pub type __off64_t = i64;
pub struct _IO_FILE;
pub struct _IO_FILE;
pub type FILE = _IO_FILE;
pub struct _IO_FILE {
    pub _flags: i32,
    pub _IO_read_ptr: *mut i8,
    pub _IO_read_end: *mut i8,
    pub _IO_read_base: *mut i8,
    pub _IO_write_base: *mut i8,
    pub _IO_write_ptr: *mut i8,
    pub _IO_write_end: *mut i8,
    pub _IO_buf_base: *mut i8,
    pub _IO_buf_end: *mut i8,
    pub _IO_save_base: *mut i8,
    pub _IO_backup_base: *mut i8,
    pub _IO_save_end: *mut i8,
    pub _markers: *mut _IO_marker,
    pub _chain: *mut _IO_FILE,
    pub _fileno: i32,
    pub _flags2: i32,
    pub _old_offset: __off_t,
    pub _cur_column: u16,
    pub _vtable_offset: i8,
    pub _shortbuf: [i8; 1],
    pub _lock: *mut _IO_lock_t,
    pub _offset: __off64_t,
    pub _codecvt: *mut _IO_codecvt,
    pub _wide_data: *mut _IO_wide_data,
    pub _freeres_list: *mut _IO_FILE,
    pub _freeres_buf: *mut ::std::os::raw::c_void,
    pub __pad5: size_t,
    pub _mode: i32,
    pub _unused2: [i8; 56],
}
extern "C" {
    pub static mut stdin: *mut FILE;
    pub static mut stdout: *mut FILE;
    pub static mut stderr: *mut FILE;
}
#[doc = r##" __attribute__ ((__mode__ (__word__))); "##]
#[repr(C)]
#[derive(Debug, Default, Copy, Clone)]
pub union pthread_attr_t {
    pub __size: [i8; 56],
    pub __align: i64,
}
pub type ctor_f = extern "C" fn(*mut ::std::os::raw::c_void, *const ::std::os::raw::c_void);
pub type dtor_f = extern "C" fn(*mut ::std::os::raw::c_void);
pub type init_f = extern "C" fn(*mut ::std::os::raw::c_void);
#[repr(C)]
#[derive(Debug, Default, Copy, Clone)]
pub struct UT_icd {
    pub sz: size_t,
    pub init: Option<init_f>,
    pub copy: Option<ctor_f>,
    pub dtor: Option<dtor_f>,
}
#[no_mangle]
#[link_section = "__DATA,__data"]
pub static ut_str_icd: UT_icd = UT_icd {
    sz: std::mem::size_of::<*const i8>() as size_t,
    init: None,
    copy: Some(utarray_str_cpy),
    dtor: Some(utarray_str_dtor),
};
#[no_mangle]
#[link_section = "__DATA,__data"]
pub static ut_int_icd: UT_icd = UT_icd {
    sz: std::mem::size_of::<i32>() as size_t,
    init: None,
    copy: None,
    dtor: None,
};
#[no_mangle]
#[link_section = "__DATA,__data"]
pub static ut_ptr_icd: UT_icd = UT_icd {
    sz: std::mem::size_of::<*mut ::std::os::raw::c_void>() as size_t,
    init: None,
    copy: None,
    dtor: None,
};
#[no_mangle]
pub static reverse: fn(*const ::std::os::raw::c_void, *const ::std::os::raw::c_void) -> i32 = reverse;
