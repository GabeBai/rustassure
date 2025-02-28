use std::ffi::CStr;
use std::os::raw::c_char;
use std::ptr;

fn u8next_(txt: *const c_char, ch: &mut i32) -> usize {
    let slice = unsafe { CStr::from_ptr(txt).to_bytes() };
    let mut idx = 0;
    let len = slice.len();

    if idx < len {
        let first_byte = slice[idx];
        if first_byte < 0x80 {
            *ch = first_byte as i32;
            idx += 1;
        } else if first_byte < 0xe0 {
            *ch = ((first_byte & 0x1f) as i32) << 6 | (slice[idx + 1] & 0x3f) as i32;
            idx += 2;
        } else if first_byte < 0xf0 {
            *ch = ((first_byte & 0x0f) as i32) << 12 | ((slice[idx + 1] & 0x3f) as i32) << 6 | (slice[idx + 2] & 0x3f) as i32;
            idx += 3;
        } else {
            *ch = ((first_byte & 0x07) as i32) << 18 | ((slice[idx + 1] & 0x3f) as i32) << 12 | ((slice[idx + 2] & 0x3f) as i32) << 6 | (slice[idx + 3] & 0x3f) as i32;
            idx += 4;
        }
    }

    idx
}

fn u8encode_(ch: i32, s: &mut [u8]) -> usize {
    let mut len = 0;

    if ch < 0x80 {
        s[len] = ch as u8;
        len += 1;
    } else if ch < 0x800 {
        s[len] = 0xc0 | (ch >> 6) as u8;
        s[len + 1] = 0x80 | (ch & 0x3f) as u8;
        len += 2;
    } else if ch < 0x10000 {
        s[len] = 0xe0 | (ch >> 12) as u8;
        s[len + 1] = 0x80 | ((ch >> 6) & 0x3f) as u8;
        s[len + 2] = 0x80 | (ch & 0x3f) as u8;
        len += 3;
    } else {
        s[len] = 0xf0 | (ch >> 18) as u8;
        s[len + 1] = 0x80 | ((ch >> 12) & 0x3f) as u8;
        s[len + 2] = 0x80 | ((ch >> 6) & 0x3f) as u8;
        s[len + 3] = 0x80 | (ch & 0x3f) as u8;
        len += 4;
    }

    len
}

fn main() {
    let s = ["Aa", "èa", "会員", "𧀀𧀍"];
    let mut buf = [0u8; 8];

    for (k, &s1) in s.iter().enumerate() {
        let mut c = 0;
        let l = u8next_(s1.as_ptr() as *const c_char, &mut c);
        
        assert!(l == k + 1, "Expected length: {}, got {}", k + 1, l);
        
        let l2 = u8encode_(c, &mut buf);
        
        assert!(l == l2, "Length should be {}, got {}", l, l2);
        
        let s1_bytes = s1.as_bytes();
        assert!(s1_bytes[..l] == buf[..l], "Encoding error");
        
        assert!(buf[l] == 0, "Encoding not 0 terminated!");
    }
}
