use std::ffi::CStr;
use std::os::raw::c_char;

fn check_obj_option(opt: &str, opt_arg: &CStr) {
    if opt_arg.to_bytes() == b"all\0" {
        return;
    }

    let opt_arg_bytes = opt_arg.to_bytes();
    let mut i = 0;
    while i < 4 {
        if !((opt_arg_bytes[i] >= b'A' && opt_arg_bytes[i] <= b'Z') ||
             (opt_arg_bytes[i] >= b'a' && opt_arg_bytes[i] <= b'z')) {
            break;
        }
        i += 1;
    }

    if i == 4 && opt_arg_bytes[i] == 0 {
        panic!("Manipulation of individual chunks is not implemented");
    } else {
        err_option_arg(opt, opt_arg.to_str().unwrap());
    }
}

fn err_option_arg(opt: &str, opt_arg: &str) {
    // Implement your error handling logic here
}

fn main() {
    let opt = "example";
    let opt_arg = CStr::from_bytes_with_nul(b"all\0").unwrap();
    check_obj_option(opt, &opt_arg);
}
