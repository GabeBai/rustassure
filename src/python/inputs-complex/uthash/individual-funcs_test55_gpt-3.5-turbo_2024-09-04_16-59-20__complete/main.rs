use std::ffi::CString;
use std::mem;
use std::os::raw::{c_char, c_int, c_void};
use std::ptr;

#[repr(C)]
struct UT_string {
    d: *mut c_char,
    n: usize,
    i: usize,
}

impl UT_string {
    fn new() -> Self {
        UT_string {
            d: ptr::null_mut(),
            n: 0,
            i: 0,
        }
    }
}

extern "C" {
    fn malloc(size: usize) -> *mut c_void;
    fn realloc(ptr: *mut c_void, size: usize) -> *mut c_void;
    fn free(ptr: *mut c_void);
    fn memcpy(dest: *mut c_void, src: *const c_void, n: usize);
    fn printf(format: *const c_char, ...) -> c_int;
    fn exit(status: c_int) -> !;
}

fn utstring_printf(s: &mut UT_string, fmt: &str, args: c_int) {
    let fmt_c = CString::new(fmt).expect("CString::new failed");
    unsafe {
        printf(fmt_c.as_ptr(), args);
    }
}

fn main() {
    let mut s = UT_string::new();
    let binary = b"\xff\xff";

    unsafe {
        s.d = malloc(mem::size_of::<UT_string>()) as *mut c_char;
        if s.d.is_null() {
            exit(-1);
        }

        s.n = 0;
        s.i = 0;
        s.d = ptr::null_mut();

        let utstring_tmp = realloc(s.d as *mut c_void, s.n + 100);
        if utstring_tmp.is_null() {
            exit(-1);
        }
        s.d = utstring_tmp as *mut c_char;
        s.n += 100;

        *s.d = '\0' as c_char;

        let utstring_tmp = realloc(s.d as *mut c_void, s.n + binary.len() + 1);
        if utstring_tmp.is_null() {
            exit(-1);
        }
        s.d = utstring_tmp as *mut c_char;
        s.n += binary.len() + 1;

        memcpy(s.d as *mut c_void, binary.as_ptr() as *const c_void, binary.len());
        s.i += binary.len();
        *s.d.add(s.i) = '\0' as c_char;

        printf("length is %u\n".as_ptr() as *const c_char, s.i as c_int);

        s.i = 0;
        *s.d = '\0' as c_char;

        utstring_printf(&mut s, "number %d", 10);

        printf("%s\n".as_ptr() as *const c_char, s.d);

        if !s.d.is_null() {
            free(s.d as *mut c_void);
        }
        free(s.d as *mut c_void);
    }
}
