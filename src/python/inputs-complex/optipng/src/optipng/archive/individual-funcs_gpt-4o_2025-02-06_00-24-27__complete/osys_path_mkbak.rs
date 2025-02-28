#![allow(unaligned_references)]
use std::ffi::CStr;
use std::ptr;

pub unsafe fn osys_path_mkbak(buffer: *mut u8, bufsize: usize, path: *const u8) -> *mut u8 {
    const BAK_EXTNAME: &[u8] = b".bak\0";
    let path_len = CStr::from_ptr(path as *const i8).to_bytes().len();
    if path_len + BAK_EXTNAME.len() > bufsize {
        return ptr::null_mut();
    }
    ptr::copy_nonoverlapping(path, buffer, path_len);
    ptr::copy_nonoverlapping(BAK_EXTNAME.as_ptr(), buffer.add(path_len), BAK_EXTNAME.len());
    buffer
}
