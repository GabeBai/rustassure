#![allow(unaligned_references)]
use std::mem::ManuallyDrop;
use std::ptr::read_unaligned;

#[repr(C)]
union Sigval {
    sival_int: i32,
    sival_ptr: *mut std::ffi::c_void,
}

#[repr(C)]
union SigactionU {
    __sa_handler: ManuallyDrop<Option<extern "C" fn(i32)>>,
    __sa_sigaction: ManuallyDrop<Option<extern "C" fn(i32, *mut libc::siginfo_t, *mut std::ffi::c_void)>>,
}

#[repr(packed)]
#[repr(C, packed)]struct OSUnalignedU16 {
    __val: std::sync::atomic::AtomicU16,
}

#[repr(packed)]
#[repr(C, packed)]struct OSUnalignedU32 {
    __val: std::sync::atomic::AtomicU32,
}

#[repr(packed)]
#[repr(C, packed)]struct OSUnalignedU64 {
    __val: std::sync::atomic::AtomicU64,
}

#[no_mangle]
#[no_mangle]
fn os_read_swap_int32(base: *const std::ffi::c_void, offset: usize) -> u32 {
    unsafe {
        let ptr = (base as usize + offset) as *const u32;
        u32::from_be(read_unaligned(ptr))
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    let data: [u8; 4] = [0x12, 0x34, 0x56, 0x78];
    let result = os_read_swap_int32(data.as_ptr() as *const std::ffi::c_void, 0);
    println!("Swapped int32: {:#X}", result);
}
