use std::ffi::CString;

fn strdup(s: &str) -> Option<String> {
    let n = s.len() + 1;
    let dup = unsafe { libc::malloc(n) as *mut libc::c_char };
    if dup.is_null() {
        return None;
    }
    
    let c_str = CString::new(s).expect("CString::new failed");
    libc::strcpy(dup, c_str.as_ptr());
    
    unsafe {
        Some(CString::from_raw(dup).to_string_lossy().into_owned())
    }
}

fn main() {
    let original_str = "Hello, World!";
    if let Some(duplicated_str) = strdup(original_str) {
        println!("Original: {}", original_str);
        println!("Duplicated: {}", duplicated_str);
    } else {
        println!("Failed to duplicate the string.");
    }
}
