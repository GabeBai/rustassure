use std::ffi::CStr;
use std::io::{self, Write};
use std::os::raw::c_char;

fn error(fmt: &str, args: std::fmt::Arguments) {
    let stderr = io::stderr();
    let mut handle = stderr.lock();
    
    // Print the error message
    let _ = writeln!(handle, "** Error: {}", fmt);
    let _ = writeln!(handle, "{}", args);
    
    // Exit the program with an error code
    std::process::exit(1);
}

// A wrapper function to handle formatting
fn error_with_format(fmt: *const c_char, args: std::fmt::Arguments) {
    let c_str = unsafe { CStr::from_ptr(fmt) };
    let fmt_str = c_str.to_string_lossy();
    error(fmt_str.as_ref(), args);
}

// Example usage
fn main() {
    // Example of how to call the error function
    error("An example error occurred: {}", std::format_args!("Some details"));
}
