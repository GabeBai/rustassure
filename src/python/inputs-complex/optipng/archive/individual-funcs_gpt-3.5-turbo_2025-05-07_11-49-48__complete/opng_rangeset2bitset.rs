use std::os::raw::{c_char, c_ulong};

type opng_bitset_t = u32;

extern "C" {
    fn opng_rangeset_string_to_bitset(str: *const c_char, end_idx: *mut c_ulong) -> opng_bitset_t;
    fn opng_strltrim(str: *const c_char) -> i32;
    fn __errno_location() -> *mut i32;
}

fn opng_rangeset2bitset(out_val: &mut opng_bitset_t, in_str: *const c_char) -> i32 {
    let mut end_idx: c_ulong = 0;
    unsafe {
        *out_val = opng_rangeset_string_to_bitset(in_str, &mut end_idx);
        if end_idx == 0 || opng_strltrim(in_str.offset(end_idx as isize)) != 0 {
            *__errno_location() = 22;
            return -1;
        }
    }
    0
}
