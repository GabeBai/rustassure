use std::os::raw::c_char;

fn u8next_FAST(txt: *const c_char, ch: *mut i32) -> i32 {
    let mut len = 0;
    let s = txt as *const u8;
    let first = unsafe { *s };
    let mut val = 0;

    if first != 0 {
        val = first as i32;
        if first > 0x7F {
            let mut s = s.add(1);
            val = (*s & 0x3F) as i32;
            if (first & 0xF8) == 0xF0 {
                val |= (first & 0x07) << 6;
                goto_L4: val <<= 6;
                if unsafe { *s } != 0 {
                    s = s.add(1);
                }
                val |= (*s & 0x3F) as i32;
            } else if (first & 0xF0) == 0xE0 {
                val |= (first & 0x0F) << 6;
                goto_L3: val <<= 6;
                if unsafe { *s } != 0 {
                    s = s.add(1);
                }
                val |= (*s & 0x3F) as i32;
            } else {
                val |= (first & 0x1F) << 6;
                goto_L2: {}
            }
        }
        len = 1 + (s as usize - txt as usize) as i32;
    }

    if !ch.is_null() {
        unsafe {
            *ch = val;
        }
    }

    len
}
