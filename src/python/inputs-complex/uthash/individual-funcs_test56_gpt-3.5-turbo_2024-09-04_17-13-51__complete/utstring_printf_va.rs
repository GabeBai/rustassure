use std::ffi::CStr;
use std::os::raw::{c_char, c_int, c_void};
use std::ptr;

#[repr(C)]
pub struct UT_string {
    d: *mut c_char,
    n: usize,
    i: usize,
}

extern "C" {
    fn vsnprintf(s: *mut c_char, maxlen: usize, format: *const c_char, ap: va_list) -> c_int;
    fn realloc(ptr: *mut c_void, size: usize) -> *mut c_void;
    fn exit(status: c_int) -> !;
}

#[repr(C)]
struct va_list {
    data: [*mut c_void; 1],
}

unsafe fn utstring_printf_va(s: *mut UT_string, fmt: *const c_char, mut ap: va_list) {
    let mut n: c_int;
    let mut cp: va_list;
    loop {
        cp = ap;
        n = vsnprintf((*s).d.offset((*s).i as isize), ((*s).n - (*s).i) as usize, fmt, cp);
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
