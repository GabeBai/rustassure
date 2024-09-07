use std::os::raw::{c_char, c_int, c_void};
use std::ffi::VaList;
use std::ptr;
use std::alloc::{alloc, realloc, Layout};
use std::process;

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
    _old_offset: c_int,
    _cur_column: u16,
    _vtable_offset: i8,
    _shortbuf: [c_char; 1],
    _lock: *mut c_void,
    _offset: c_int,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut _IO_FILE,
    _freeres_buf: *mut c_void,
    __pad5: usize,
    _mode: c_int,
    _unused2: [c_char; 15 * std::mem::size_of::<c_int>() - 4 * std::mem::size_of::<*mut c_void>() - std::mem::size_of::<usize>()],
}

struct _IO_marker;

struct _IO_codecvt;

struct _IO_wide_data;

type _IO_lock_t = c_void;

struct UT_string {
    d: *mut c_char,
    n: usize,
    i: usize,
}

extern "C" {
    static stdin: *mut _IO_FILE;
    static stdout: *mut _IO_FILE;
    static stderr: *mut _IO_FILE;

    fn vsnprintf(s: *mut c_char, maxlen: usize, format: *const c_char, ap: VaList) -> c_int;
}

#[no_mangle]
pub extern "C" fn realloc(ptr: *mut c_void, size: usize) -> *mut c_void {
    unsafe {
        realloc(ptr, Layout::from_size_align_unchecked(size, 1))
    }
}

#[no_mangle]
pub extern "C" fn exit(status: c_int) -> ! {
    process::exit(status);
}

#[no_mangle]
pub extern "C" fn utstring_printf_va(s: *mut UT_string, fmt: *const c_char, ap: VaList) {
    let mut n: c_int;
    let mut cp: VaList;
    loop {
        cp = ap.clone();
        n = unsafe { vsnprintf((*s).d.offset((*s).i as isize), ((*s).n - (*s).i) as usize, fmt, cp) };
        drop(cp);
        if n > -1 && n as usize < ((*s).n - (*s).i) {
            (*s).i += n as usize;
            return;
        }
        if n > -1 {
            if ((*s).n - (*s).i) < (n as usize + 1) {
                let utstring_tmp = realloc((*s).d as *mut c_void, (*s).n + (n as usize + 1));
                if utstring_tmp.is_null() {
                    exit(-1);
                }
                (*s).d = utstring_tmp as *mut c_char;
                (*s).n += n as usize + 1;
            }
        } else {
            if ((*s).n - (*s).i) < (2 * (*s).n) {
                let utstring_tmp = realloc((*s).d as *mut c_void, (*s).n + (2 * (*s).n));
                if utstring_tmp.is_null() {
                    exit(-1);
                }
                (*s).d = utstring_tmp as *mut c_char;
                (*s).n += 2 * (*s).n;
            }
        }
    }
}
