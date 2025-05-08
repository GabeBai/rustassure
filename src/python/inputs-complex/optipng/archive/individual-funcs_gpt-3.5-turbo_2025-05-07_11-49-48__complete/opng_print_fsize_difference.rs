use std::os::raw::c_char;

extern "C" {
    fn usr_printf(fmt: *const c_char, ...);
}

type osys_fsize_t = u64;

fn opng_print_fsize_difference(init_size: osys_fsize_t, final_size: osys_fsize_t, show_ratio: bool) {
    let mut difference: osys_fsize_t;
    let mut sign: i32;

    if init_size <= final_size {
        sign = 0;
        difference = final_size - init_size;
    } else {
        sign = 1;
        difference = init_size - final_size;
    }

    if difference == 0 {
        unsafe { usr_printf("no change\0".as_ptr() as *const c_char); }
        return;
    }

    if difference == 1 {
        unsafe { usr_printf("1 byte\0".as_ptr() as *const c_char); }
    } else {
        unsafe { usr_printf(format!("{} bytes\0", difference).as_ptr() as *const c_char); }
    }

    if show_ratio && init_size > 0 {
        unsafe { usr_printf(" = \0".as_ptr() as *const c_char); }
        // opng_print_fsize_ratio(difference, init_size); // You need to implement this function
    }

    unsafe { usr_printf(if sign == 0 { " increase\0".as_ptr() } else { " decrease\0".as_ptr() } as *const c_char); }
}
