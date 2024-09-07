use std::ffi::CStr;
use std::os::raw::{c_char, c_int, c_void};
use std::ptr;

#[repr(C)]
struct UT_string {
    d: *mut c_char,
    n: usize,
    i: usize,
}

extern "C" {
    fn malloc(size: usize) -> *mut c_void;
    fn realloc(ptr: *mut c_void, size: usize) -> *mut c_void;
    fn free(ptr: *mut c_void);
    fn memcpy(dest: *mut c_void, src: *const c_void, n: usize);
    fn printf(format: *const c_char, ...) -> c_int;
}

fn utstring_printf(s: *mut UT_string, fmt: *const c_char, ...) {
    // Implement the utstring_printf function here
}

fn main() {
    let mut s: *mut UT_string = unsafe { malloc(std::mem::size_of::<UT_string>()) as *mut UT_string };
    if s.is_null() {
        unsafe { exit(-1) };
    }
    unsafe {
        (*s).n = 0;
        (*s).i = 0;
        (*s).d = ptr::null_mut();
        if (*s).n - (*s).i < 100 {
            let utstring_tmp = realloc((*s).d as *mut c_void, (*s).n + 100);
            if utstring_tmp.is_null() {
                exit(-1);
            }
            (*s).d = utstring_tmp as *mut c_char;
            (*s).n += 100;
        }
        (*s).d = ptr::null_mut();
    }

    let mut t: *mut UT_string = unsafe { malloc(std::mem::size_of::<UT_string>()) as *mut UT_string };
    if t.is_null() {
        unsafe { exit(-1) };
    }
    unsafe {
        (*t).n = 0;
        (*t).i = 0;
        (*t).d = ptr::null_mut();
        if (*t).n - (*t).i < 100 {
            let utstring_tmp = realloc((*t).d as *mut c_void, (*t).n + 100);
            if utstring_tmp.is_null() {
                exit(-1);
            }
            (*t).d = utstring_tmp as *mut c_char;
            (*t).n += 100;
        }
        (*t).d = ptr::null_mut();
    }

    let hello = "hello ".as_ptr() as *const c_char;
    let world = "world ".as_ptr() as *const c_char;
    let hi = "hi ".as_ptr() as *const c_char;
    let there = "there ".as_ptr() as *const c_char;

    utstring_printf(s, hello);
    utstring_printf(s, world);
    utstring_printf(t, hi);
    utstring_printf(t, there);

    unsafe {
        if (*s).n - (*s).i < (*t).i + 1 {
            let utstring_tmp = realloc((*s).d as *mut c_void, (*s).n + (*t).i + 1);
            if utstring_tmp.is_null() {
                exit(-1);
            }
            (*s).d = utstring_tmp as *mut c_char;
            (*s).n += (*t).i + 1;
        }
        if (*t).i > 0 {
            memcpy((*s).d as *mut c_void, (*t).d as *const c_void, (*t).i);
        }
        (*s).i += (*t).i;
        (*s).d.add((*s).i).write(0);
    }

    unsafe {
        printf("length: %u\n".as_ptr() as *const c_char, (*s).i as c_int);
        printf("%s\n".as_ptr() as *const c_char, (*s).d);
        if !(*s).d.is_null() {
            free((*s).d as *mut c_void);
        }
        free(s as *mut c_void);
        if !(*t).d.is_null() {
            free((*t).d as *mut c_void);
        }
        free(t as *mut c_void);
    }
}
