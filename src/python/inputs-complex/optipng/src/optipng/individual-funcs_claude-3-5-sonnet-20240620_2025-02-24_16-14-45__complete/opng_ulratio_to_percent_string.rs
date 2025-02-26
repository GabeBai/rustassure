use std::ffi::c_char;
use std::os::raw::c_int;

#[repr(C)]
pub struct opng_ulratio {
    num: u64,
    denom: u64,
}

type opng_ulongest_impl_t = u64;

#[no_mangle]
pub extern "C" fn opng_ulratio_to_percent_string(
    buffer: *mut c_char,
    buffer_size: usize,
    ratio: *const opng_ulratio,
) -> c_int {
    let num = unsafe { (*ratio).num } as opng_ulongest_impl_t;
    let denom = unsafe { (*ratio).denom } as opng_ulongest_impl_t;
    opng_sprint_uratio_impl(buffer, buffer_size, num, denom, 1)
}