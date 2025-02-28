#![allow(unaligned_references)]
use std::ffi::CStr;
use std::os::raw::c_char;

// Define the function pointers with the correct calling convention
static mut USR_PRINTF: Option<extern "C" fn(fmt: *const c_char, ...)> = None;
static mut USR_PRINT_CNTRL: Option<extern "C" fn(cntrl_code: i32)> = None;

// Function to print a warning message
#[no_mangle]
#[no_mangle]
fn opng_print_warning(msg: &str) {
    unsafe {
        if let Some(print_cntrl) = USR_PRINT_CNTRL {
            print_cntrl(b'\x0B' as i32); // '\v' is vertical tab
        }
        if let Some(printf) = USR_PRINTF {
            let c_msg = std::ffi::CString::new(format!("Warning: {}\n", msg)).unwrap();
            printf(c_msg.as_ptr());
        }
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    unsafe {
        // Assign function pointers here if needed
        // USR_PRINTF = Some(your_printf_function);
        // USR_PRINT_CNTRL = Some(your_print_cntrl_function);
    }

    opng_print_warning("This is a test warning.");
}
