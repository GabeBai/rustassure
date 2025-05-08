use std::os::raw::{c_int, c_char};
use std::io::{self, Write};

extern "C" {
    fn vfprintf(stream: *mut std::ffi::c_void, format: *const c_char, ...) -> c_int;
}

fn vprintf(format: &str, args: &[&str]) -> c_int {
    let formatted_string = format_args(format, args);
    let c_format = std::ffi::CString::new(formatted_string).expect("Failed to convert format string to CString");
    
    unsafe {
        vfprintf(io::stdout().as_raw_fd() as *mut std::ffi::c_void, c_format.as_ptr());
    }
}

fn format_args(format: &str, args: &[&str]) -> String {
    let mut formatted_string = String::new();
    let mut arg_iter = args.iter();

    for c in format.chars() {
        match c {
            '%' => {
                if let Some(arg) = arg_iter.next() {
                    formatted_string.push_str(arg);
                } else {
                    panic!("Not enough arguments provided for format string");
                }
            }
            _ => formatted_string.push(c),
        }
    }

    formatted_string
}

fn main() {
    let name = "Alice";
    vprintf("Hello, %s!\n", &[name]);
}
