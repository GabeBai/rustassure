use std::ffi::c_void;

static mut USR_PRINTF: Option<unsafe extern "C" fn(*const i8, ...)> = None;

fn opng_print_fsize_difference(init_size: u64, final_size: u64, show_ratio: i32) {
    let (difference, sign) = if init_size <= final_size {
        (final_size - init_size, 0)
    } else {
        (init_size - final_size, 1)
    };

    if difference == 0 {
        unsafe {
            if let Some(printf) = USR_PRINTF {
                printf(b"no change\0".as_ptr() as *const i8);
            }
        }
        return;
    }

    unsafe {
        if let Some(printf) = USR_PRINTF {
            if difference == 1 {
                printf(b"1 byte\0".as_ptr() as *const i8);
            } else {
                printf(b"%lu bytes\0".as_ptr() as *const i8, difference);
            }

            if show_ratio != 0 && init_size > 0 {
                printf(b" = \0".as_ptr() as *const i8);
                opng_print_fsize_ratio(difference, init_size);
            }

            printf(if sign == 0 {
                b" increase\0".as_ptr() as *const i8
            } else {
                b" decrease\0".as_ptr() as *const i8
            });
        }
    }
}