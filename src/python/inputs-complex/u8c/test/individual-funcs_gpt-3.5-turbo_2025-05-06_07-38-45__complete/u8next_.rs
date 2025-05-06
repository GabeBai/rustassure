use std::os::raw::c_char;

fn u8next(txt: *const c_char, ch: *mut i32) -> i32 {
    let mut len = 0;
    let s = unsafe { txt as *const u8 };
    let first = unsafe { *s };
    let mut val = 0;

    if first != 0 {
        val = first as i32;
        loop {
            match unsafe { *s } {
                0x00..=0x7F => { len = 1; break; }
                0xC0 => { len = 2; break; }
                0xC1 => break,
                0xC2..=0xDF => { val &= 0x1F; len = 2; break; }
                0xE0 => { val &= 0x0F; len = 3; break; }
                0xE1..=0xEC => { val &= 0x0F; len = 3; break; }
                0xED => { val &= 0x0F; len = 3; break; }
                0xEE..=0xEF => { val &= 0x0F; len = 3; break; }
                0xF0 => { val &= 0x07; len = 4; break; }
                0xF1..=0xF3 => { val &= 0x07; len = 4; break; }
                0xF4 => { val &= 0x07; len = 4; break; }
                _ => break,
            }
        }
    }

    if !ch.is_null() {
        unsafe { *ch = val; }
    }

    len
}
