use std::os::raw::c_char;

static mut USR_PRINTF: Option<unsafe extern "C" fn(*const c_char, ...)> = None;

type osys_fsize_t = u64;

unsafe fn opng_print_fsize_difference(init_size: osys_fsize_t, final_size: osys_fsize_t, show_ratio: bool) {
    let difference: osys_fsize_t;
    let sign: i32;
    
    if init_size <= final_size {
        sign = 0;
        difference = final_size - init_size;
    } else {
        sign = 1;
        difference = init_size - final_size;
    }
    
    if difference == 0 {
        (USR_PRINTF.expect("usr_printf is not set"))("no change\0".as_ptr() as *const c_char);
        return;
    }
    
    if difference == 1 {
        (USR_PRINTF.expect("usr_printf is not set"))("1 byte\0".as_ptr() as *const c_char);
    } else {
        (USR_PRINTF.expect("usr_printf is not set"))(format!("{} bytes\0", difference).as_ptr() as *const c_char);
    }
    
    if show_ratio && init_size > 0 {
        (USR_PRINTF.expect("usr_printf is not set"))(" = \0".as_ptr() as *const c_char);
        // opng_print_fsize_ratio(difference, init_size); // You need to implement this function
    }
    
    (USR_PRINTF.expect("usr_printf is not set"))(if sign == 0 { " increase\0" } else { " decrease\0" }.as_ptr() as *const c_char);
}
