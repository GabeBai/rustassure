use std::io::{self, Write};

extern "C" {
    fn fflush(stream: *mut std::ffi::c_void) -> i32;
    fn fprintf(stream: *mut std::ffi::c_void, format: *const i8, ...) -> i32;
    fn fputc(c: i32, stream: *mut std::ffi::c_void) -> i32;
    fn strncmp(s1: *const i8, s2: *const i8, n: usize) -> i32;
    fn u8next_(txt: *const i8, ch: *mut i32) -> i32;
    fn u8encode_(ch: i32, s: *mut i8) -> i32;
    fn __error() -> *mut i32;
}

fn main() {
    let s = ["Aa", "èa", "会員", "𧀀𧀍"];
    for (k, &s1) in s.iter().enumerate() {
        let mut l: i32 = 0;
        let mut l2: i32 = 0;
        let mut c: i32 = 0;
        let mut buf: [i8; 8] = [0; 8];

        unsafe {
            l = u8next_(s1.as_ptr() as *const i8, &mut c);
            let e_ = !(l == k as i32 + 1);
            *__error() = 0;
            fflush(std::io::stdout().as_raw_fd() as *mut std::ffi::c_void);
            fprintf(
                std::io::stderr().as_raw_fd() as *mut std::ffi::c_void,
                b"%s: (%s) \t%s:%d\n\0".as_ptr() as *const i8,
                if e_ { "FAIL" } else { "PASS" },
                "l == k+1",
                "test4.c",
                19,
            );
            if e_ != 0 {
                fprintf(
                    std::io::stderr().as_raw_fd() as *mut std::ffi::c_void,
                    b"    : Expected length: %d, got %d\0".as_ptr() as *const i8,
                    k + 1,
                    l,
                );
                fputc('\n' as i32, std::io::stderr().as_raw_fd() as *mut std::ffi::c_void);
            }
            *__error() = e_;

            // Similar translations for other C function calls
        }
    }
}
