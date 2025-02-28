use std::ffi::c_void;
use std::os::raw::{c_char, c_int};

static mut USR_PRINTF: Option<unsafe extern "C" fn(*const c_char, ...)> = None;
static mut USR_PRINT_CNTRL: Option<unsafe extern "C" fn(c_int)> = None;

unsafe fn opng_print_error(msg: *const c_char) {
    if let Some(print_cntrl) = USR_PRINT_CNTRL {
        print_cntrl(b'\x0b' as c_int);
    }
    if let Some(printf) = USR_PRINTF {
        printf(b"Error: %s\n\0".as_ptr() as *const c_char, msg);
    }
}