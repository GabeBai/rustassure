use std::ffi::VaList;

pub type va_list<'a> = VaList<'a, 'a>;

pub struct _IO_FILE {
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
    _chain: *mut _IO_FILE,
    _fileno: i32,
    _flags2: i32,
    _old_offset: i64,
    _cur_column: u16,
    _vtable_offset: i8,
    _shortbuf: [i8; 1],
    _lock: *mut _IO_lock_t,
    _offset: i64,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut _IO_FILE,
    _freeres_buf: *mut std::ffi::c_void,
    __pad5: usize,
    _mode: i32,
    _unused2: [i8; 15 * std::mem::size_of::<i32>() - 4 * std::mem::size_of::<*mut std::ffi::c_void>() - std::mem::size_of::<usize>()],
}

pub type va_list = __gnuc_va_list;

pub struct pthread_attr_t {
    __size: [i8; 56],
    __align: i64,
}

pub struct UT_string {
    d: *mut i8,
    n: usize,
    i: usize,
}

extern {
    static stdin: *mut _IO_FILE;
    static stdout: *mut _IO_FILE;
    static stderr: *mut _IO_FILE;
}

#[no_mangle]
pub extern "C" fn utstring_printf(s: *mut UT_string, fmt: *const i8, ...) {
    let ap: va_list;
    unsafe {
        std::ffi::VaList::from_va_list(&mut ap);
        utstring_printf_va(s, fmt, ap);
    }
}
