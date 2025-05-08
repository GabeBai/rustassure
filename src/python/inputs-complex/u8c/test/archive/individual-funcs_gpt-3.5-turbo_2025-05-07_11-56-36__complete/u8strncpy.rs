use std::os::raw::c_char;

extern "C" {
    fn strncpy(dest: *mut c_char, src: *const c_char, n: usize) -> *mut c_char;
}

fn u8strncpy(dest: *mut c_char, src: *const c_char, n: usize) -> *mut c_char {
    let k = n - 1;
    let mut i;
    if n > 0 {
        unsafe {
            dest.add(k).write(0);
            strncpy(dest, src, n);
            if *dest.add(k) & 0x80 != 0 {
                i = k;
                while i > 0 && (k - i) < 3 && (*dest.add(i) & 0xC0) == 0x80 {
                    i -= 1;
                }
                match k - i {
                    0 => dest.add(i).write(0),
                    1 => {
                        if (*dest.add(i) & 0xE0) != 0xC0 {
                            dest.add(i).write(0);
                        }
                    }
                    2 => {
                        if (*dest.add(i) & 0xF0) != 0xE0 {
                            dest.add(i).write(0);
                        }
                    }
                    3 => {
                        if (*dest.add(i) & 0xF8) != 0xF0 {
                            dest.add(i).write(0);
                        }
                    }
                    _ => {}
                }
            }
        }
    }
    dest
}
