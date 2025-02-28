use std::ffi::CStr;
use std::os::raw::c_char;
use std::str::FromStr;

fn opng_str2ulong(out_val: &mut u64, in_str: *const c_char, allow_multiplier: i32) -> i32 {
    let c_str = unsafe { CStr::from_ptr(in_str) };
    let s = c_str.to_str().unwrap().trim_start();

    if s.is_empty() || !s.starts_with(|c: char| c.is_ascii_digit()) {
        *out_val = 0;
        return -1;
    }

    let (num_str, rest) = s.split_at(s.find(|c: char| !c.is_ascii_digit()).unwrap_or(s.len()));
    let mut val = u64::from_str(num_str).unwrap();

    if allow_multiplier != 0 {
        let multiplier = match rest.chars().next() {
            Some('k') | Some('K') => 1024,
            Some('M') => 1024 * 1024,
            Some('G') => 1024 * 1024 * 1024,
            _ => 1,
        };

        if multiplier > 1 {
            val = val.saturating_mul(multiplier);
        }
    }

    if !rest.trim_start().is_empty() {
        return -1;
    }

    *out_val = val;
    0
}