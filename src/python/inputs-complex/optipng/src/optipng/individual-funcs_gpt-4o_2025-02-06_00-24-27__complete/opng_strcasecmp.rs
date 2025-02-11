#![allow(unaligned_references)]
#[no_mangle]
#[no_mangle]
fn opng_strcasecmp(str1: *const u8, str2: *const u8) -> i32 {
    unsafe {
        let mut str1 = str1;
        let mut str2 = str2;

        loop {
            let ch1 = (*str1).to_ascii_lowercase();
            let ch2 = (*str2).to_ascii_lowercase();

            if ch1 != ch2 {
                return ch1 as i32 - ch2 as i32;
            }
            if ch1 == 0 {
                return 0;
            }

            str1 = str1.add(1);
            str2 = str2.add(1);
        }
    }
}
