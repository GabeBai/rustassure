use std::ffi::CString;
use std::os::raw::c_char;

extern "C" {
    fn vprintf(format: *const c_char, args: *mut std::ffi::VaList);
}

pub fn safe_vprintf(format: &str, args: &[&str]) {
    // Create a CString from the format string
    let c_format = CString::new(format).expect("CString::new failed");
    
    // Use format! to create the final string
    let formatted_string = format!("{}", c_format.to_str().unwrap());
    
    // Print the formatted string
    println!("{}", formatted_string);
}

fn main() {
    let format = "Hello, {}!";
    let args = ["world"];
    safe_vprintf(format, &args);
}
