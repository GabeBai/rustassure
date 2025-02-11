#![allow(unaligned_references)]
#[no_mangle]
#[no_mangle]
fn opng_strpbrk_digit(mut str: *const u8) -> *mut u8 {
    unsafe {
        loop {
            if *str == 0 {
                return std::ptr::null_mut();
            }
            if (*str as char).is_ascii_digit() {
                return str as *mut u8;
            }
            str = str.add(1);
        }
    }
}
