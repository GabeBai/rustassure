use std::ffi::CString;
use std::os::raw::c_char;
use std::ptr;

fn opng_snprintf_impl(buffer: &mut [c_char], buffer_size: usize, format: &str, args: &[&str]) -> i32 {
    // Create a CString from the format string
    let format_cstr = CString::new(format).expect("CString::new failed");
    
    // Prepare the formatted string
    let formatted_string = format_args(format_cstr.to_str().unwrap(), args);
    
    // Copy the formatted string into the buffer
    let bytes = formatted_string.as_bytes();
    let len = bytes.len();
    
    if len >= buffer_size {
        if buffer_size > 0 {
            buffer[buffer_size - 1] = 0; // Null-terminate
        }
        return -1;
    }
    
    // Copy the bytes into the buffer
    for (i, &byte) in bytes.iter().enumerate() {
        buffer[i] = byte as c_char; // Convert u8 to c_char (i8)
    }
    
    // Null-terminate the string
    if buffer_size > 0 {
        buffer[len] = 0; // Null-terminate
    }
    
    len as i32 // Return the length of the formatted string
}

// Helper function to format the string with arguments
fn format_args(format: &str, args: &[&str]) -> String {
    // This is a simple implementation; you may want to use a more robust formatting approach
    let mut formatted = format.to_string();
    for (i, arg) in args.iter().enumerate() {
        formatted = formatted.replace(&format!("{{{}}}", i), arg);
    }
    formatted
}
