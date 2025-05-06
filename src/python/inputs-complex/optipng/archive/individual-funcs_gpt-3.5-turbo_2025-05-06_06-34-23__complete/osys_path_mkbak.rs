use std::ffi::CString;

fn osys_path_mkbak(buffer: &mut [u8], path: &str) -> Option<&str> {
    let bak_extname = ".bak";
    if path.len() + bak_extname.len() > buffer.len() {
        return None;
    }
    
    let c_path = CString::new(path).expect("Failed to convert path to CString");
    let c_bak_extname = CString::new(bak_extname).expect("Failed to convert bak_extname to CString");

    unsafe {
        libc::strcpy(buffer.as_mut_ptr() as *mut i8, c_path.as_ptr());
        libc::strcat(buffer.as_mut_ptr() as *mut i8, c_bak_extname.as_ptr());
    }

    Some(path)
}
