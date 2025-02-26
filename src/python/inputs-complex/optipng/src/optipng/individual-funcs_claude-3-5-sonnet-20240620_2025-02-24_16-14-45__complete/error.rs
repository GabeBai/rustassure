use std::ffi::c_void;
use std::os::raw::{c_char, c_int};
use std::ptr::null_mut;
use libc::{FILE, va_list};

extern "C" {
    static __stderrp: *mut FILE;
    fn fprintf(stream: *mut FILE, format: *const c_char, ...) -> c_int;
    fn vfprintf(stream: *mut FILE, format: *const c_char, ap: va_list) -> c_int;
    fn exit(status: c_int) -> !;
}

unsafe fn error(fmt: *const c_char, mut args: ...) -> ! {
    fprintf(__stderrp, b"** Error: \0".as_ptr() as *const c_char);
    let mut arg_ptr: va_list = args.as_va_list();
    vfprintf(__stderrp, fmt, arg_ptr);
    fprintf(__stderrp, b"\n\0".as_ptr() as *const c_char);
    exit(1);
}