use std::os::raw::c_uint;

#[no_mangle]
pub extern "C" fn __uint32_identity(__x: c_uint) -> c_uint {
    __x
}
