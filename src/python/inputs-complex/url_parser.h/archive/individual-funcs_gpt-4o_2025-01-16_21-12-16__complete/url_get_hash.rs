#![allow(unaligned_references)]
extern crate libc;

use libc::{c_char};
use std::ffi::CStr;
use std::ptr;

extern "C" {
#[no_mangle]
#[no_mangle]
    fn url_get_fragment(url: *const c_char) -> *mut c_char;
}

#[inline]
unsafe fn url_get_hash(url: *const c_char) -> *mut c_char {
    url_get_fragment(url)
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    let url = std::ffi::CString::new("http://example.com#fragment").unwrap();
    unsafe {
        let fragment = url_get_hash(url.as_ptr());
        if !fragment.is_null() {
            let fragment_str = CStr::from_ptr(fragment).to_string_lossy();
            println!("Fragment: {}", fragment_str);
            // If url_get_fragment allocates memory, ensure to free it appropriately
            // libc::free(fragment as *mut libc::c_void);
        }
    }
}
