use std::os::raw::{c_char, c_int};

#[repr(C)]
pub struct timespec {
    tv_sec: i64,
    tv_nsec: i64,
}

static mut USR_PRINTF: Option<extern "C" fn(*const c_char, ...) -> ()> = None;
static mut USR_PRINT_CNTRL: Option<extern "C" fn(c_int)> = None;

fn opng_print_error(msg: *const c_char) {
    unsafe {
        if let Some(usr_print_cntrl) = USR_PRINT_CNTRL {
            usr_print_cntrl('\x0b' as c_int);
        }
        if let Some(usr_printf) = USR_PRINTF {
            usr_printf(b"Error: %s\n\0".as_ptr() as *const c_char, msg);
        }
    }
}
