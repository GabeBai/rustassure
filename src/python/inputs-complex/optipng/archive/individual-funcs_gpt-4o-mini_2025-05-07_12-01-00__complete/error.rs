use std::ffi::CString;
use std::io::{self, Write};
use std::process;

fn error(fmt: &str, args: std::fmt::Arguments) {
    let stderr = io::stderr();
    let mut handle = stderr.lock();
    
    // Write the error message to stderr
    let _ = writeln!(handle, "** Error: {}", fmt);
    let _ = handle.write_fmt(args);
    let _ = writeln!(handle);
    
    // Exit the program with status code 1
    process::exit(1);
}

// A wrapper function to handle formatting
pub fn error_with_format(fmt: &str, args: std::fmt::Arguments) {
    error(fmt, args);
}

// Example usage
fn main() {
    let error_message = "An error occurred: {}";
    let error_detail = "File not found";
    
    // Call the error function with formatted arguments
    error_with_format(error_message, format_args!("{}", error_detail));
}
