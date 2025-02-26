use std::os::raw::c_char;

fn opng_strtail(str: *const c_char, num: usize) -> *const c_char {
    let len = unsafe { libc::strlen(str) };
    if len <= num {
        return str;
    }
    unsafe { str.add(len - num) }
}
