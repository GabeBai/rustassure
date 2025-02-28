use std::ffi::CStr;

fn err_option_arg(opt: *const i8, opt_arg: *const i8) {
    unsafe {
        if opt_arg.is_null() || CStr::from_ptr(opng_strltrim(opt_arg)).to_bytes().is_empty() {
            error("Missing argument for option %s", opt);
        } else {
            error("Invalid argument for option %s: %s", opt, opt_arg);
        }
    }
}