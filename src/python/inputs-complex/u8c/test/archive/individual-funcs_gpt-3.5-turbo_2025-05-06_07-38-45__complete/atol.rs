use std::str::FromStr;

#[no_mangle]
pub extern "C" fn atol(nptr: *const i8) -> i64 {
    let c_str = unsafe {
        assert!(!nptr.is_null());
        std::ffi::CStr::from_ptr(nptr)
    };

    let str_slice = c_str.to_str().expect("Invalid UTF-8 string");
    i64::from_str(str_slice).unwrap_or(0)
}

use std::ffi;
use std::str;
