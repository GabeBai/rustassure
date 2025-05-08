use std::os::raw::c_char;

extern "C" {
    fn usr_print_cntrl(cntrl_code: i32);
    fn usr_printf(fmt: *const c_char, ...);
}

fn opng_print_warning(msg: *const c_char) {
    unsafe {
        usr_print_cntrl('\x0B' as i32); // '\v' in C is equivalent to ASCII code 11 which is '\x0B' in Rust
        usr_printf("Warning: %s\n\0".as_ptr() as *const c_char, msg);
    }
}
