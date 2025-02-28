use std::ffi::CStr;

fn u8next(txt: *const i8, ch: *mut i32) -> i32 {
    let mut len = 0;
    let s = unsafe { CStr::from_ptr(txt).to_bytes() };
    let first = s[0];
    let mut val = 0;

    if !s.is_empty() {
        val = first as i32;
        'fsm: loop {
            match s[0] {
                0..=0x7F => { len = 1; break 'fsm; }
                0xC0 => {
                    len = 2;
                    val = 0;
                    if s.len() < 2 || s[1] != 0x80 { len = -1; break 'fsm; }
                    break 'fsm;
                }
                0xC1 => { len = -1; break 'fsm; }
                0xC2..=0xDF => {
                    val &= 0x1F;
                    len = 2;
                    if s.len() < 2 || s[1] < 0x80 || s[1] > 0xBF { len = -1; break 'fsm; }
                    val = (val << 6) | (s[1] & 0x3F) as i32;
                    break 'fsm;
                }
                0xE0 => {
                    val &= 0x0F;
                    len = 3;
                    if s.len() < 3 || s[1] < 0xA0 || s[1] > 0xBF || s[2] < 0x80 || s[2] > 0xBF { len = -1; break 'fsm; }
                    val = (val << 12) | ((s[1] & 0x3F) as i32) << 6 | (s[2] & 0x3F) as i32;
                    break 'fsm;
                }
                0xE1..=0xEC | 0xEE..=0xEF => {
                    val &= 0x0F;
                    len = 3;
                    if s.len() < 3 || s[1] < 0x80 || s[1] > 0xBF || s[2] < 0x80 || s[2] > 0xBF { len = -1; break 'fsm; }
                    val = (val << 12) | ((s[1] & 0x3F) as i32) << 6 | (s[2] & 0x3F) as i32;
                    break 'fsm;
                }
                0xED => {
                    val &= 0x0F;
                    len = 3;
                    if s.len() < 3 || s[1] < 0x80 || s[1] > 0x9F || s[2] < 0x80 || s[2] > 0xBF { len = -1; break 'fsm; }
                    val = (val << 12) | ((s[1] & 0x3F) as i32) << 6 | (s[2] & 0x3F) as i32;
                    break 'fsm;
                }
                0xF0 => {
                    val &= 0x07;
                    len = 4;
                    if s.len() < 4 || s[1] < 0x90 || s[1] > 0xBF || s[2] < 0x80 || s[2] > 0xBF || s[3] < 0x80 || s[3] > 0xBF { len = -1; break 'fsm; }
                    val = (val << 18) | ((s[1] & 0x3F) as i32) << 12 | ((s[2] & 0x3F) as i32) << 6 | (s[3] & 0x3F) as i32;
                    break 'fsm;
                }
                0xF1..=0xF3 => {
                    val &= 0x07;
                    len = 4;
                    if s.len() < 4 || s[1] < 0x80 || s[1] > 0xBF || s[2] < 0x80 || s[2] > 0xBF || s[3] < 0x80 || s[3] > 0xBF { len = -1; break 'fsm; }
                    val = (val << 18) | ((s[1] & 0x3F) as i32) << 12 | ((s[2] & 0x3F) as i32) << 6 | (s[3] & 0x3F) as i32;
                    break 'fsm;
                }
                0xF4 => {
                    val &= 0x07;
                    len = 4;
                    if s.len() < 4 || s[1] < 0x80 || s[1] > 0x8F || s[2] < 0x80 || s[2] > 0xBF || s[3] < 0x80 || s[3] > 0xBF { len = -1; break 'fsm; }
                    val = (val << 18) | ((s[1] & 0x3F) as i32) << 12 | ((s[2] & 0x3F) as i32) << 6 | (s[3] & 0x3F) as i32;
                    break 'fsm;
                }
                _ => { len = -1; break 'fsm; }
            }
        }
    }

    if !ch.is_null() {
        unsafe { *ch = val; }
    }
    len
}