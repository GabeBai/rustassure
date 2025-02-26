use std::ffi::CStr;
use std::os::raw::c_char;

type OpngBitsetT = u32; // Assuming opng_bitset_t is equivalent to u32

extern "C" {
    fn opng_rangeset_string_to_bitset(str: *const c_char, end_idx: *mut usize) -> OpngBitsetT;
    fn opng_strltrim(str: *const c_char) -> *const c_char; // Assuming this function exists
}

fn opng_rangeset2bitset(out_val: &mut OpngBitsetT, in_str: &CStr) -> i32 {
    let mut end_idx: usize = 0;
    unsafe {
        *out_val = opng_rangeset_string_to_bitset(in_str.as_ptr(), &mut end_idx);
        if end_idx == 0 || *opng_strltrim(in_str.as_ptr().add(end_idx)) != 0 {
            // Handle error, for example, using a custom error handling mechanism
            return -1; // Return an error code
        }
    }
    0 // Success
}
