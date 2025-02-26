use std::os::raw::c_char;
use std::ffi::CStr;

fn check_obj_option(opt: &str, opt_arg: &str) {
    if opt_arg == "all" {
        return;
    }

    let opt_arg_bytes = opt_arg.as_bytes();
    let mut i = 0;
    for &byte in opt_arg_bytes {
        if !((byte >= b'A' && byte <= b'Z') || (byte >= b'a' && byte <= b'z')) {
            break;
        }
        i += 1;
    }

    if i == 4 && opt_arg_bytes[i] == 0 {
        panic!("Manipulation of individual chunks is not implemented");
    } else {
        err_option_arg(opt, opt_arg);
    }
}

fn err_option_arg(opt: &str, opt_arg: &str) {
    // Implement your error handling logic here
}

fn main() {
    let opt = "example_opt";
    let opt_arg = "example_arg";
    check_obj_option(opt, opt_arg);
}
