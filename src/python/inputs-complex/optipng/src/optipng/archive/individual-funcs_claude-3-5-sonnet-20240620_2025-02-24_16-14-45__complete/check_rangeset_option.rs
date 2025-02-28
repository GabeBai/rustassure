use std::ffi::CStr;

fn check_rangeset_option(opt: *const i8, opt_arg: *const i8, result_mask: u32) -> u32 {
    let mut result: u32;
    
    unsafe {
        let opt_arg_cstr = CStr::from_ptr(opt_arg);
        if opng_rangeset2bitset(&mut result, opt_arg_cstr.to_str().unwrap()) == 0 {
            result &= result_mask;
        } else {
            result = 0;
        }
    }
    
    if result == 0 {
        unsafe {
            err_option_arg(opt, opt_arg);
        }
    }
    
    result
}