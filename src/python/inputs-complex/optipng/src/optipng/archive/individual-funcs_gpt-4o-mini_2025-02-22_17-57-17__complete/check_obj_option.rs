use std::ffi::CStr;
use std::os::raw::c_char;
use std::ptr;

fn error(message: &str) {
    // Handle the error, e.g., print it or log it
    eprintln!("{}", message);
}

fn err_option_arg(opt: &str, opt_arg: *const c_char) {
    // Handle the option argument, e.g., print it or log it
    let opt_arg_str = unsafe { CStr::from_ptr(opt_arg).to_string_lossy() };
    eprintln!("Option: {}, Argument: {}", opt, opt_arg_str);
}

fn check_obj_option(opt: &str, opt_arg: *const c_char) {
    let opt_arg_str = unsafe { CStr::from_ptr(opt_arg).to_string_lossy() };
    let opt_arg = opt_arg_str.as_ref();

    if opt_arg == "all" {
        return;
    }

    let mut i = 0;
    for c in opt_arg.chars() {
        if !c.is_ascii_alphabetic() {
            break;
        }
        i += 1;
    }

    if i == 4 && opt_arg.chars().nth(i).is_none() {
        error("Manipulation of individual chunks is not implemented");
    } else {
        err_option_arg(opt, opt_arg.as_ptr() as *const c_char);
    }
}
