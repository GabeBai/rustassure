#![allow(unaligned_references)]
use std::ffi::CString;
use std::ptr;

#[no_mangle]
#[no_mangle]
fn strdup(str: &str) -> Option<CString> {
    CString::new(str).ok()
}
