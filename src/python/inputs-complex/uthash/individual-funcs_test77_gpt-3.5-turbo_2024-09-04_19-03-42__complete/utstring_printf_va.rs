use std::os::raw::{c_char, c_int, c_void};
use std::ffi::VaList;

#[repr(C)]
pub struct FILE {
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
    _old_offset: __off_t,
    _cur_column: u16,
    _vtable_offset: i8,
    _shortbuf: [c_char; 1],
    _lock: *mut _IO_lock_t,
    _offset: __off64_t,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut FILE,
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

pub struct UT_string {
    d: *mut c_char,
    n: usize,
    i: usize,
}

impl UT_string {
    fn new() -> Self {
        UT_string {
            d: std::ptr::null_mut(),
            n: 0,
            i: 0,
        }
    }
}

#[no_mangle]
pub extern "C" fn utstring_printf_va(s: *mut UT_string, fmt: *const c_char, ap: VaList) {
    let mut n: c_int;
    let mut cp: VaList;
    loop {
        unsafe {
            std::ptr::copy(ap.as_va_list(), cp.as_va_list(), 1);
            n = libc::vsnprintf((*s).d.offset((*s).i as isize), ((*s).n - (*s).i) as usize, fmt, cp.as_va_list());
            if n > -1 && n as usize < ((*s).n - (*s).i) {
                (*s).i += n as usize;
                return;
            }
            if n > -1 {
                if ((*s).n - (*s).i) < (n as usize + 1) {
                    let utstring_tmp = libc::realloc((*s).d as *mut c_void, ((*s).n + (n as usize + 1)) as usize) as *mut c_char;
                    if utstring_tmp.is_null() {
                        libc::exit(-1);
                    }
                    (*s).d = utstring_tmp;
                    (*s).n += n as usize + 1;
                }
            } else {
                if ((*s).n - (*s).i) < ((*s).n * 2) {
                    let utstring_tmp = libc::realloc((*s).d as *mut c_void, ((*s).n + ((*s).n * 2)) as usize) as *mut c_char;
                    if utstring_tmp.is_null() {
                        libc::exit(-1);
                    }
                    (*s).d = utstring_tmp;
                    (*s).n += (*s).n * 2;
                }
            }
        }
    }
}
