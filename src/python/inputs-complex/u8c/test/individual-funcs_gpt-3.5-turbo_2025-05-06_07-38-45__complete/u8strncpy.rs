use std::os::raw::c_char;

extern "C" {
    fn strncpy(dest: *mut c_char, src: *const c_char, n: usize) -> *mut c_char;
}

fn u8strncpy(dest: &mut [u8], src: &[u8], n: usize) -> &mut [u8] {
    let k = n - 1;
    if n > 0 {
        dest[k] = 0;
        unsafe {
            strncpy(dest.as_mut_ptr() as *mut c_char, src.as_ptr() as *const c_char, n);
        }
        if dest[k] & 0x80 != 0 {
            let mut i = k;
            while i > 0 && (k - i) < 3 && (dest[i] & 0xC0) == 0x80 {
                i -= 1;
            }
            match k - i {
                0 => dest[i] = 0,
                1 => {
                    if (dest[i] & 0xE0) != 0xC0 {
                        dest[i] = 0;
                    }
                }
                2 => {
                    if (dest[i] & 0xF0) != 0xE0 {
                        dest[i] = 0;
                    }
                }
                3 => {
                    if (dest[i] & 0xF8) != 0xF0 {
                        dest[i] = 0;
                    }
                }
                _ => {}
            }
        }
    }
    dest
}
