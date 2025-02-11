#![allow(unaligned_references)]
use std::mem::ManuallyDrop;
use std::os::raw::{c_int, c_void};

// Define the __siginfo struct as a placeholder.
// You need to replace this with the actual fields of the __siginfo struct.
#[repr(C)]
#[repr(C, packed)]struct SigInfo {
    // Add the actual fields of the __siginfo struct here.
}

// Define the union using ManuallyDrop to handle the non-Copy type.
union SigactionU {
    __sa_handler: Option<extern "C" fn(c_int)>,
    __sa_sigaction: ManuallyDrop<Option<extern "C" fn(c_int, *mut SigInfo, *mut c_void)>>,
}

// Example function to free memory, using Rust's memory management.
#[no_mangle]
#[no_mangle]
fn opng_free(ptr: *mut c_void) {
    unsafe {
        if !ptr.is_null() {
            // Convert the pointer to a Box and drop it.
            Box::from_raw(ptr);
        }
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage of the union.
    let mut action = SigactionU {
        __sa_handler: Some(signal_handler),
    };

    // Example usage of the opng_free function.
    let ptr: *mut c_void = Box::into_raw(Box::new(42)) as *mut c_void;
    opng_free(ptr);
}

// Example signal handler function.
extern "C" fn signal_handler(signal: c_int) {
    println!("Received signal: {}", signal);
}
