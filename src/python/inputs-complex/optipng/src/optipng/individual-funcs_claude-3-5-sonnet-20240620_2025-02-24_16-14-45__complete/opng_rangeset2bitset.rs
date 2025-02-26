use std::ffi::CStr;
use std::os::raw::c_char;
use libc::{c_int, size_t};

type OpngBitsetT = u32;

extern "C" {
    fn opng_rangeset_string_to_bitset(str: *const c_char, end_idx: *mut size_t) -> OpngBitsetT;
    fn opng_strltrim(s: *const c_char) -> *const c_char;
}

#[no_mangle]
pub unsafe extern "C" fn opng_rangeset2bitset(out_val: *mut OpngBitsetT, in_str: *const c_char) -> c_int {
    let mut end_idx: size_t = 0;
    *out_val = opng_rangeset_string_to_bitset(in_str, &mut end_idx);
    
    if end_idx == 0 || *opng_strltrim(in_str.add(end_idx)) != 0 {
        *libc::__errno_location() = 22;
        return -1;
    }
    
    0
}