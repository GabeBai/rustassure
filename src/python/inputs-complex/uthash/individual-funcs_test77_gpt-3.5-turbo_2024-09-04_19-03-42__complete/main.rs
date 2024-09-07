use std::{mem, ptr};

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
    let mut s = UTString::new();
    let mut t = UTString::new();
    let v_test_str = "There are two needle\0s in this \0haystack with needle\0s.";
    let v_needle_str = "needle\0s";
    let mut v_kmp_table: *mut i64;
    let mut v_find_pos: i64;
    let mut v_start_pos: usize;
    let mut v_find_cnt = 0;

    s.d.extend_from_slice(v_test_str.as_bytes());
    println!("\"{}\" len={}", String::from_utf8_lossy(&s.d), s.i);

    t.d.extend_from_slice(v_needle_str.as_bytes());
    println!("\"{}\" len={}", String::from_utf8_lossy(&t.d), t.i);

    v_kmp_table = unsafe { Vec::<i64>::with_capacity(t.i + 1).as_mut_ptr() };

    if !v_kmp_table.is_null() {
        // Implement _utstring_BuildTableR and _utstring_findR functions here

        v_start_pos = s.i - 1;
        loop {
            v_find_pos = _utstring_findR(&s.d, v_start_pos + 1, &t.d, t.i, v_kmp_table);
            if v_find_pos >= 0 {
                v_find_cnt += 1;
                v_start_pos = v_find_pos as usize - 1;
            }
            println!("utstring_find()={}", v_find_pos);
            if v_find_pos < 0 {
                break;
            }
        }

        println!("FindCnt={}", v_find_cnt);
        // No need to call free in Rust, memory will be automatically deallocated when out of scope
    } else {
        println!("malloc() failed...");
    }

    // Implement utstring_printf, utstring_find, and utstring_findR functions here

    println!("expect 15 {}", utstring_find(&s, -9, "ABC", 3));
    println!("expect  4 {}", utstring_find(&s, 3, "ABC", 3));
    println!("expect -1 {}", utstring_find(&s, 16, "ABC", 3));
    println!("expect 11 {}", utstring_findR(&s, -9, "ABC", 3));
    println!("expect  4 {}", utstring_findR(&s, 12, "ABC", 3));
    println!("expect 11 {}", utstring_findR(&s, 13, "ABC", 3));
    println!("expect  0 {}", utstring_findR(&s, 2, "ABC", 3));
}

fn _utstring_findR(s: &[u8], start_pos: usize, t: &[u8], t_len: usize, kmp_table: *mut i64) -> i64 {
    // Implement the _utstring_findR function here
    0
}

fn utstring_find(s: &UTString, start_pos: i64, needle: &str, needle_len: usize) -> i64 {
    // Implement the utstring_find function here
    0
}

fn utstring_findR(s: &UTString, start_pos: i64, needle: &str, needle_len: usize) -> i64 {
    // Implement the utstring_findR function here
    0
}
