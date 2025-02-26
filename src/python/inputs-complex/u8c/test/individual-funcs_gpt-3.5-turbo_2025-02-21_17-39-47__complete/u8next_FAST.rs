use std::os::raw::c_char;

fn u8next_FAST(txt: *const c_char, ch: *mut i32) -> i32 {
    let mut len = 0;
    let mut s = txt as *const u8;
    let first = unsafe { *s };
    let mut val = 0;

    if first != 0 {
        val = first as i32;
        if first > 0x7F {
            val = unsafe { *s.add(1) } as i32 & 0x3F;
            if (first & 0xF8) == 0xF0 {
                val |= (first & 0x07) << 6;
            } else if (first & 0xF0) == 0xE0 {
                val |= (first & 0x0F) << 6;
            } else {
                val |= (first & 0x1F) << 6;
            }
            // L4
            val <<= 6;
            if unsafe { *s.add(1) } != 0 {
                s = unsafe { s.add(1) };
            }
            val |= unsafe { *s } as i32 & 0x3F;
            // L3
            val <<= 6;
            if unsafe { *s.add(1) } != 0 {
                s = unsafe { s.add(1) };
            }
            val |= unsafe { *s } as i32 & 0x3F;
            // L2
        }
        len = 1 + (s as usize - txt as usize);
    }

    if !ch.is_null() {
        unsafe {
            *ch = val;
        }
    }

    len as i32
}
