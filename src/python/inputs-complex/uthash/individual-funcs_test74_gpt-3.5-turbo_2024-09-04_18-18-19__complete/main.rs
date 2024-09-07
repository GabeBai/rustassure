use std::ffi::CString;
use std::ptr;

struct UTString {
    d: Vec<u8>,
    n: usize,
    i: usize,
}

impl UTString {
    fn new() -> Self {
        Self {
            d: Vec::new(),
            n: 0,
            i: 0,
        }
    }
}

fn main() {
    let v_test_str = "There are two needle\0s in this \0haystack with needle\0s.";
    let v_needle_str = "needle\0s";

    let mut s = UTString::new();
    let mut t = UTString::new();

    s.d.extend_from_slice(v_test_str.as_bytes());
    s.i = v_test_str.len();

    println!("\"{}\" len={}", String::from_utf8_lossy(&s.d), s.i);

    t.d.extend_from_slice(v_needle_str.as_bytes());
    t.i = v_needle_str.len();

    println!("\"{}\" len={}", String::from_utf8_lossy(&t.d), t.i);

    let mut v_find_pos = 0;
    let mut v_find_cnt = 0;

    loop {
        if let Some(pos) = s.d[v_find_pos..].windows(t.i).position(|w| w == t.d) {
            v_find_pos += pos + 1;
            v_find_cnt += 1;
        } else {
            break;
        }
    }

    println!("FindCnt={}", v_find_cnt);

    // No need to manually free memory in Rust, it's handled by the ownership system
}
