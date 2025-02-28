use std::os::raw::c_char;
use std::ptr;

#[no_mangle]
pub unsafe extern "C" fn u8strncpy(dest: *mut c_char, src: *const c_char, n: usize) -> *mut c_char {
    if n > 0 {
        let k = n - 1;
        ptr::copy_nonoverlapping(src, dest, n);
        *dest.add(k) = 0;

        if (*dest.add(k) as u8) & 0x80 != 0 {
            let mut i = k;
            while i > 0 && (k - i) < 3 && (*dest.add(i) as u8 & 0xC0) == 0x80 {
                i -= 1;
            }
            match k - i {
                0 => *dest.add(i) = 0,
                1 => if (*dest.add(i) as u8 & 0xE0) != 0xC0 { *dest.add(i) = 0 },
                2 => if (*dest.add(i) as u8 & 0xF0) != 0xE0 { *dest.add(i) = 0 },
                3 => if (*dest.add(i) as u8 & 0xF8) != 0xF0 { *dest.add(i) = 0 },
                _ => {}
            }
        }
    }
    dest
}