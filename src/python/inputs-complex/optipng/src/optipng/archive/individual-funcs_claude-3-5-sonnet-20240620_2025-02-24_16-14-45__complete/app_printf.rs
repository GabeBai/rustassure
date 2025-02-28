use std::ffi::c_void;
use std::os::raw::c_char;
use std::ptr::null_mut;
use libc::{FILE, va_list};

static mut CON_FILE: *mut FILE = null_mut();
static mut LOG_FILE: *mut FILE = null_mut();
static mut START_OF_LINE: i32 = 0;

unsafe fn app_printf(fmt: *const c_char, mut args: ...) {
    if *fmt == 0 {
        return;
    }
    
    START_OF_LINE = if *fmt.add(libc::strlen(fmt) - 1) as u8 == b'\n' { 1 } else { 0 };
    
    if !CON_FILE.is_null() {
        libc::vfprintf(CON_FILE, fmt, args.as_va_list());
    }
    
    if !LOG_FILE.is_null() {
        libc::vfprintf(LOG_FILE, fmt, args.as_va_list());
    }
}