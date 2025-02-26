use std::os::raw::c_char;
use std::ffi::CStr;

fn check_power2_option(opt: *const c_char, opt_arg: *const c_char, lowest: i32, highest: i32) -> i32 {
    let opt_arg_str = unsafe { CStr::from_ptr(opt_arg).to_str().unwrap() };
    let value = match opt_arg_str.parse::<u64>() {
        Ok(v) => v,
        Err(_) => {
            err_option_arg(opt, opt_arg);
            return -1;
        }
    };

    let lowest = lowest.max(0);
    let highest = highest.min((std::mem::size_of::<usize>() * 8 - 2) as i32);

    for result in lowest..=highest {
        if (1u64 << result) == value {
            return result;
        }
    }

    err_option_arg(opt, opt_arg);
    -1
}

fn err_option_arg(opt: *const c_char, opt_arg: *const c_char) {
    // This function is not defined in the provided C code,
    // so we leave it as an external function call.
    unsafe {
        err_option_arg(opt, opt_arg);
    }
}