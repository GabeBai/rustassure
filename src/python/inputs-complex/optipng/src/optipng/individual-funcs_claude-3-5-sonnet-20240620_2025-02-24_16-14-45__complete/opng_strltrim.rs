use std::ffi::CStr;

fn opng_strltrim(str: *const i8) -> *mut i8 {
    unsafe {
        let mut ptr = str;
        while ptr.read().is_ascii_whitespace() {
            ptr = ptr.add(1);
        }
        ptr as *mut i8
    }
}