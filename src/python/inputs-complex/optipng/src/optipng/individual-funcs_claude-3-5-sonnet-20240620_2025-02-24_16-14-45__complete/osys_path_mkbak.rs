use std::ffi::CStr;
use std::ptr;

pub fn osys_path_mkbak(buffer: *mut libc::c_char, bufsize: libc::size_t, path: *const libc::c_char) -> *mut libc::c_char {
    const BAK_EXTNAME: &[u8] = b".bak\0";
    
    let path_len = unsafe { libc::strlen(path) };
    if path_len + BAK_EXTNAME.len() > bufsize {
        return ptr::null_mut();
    }
    
    unsafe {
        libc::strcpy(buffer, path);
        libc::strcat(buffer, BAK_EXTNAME.as_ptr() as *const libc::c_char);
    }
    
    buffer
}