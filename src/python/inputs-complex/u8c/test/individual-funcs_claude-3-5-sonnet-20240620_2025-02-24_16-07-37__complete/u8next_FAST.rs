use std::ffi::c_char;

#[no_mangle]
pub unsafe extern "C" fn u8next_FAST(txt: *const c_char, ch: *mut i32) -> i32 {
    let mut len = 0;
    let mut s = txt as *const u8;
    let first = *s;
    let mut val = 0;

    if first != 0 {
        val = first as i32;
        if first > 0x7F {
            s = s.add(1);
            val = (*s & 0x3F) as i32;
            if (first & 0xF8) == 0xF0 {
                val |= (first as i32 & 0x07) << 6;
                s = s.add(1);
                val = (val << 6) | (*s & 0x3F) as i32;
                s = s.add(1);
                val = (val << 6) | (*s & 0x3F) as i32;
            } else if (first & 0xF0) == 0xE0 {
                val |= (first as i32 & 0x0F) << 6;
                s = s.add(1);
                val = (val << 6) | (*s & 0x3F) as i32;
            } else {
                val |= (first as i32 & 0x1F) << 6;
            }
        }
        len = 1 + (s as usize - txt as usize) as i32;
    }

    if !ch.is_null() {
        *ch = val;
    }

    len
}