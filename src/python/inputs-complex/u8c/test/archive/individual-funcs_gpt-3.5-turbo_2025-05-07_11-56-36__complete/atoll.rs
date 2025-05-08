use std::str::FromStr;

#[no_mangle]
pub extern "C" fn atoll(nptr: *const i8) -> i64 {
    let nptr_str = unsafe { std::ffi::CStr::from_ptr(nptr).to_str().unwrap() };
    match i64::from_str(nptr_str) {
        Ok(val) => val,
        Err(_) => 0, // You can handle the error case as needed
    }
}
