use std::os::raw::c_char;

extern "C" {
    fn tolower(c: c_char) -> c_char;
}

fn opng_strcasecmp(str1: *const c_char, str2: *const c_char) -> i32 {
    let mut ch1;
    let mut ch2;
    
    unsafe {
        let mut ptr1 = str1;
        let mut ptr2 = str2;
        
        loop {
            ch1 = tolower(*ptr1);
            ch2 = tolower(*ptr2);
            
            if ch1 != ch2 {
                return (ch1 - ch2) as i32;
            }
            
            if ch1 == 0 {
                return 0;
            }
            
            ptr1 = ptr1.offset(1);
            ptr2 = ptr2.offset(1);
        }
    }
}
