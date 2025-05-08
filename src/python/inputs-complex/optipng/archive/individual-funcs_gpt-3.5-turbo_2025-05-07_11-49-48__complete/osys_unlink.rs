use std::os::raw::{c_char, c_long};

extern "C" {
    fn remove(filename: *const c_char) -> c_long;
}

pub fn osys_unlink(path: *const c_char) -> c_long {
    unsafe { remove(path) }
}
