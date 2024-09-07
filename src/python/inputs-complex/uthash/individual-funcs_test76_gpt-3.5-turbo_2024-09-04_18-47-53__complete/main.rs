use std::ffi::CString;
use std::os::raw::{c_char, c_void};
use std::ptr;

struct UTString {
    d: Vec<u8>,
    n: usize,
    i: usize,
}

impl UTString {
    fn new() -> Self {
        UTString {
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
    s.d.extend_from_slice(v_test_str.as_bytes());

    println!("\"{}\" len={}", String::from_utf8_lossy(&s.d), s.i);

    let mut t = UTString::new();
    t.d.extend_from_slice(v_needle_str.as_bytes());

    println!("\"{}\" len={}", String::from_utf8_lossy(&t.d), t.i);

    let mut v_kmp_table = vec![0; t.i + 1];

    // Implement _utstring_BuildTable and _utstring_find functions here

    let mut v_start_pos = 0;
    let mut v_find_cnt = 0;
    loop {
        let v_find_pos = _utstring_find(&s.d[v_start_pos..], s.i - v_start_pos, &t.d, t.i, &v_kmp_table);
        if v_find_pos >= 0 {
            let v_find_pos = v_find_pos as usize + v_start_pos;
            v_find_cnt += 1;
            v_start_pos = v_find_pos + 1;
        } else {
            break;
        }
        println!("utstring_find()={}", v_find_pos);
    }

    println!("FindCnt={}", v_find_cnt);

    // Free memory
    s.d.clear();
    t.d.clear();
}

fn _utstring_find(s: &[u8], s_len: usize, t: &[u8], t_len: usize, kmp_table: &[i32]) -> i32 {
    // Implement the KMP algorithm here
    // Return the position of the found substring or -1 if not found
    -1
}
