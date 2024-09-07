use std::ffi::CStr;
use std::os::raw::{c_char, c_int, c_void};
use std::ptr;

#[repr(C)]
struct _IO_FILE {
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

type va_list = ::std::ffi::VaList;

#[repr(C)]
union pthread_attr_t {
    __size: [c_char; 56],
    __align: c_long,
}

#[repr(C)]
struct UT_string {
    d: *mut c_char,
    n: usize,
    i: usize,
}

extern "C" {
    static stdin: *mut _IO_FILE;
    static stdout: *mut _IO_FILE;
    static stderr: *mut _IO_FILE;

    fn vsnprintf(s: *mut c_char, maxlen: usize, format: *const c_char, ap: va_list) -> c_int;
    fn realloc(ptr: *mut c_void, size: usize) -> *mut c_void;
    fn exit(status: c_int) -> !;
}

#[no_mangle]
pub extern "C" fn utstring_printf_va(s: *mut UT_string, fmt: *const c_char, ap: va_list) {
    let mut n: c_int;
    let mut cp: va_list;
    loop {
        unsafe {
            std::intrinsics::copy(&ap, &mut cp, 1);
            n = vsnprintf((*s).d.offset((*s).i as isize), (*s).n - (*s).i, fmt, cp);
            std::intrinsics::drop_in_place(&mut cp);
            if n > -1 && n as usize < (*s).n - (*s).i {
                (*s).i += n as usize;
                return;
            }
            if n > -1 {
                if (*s).n - (*s).i < (n + 1) as usize {
                    let utstring_tmp = realloc((*s).d as *mut c_void, (*s).n + (n + 1) as usize);
                    if utstring_tmp.is_null() {
                        exit(-1);
                    }
                    (*s).d = utstring_tmp as *mut c_char;
                    (*s).n += (n + 1) as usize;
                }
            } else {
                if (*s).n - (*s).i < (*s).n * 2 {
                    let utstring_tmp = realloc((*s).d as *mut c_void, (*s).n + (*s).n * 2);
                    if utstring_tmp.is_null() {
                        exit(-1);
                    }
                    (*s).d = utstring_tmp as *mut c_char;
                    (*s).n += (*s).n * 2;
                }
            }
        }
    }
}
