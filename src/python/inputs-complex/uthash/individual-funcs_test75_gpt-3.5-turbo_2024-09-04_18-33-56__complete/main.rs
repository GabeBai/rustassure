use std::ffi::CString;
use std::os::raw::{c_char, c_void};
use std::alloc::{alloc, dealloc, Layout};
use std::ptr;

struct UTString {
    d: *mut c_char,
    n: usize,
    i: usize,
}

impl UTString {
    fn new() -> Self {
        Self {
            d: ptr::null_mut(),
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

    s.d = unsafe { alloc(Layout::from_size_align(100, 1).unwrap()) as *mut c_char };
    t.d = unsafe { alloc(Layout::from_size_align(100, 1).unwrap()) as *mut c_char };

    let v_test_str_c = CString::new(v_test_str).expect("CString conversion failed");
    let v_needle_str_c = CString::new(v_needle_str).expect("CString conversion failed");

    unsafe {
        ptr::copy_nonoverlapping(v_test_str_c.as_ptr(), s.d, v_test_str.len());
        ptr::copy_nonoverlapping(v_needle_str_c.as_ptr(), t.d, v_needle_str.len());
    }

    println!("\"{}\" len={}", v_test_str, v_test_str.len());

    println!("\"{}\" len={}", v_needle_str, v_needle_str.len());

    let mut v_find_cnt = 0;
    let mut v_find_pos = -1;

    loop {
        v_find_pos = utstring_findR(&s, v_find_pos, &t);
        println!("utstring_findR()={}", v_find_pos);
        if v_find_pos >= 0 {
            v_find_pos -= 1;
            v_find_cnt += 1;
        } else {
            break;
        }
    }

    println!("FindCnt={}", v_find_cnt);

    unsafe {
        dealloc(s.d as *mut u8, Layout::from_size_align(100, 1).unwrap());
        dealloc(t.d as *mut u8, Layout::from_size_align(100, 1).unwrap());
    }
}

fn utstring_findR(s: &UTString, v_find_pos: i64, t: &UTString) -> i64 {
    // Implement your utstring_findR logic here
    // This is just a placeholder function
    0
}
