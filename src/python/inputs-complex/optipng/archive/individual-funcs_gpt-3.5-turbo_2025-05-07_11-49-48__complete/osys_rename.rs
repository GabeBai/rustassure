use std::os::raw::c_char;

extern {
    fn rename(__old: *const c_char, __new: *const c_char) -> i32;
    fn access(__name: *const c_char, __type: i32) -> i32;
}

pub fn osys_rename(src_path: *const c_char, dest_path: *const c_char, clobber: i32) -> i32 {
    if clobber == 0 {
        if unsafe { access(dest_path, 0) } >= 0 {
            return -1;
        }
    }
    unsafe { rename(src_path, dest_path) }
}