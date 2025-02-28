use std::ffi::CStr;
use std::os::raw::c_char;
use std::ptr;
use std::alloc::{alloc, dealloc, Layout};

unsafe fn strlen(s: *const c_char) -> usize {
    let mut len = 0;
    while *s.add(len) != 0 {
        len += 1;
    }
    len
}

unsafe fn strdup(str: *const c_char) -> *mut c_char {
    let n = strlen(str) + 1; // +1 for the null terminator
    let layout = Layout::from_size_align(n, 1).unwrap(); // 1-byte alignment
    let dup = alloc(layout) as *mut c_char;

    if !dup.is_null() {
        ptr::copy_nonoverlapping(str, dup, n);
    }
    dup
}

// Example usage
fn main() {
    let original = std::ffi::CString::new("Hello, world!").unwrap();
    let dup = unsafe { strdup(original.as_ptr()) };

    if !dup.is_null() {
        let duplicated = unsafe { CStr::from_ptr(dup).to_string_lossy().into_owned() };
        println!("Duplicated string: {}", duplicated);
        unsafe { dealloc(dup as *mut u8, Layout::from_size_align(strlen(original.as_ptr()) + 1, 1).unwrap()) }; // Deallocate memory
    }
}
