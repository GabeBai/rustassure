use std::os::raw::{c_char, c_int};

type opng_bitset_t = u32;

const OPNG_BITSET_ELT_MIN: opng_bitset_t = 0;
const OPNG_BITSET_ELT_MAX: opng_bitset_t = (std::mem::size_of::<opng_bitset_t>() as opng_bitset_t * 8) - 1;

extern "C" {
    fn opng_rangeset_string_to_bitset(str: *const c_char, end_idx: *mut usize) -> opng_bitset_t;
    fn opng_strltrim(str: *const c_char) -> c_int;
    fn __error() -> *mut c_int;
}

fn opng_rangeset2bitset(out_val: &mut opng_bitset_t, in_str: *const c_char) -> c_int {
    let mut end_idx: usize = 0;
    unsafe {
        *out_val = opng_rangeset_string_to_bitset(in_str, &mut end_idx);
        if end_idx == 0 || opng_strltrim(in_str.add(end_idx as usize)) != 0 {
            *__error() = 22;
            return -1;
        }
    }
    0
}
