use std::os::raw::c_ushort as __uint16_t;

#[no_mangle]
pub extern "C" fn __uint16_identity(__x: __uint16_t) -> __uint16_t {
    __x
}
