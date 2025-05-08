use std::os::raw::c_char;

extern "C" {
    pub fn strlen(s: *const c_char) -> usize;
}

fn opng_strtail(str: *const c_char, num: usize) -> *const c_char {
    let len = unsafe { strlen(str) };
    if len <= num {
        return str;
    }
    unsafe { str.add(len - num) }
}
