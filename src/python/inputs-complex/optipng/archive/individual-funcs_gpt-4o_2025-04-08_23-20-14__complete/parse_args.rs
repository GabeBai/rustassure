use std::ffi::CString;
use std::ptr;

fn main() {
    // Example usage of the function
    let mut args: Vec<*mut i8> = vec![
        CString::new("arg1").unwrap().into_raw(),
        CString::new("arg2").unwrap().into_raw(),
    ];

    // Convert i32 to usize for indexing
    for i in 0..args.len() {
        let arg = unsafe { CString::from_raw(args[i]) };
        println!("Argument: {:?}", arg);

        // Set the pointer to null after use
        args[i] = ptr::null_mut();
    }
}
