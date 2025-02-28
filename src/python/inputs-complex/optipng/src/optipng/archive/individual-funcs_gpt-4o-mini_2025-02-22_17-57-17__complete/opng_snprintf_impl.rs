use std::ffi::CStr;
use std::os::raw::c_char;
use std::ptr;

fn opng_snprintf_impl(buffer: *mut c_char, buffer_size: usize, format: *const c_char, args: &[&str]) -> i32 {
    // Safety: Ensure the buffer is valid and the format string is valid
    if buffer.is_null() || format.is_null() || buffer_size == 0 {
        return -1;
    }

    // Convert the C string to a Rust string
    let format_str = unsafe { CStr::from_ptr(format).to_string_lossy() };

    // Create a formatted string using the provided arguments
    let formatted = match format_str.find("{}") {
        Some(pos) => {
            let mut result = format_str[..pos].to_string();
            for arg in args {
                result.push_str(arg);
            }
            result.push_str(&format_str[pos + 2..]); // Append the rest of the format string
            result
        }
        None => format_str.to_string(),
    };

    // Copy the formatted string to the buffer
    let bytes = formatted.as_bytes();
    let len = bytes.len().min(buffer_size - 1); // Leave space for null terminator

    unsafe {
        ptr::copy_nonoverlapping(bytes.as_ptr(), buffer as *mut u8, len);
        *buffer.add(len) = 0; // Null-terminate the string
    }

    len as i32 // Return the number of bytes written
}
