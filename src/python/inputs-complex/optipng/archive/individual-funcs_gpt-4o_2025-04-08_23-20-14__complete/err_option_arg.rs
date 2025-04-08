use std::ffi::CStr;
use std::ptr;
use std::str;

fn opng_strltrim(s: *const i8) -> *const i8 {
    if s.is_null() {
        return s;
    }

    unsafe {
        let c_str = CStr::from_ptr(s);
        let str_slice = c_str.to_str().unwrap_or("");
        let trimmed = str_slice.trim_start();
        trimmed.as_ptr() as *const i8
    }
}

fn error(message: &str, opt: &str, opt_arg: Option<&str>) {
    match opt_arg {
        Some(arg) => eprintln!("{}: {}: {}", message, opt, arg),
        None => eprintln!("{}: {}", message, opt),
    }
}

fn err_option_arg(opt: &str, opt_arg: *const i8) {
    if opt_arg.is_null() || unsafe { *opng_strltrim(opt_arg) } == 0 {
        error("Missing argument for option", opt, None);
    } else {
        let opt_arg_str = unsafe { CStr::from_ptr(opt_arg).to_str().unwrap_or("") };
        error("Invalid argument for option", opt, Some(opt_arg_str));
    }
}

fn main() {
    // Example usage
    let opt = "-o";
    let opt_arg: *const i8 = ptr::null();
    err_option_arg(opt, opt_arg);
}
