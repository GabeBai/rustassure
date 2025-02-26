use std::ffi::CString;
use std::os::raw::c_char;

extern "C" {
    static mut usr_printf: Option<unsafe extern "C" fn(fmt: *const c_char, ...)>;
}

unsafe fn opng_print_fsize_ratio(difference: u64, init_size: u64) {
    // Implement the logic for printing the size ratio here
    // For example:
    let ratio = difference as f64 / init_size as f64;
    usr_printf.unwrap()(
        CString::new(format!("Ratio: {:.2}", ratio)).unwrap().as_ptr(),
    );
}

unsafe fn opng_print_fsize_difference(init_size: u64, final_size: u64, show_ratio: i32) {
    let difference: u64;
    let sign: i32;

    if init_size <= final_size {
        sign = 0;
        difference = final_size - init_size;
    } else {
        sign = 1;
        difference = init_size - final_size;
    }

    if difference == 0 {
        usr_printf.unwrap()(CString::new("no change").unwrap().as_ptr());
        return;
    }
    if difference == 1 {
        usr_printf.unwrap()(CString::new("1 byte").unwrap().as_ptr());
    } else {
        usr_printf.unwrap()(CString::new(format!("{} bytes", difference)).unwrap().as_ptr());
    }

    if show_ratio != 0 && init_size > 0 {
        usr_printf.unwrap()(CString::new(" = ").unwrap().as_ptr());
        opng_print_fsize_ratio(difference, init_size);
    }
    usr_printf.unwrap()(CString::new(if sign == 0 { " increase" } else { " decrease" }).unwrap().as_ptr());
}
