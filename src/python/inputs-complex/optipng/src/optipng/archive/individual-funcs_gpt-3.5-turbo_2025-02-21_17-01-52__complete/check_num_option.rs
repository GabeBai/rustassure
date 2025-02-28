use std::os::raw::{c_char, c_int};
use std::ffi::CString;

fn check_num_option(opt: *const c_char, opt_arg: *const c_char, lowest: c_int, highest: c_int) -> c_int {
    let opt_arg_str = unsafe { CString::from_raw(opt_arg as *mut i8) };
    let opt_arg_cstr = opt_arg_str.to_str().unwrap();
    
    let value: u64 = opt_arg_cstr.parse().unwrap_or_else(|_| {
        err_option_arg(opt, opt_arg);
        0
    });

    if value > 2147483647 || value as c_int < lowest || value as c_int > highest {
        err_option_arg(opt, opt_arg);
    }

    value as c_int
}

fn err_option_arg(opt: *const c_char, opt_arg: *const c_char) {
    // Implement your error handling logic here
}

fn main() {
    // Example usage
    let opt = CString::new("example_option").unwrap().into_raw();
    let opt_arg = CString::new("42").unwrap().into_raw();
    let lowest = 0;
    let highest = 100;

    let result = check_num_option(opt, opt_arg, lowest, highest);
    println!("Result: {}", result);

    // Don't forget to free the memory allocated for CString if necessary
}
