use std::ffi::CStr;
use std::os::raw::c_char;

#[no_mangle]
pub extern "C" fn atoll(nptr: *const c_char) -> i64 {
    unsafe {
        if nptr.is_null() {
            return 0;
        }
        let c_str = CStr::from_ptr(nptr);
        match c_str.to_str() {
            Ok(str_slice) => match str_slice.parse::<i64>() {
                Ok(value) => value,
                Err(_) => 0,
            },
            Err(_) => 0,
        }
    }
}
