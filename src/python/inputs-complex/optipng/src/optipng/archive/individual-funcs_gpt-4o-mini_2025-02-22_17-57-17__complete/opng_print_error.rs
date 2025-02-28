use std::ffi::CStr;
use std::os::raw::c_char;

static mut usr_printf: Option<extern "C" fn(*const c_char, ...) -> i32> = None;
static mut usr_print_cntrl: Option<extern "C" fn(i32)> = None;

unsafe fn opng_print_error(msg: *const c_char) {
    if let Some(print_cntrl) = usr_print_cntrl {
        print_cntrl('\u{000B}' as i32); // '\v' is vertical tab
    }
    if let Some(printf) = usr_printf {
        printf(CStr::from_ptr("Error: %s\n\0".as_ptr() as *const c_char), msg);
    }
}

// Example usage of the function
fn main() {
    unsafe {
        // Set usr_printf and usr_print_cntrl to point to actual functions
        // For example:
        // usr_printf = Some(your_printf_function);
        // usr_print_cntrl = Some(your_print_cntrl_function);
        
        // Call opng_print_error with a message
        let error_message = CStr::from_bytes_with_nul(b"An error occurred\0").unwrap();
        opng_print_error(error_message.as_ptr());
    }
}
