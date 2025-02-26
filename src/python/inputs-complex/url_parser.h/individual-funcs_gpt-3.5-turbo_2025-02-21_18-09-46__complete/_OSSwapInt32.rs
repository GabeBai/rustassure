use std::mem;

#[repr(C)]
union Sigval {
    sival_int: i32,
    sival_ptr: *mut std::ffi::c_void,
}

#[repr(C)]
union SigactionU {
    __sa_handler: extern "C" fn(i32),
    __sa_sigaction: extern "C" fn(i32, *mut Siginfo, *mut std::ffi::c_void),
}

#[derive(Clone, Copy)]
struct Siginfo {
    // Define the fields of struct __siginfo here
}

fn _OSSwapInt32(data: u32) -> u32 {
    data.swap_bytes()
}

fn main() {
    let data: u32 = 12345;
    let swapped_data = _OSSwapInt32(data);
    println!("Swapped data: {}", swapped_data);
}
