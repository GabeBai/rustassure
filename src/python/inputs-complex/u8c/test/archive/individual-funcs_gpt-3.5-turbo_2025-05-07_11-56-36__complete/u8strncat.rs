use std::os::raw::c_char;

extern {
    fn u8strncpy(dest: *mut c_char, src: *const c_char, n: usize) -> *mut c_char;
}

pub fn u8strncat(dest: *mut c_char, src: *const c_char, n: usize) -> *mut c_char {
    let mut d = dest;
    while unsafe { *d != 0 } {
        d = unsafe { d.add(1) };
    }
    unsafe { u8strncpy(d, src, n) };
    unsafe { *d.add(n) = b'\0' as c_char };
    dest
}