use std::str::FromStr;

#[no_mangle]
pub extern "C" fn atoi(nptr: *const i8) -> i32 {
    unsafe {
        let c_str = std::ffi::CStr::from_ptr(nptr);
        let str_slice = c_str.to_str().expect("Invalid UTF-8 string");
        match i32::from_str(str_slice) {
            Ok(num) => num,
            Err(_) => 0, // You can handle the error case as per your requirement
        }
    }
}
