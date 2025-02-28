use std::ffi::c_void;

fn opng_strpbrk_digit(str: *const i8) -> *mut i8 {
    let mut current = str;

    loop {
        if unsafe { *current } == 0 {
            return std::ptr::null_mut();
        }
        if unsafe { (*current as u8).is_ascii_digit() } {
            return current as *mut i8;
        }
        current = unsafe { current.add(1) };
    }
}
