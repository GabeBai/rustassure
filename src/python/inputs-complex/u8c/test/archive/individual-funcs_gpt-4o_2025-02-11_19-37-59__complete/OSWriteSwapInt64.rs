#![allow(unaligned_references)]
use std::ptr;
use std::mem;

#[repr(C, packed)]
#[repr(C, packed)]struct OSUnalignedU16 {
    val: u16,
}

#[repr(C, packed)]
#[repr(C, packed)]struct OSUnalignedU32 {
    val: u32,
}

#[repr(C, packed)]
#[repr(C, packed)]struct OSUnalignedU64 {
    val: [u8; 8], // Use a byte array to avoid alignment issues
}

#[no_mangle]
#[no_mangle]
fn os_write_swap_int64(base: *mut u8, offset: usize, data: u64) {
    let swapped_data = data.swap_bytes(); // Equivalent to _OSSwapInt64 in C
    unsafe {
        let target = base.add(offset) as *mut OSUnalignedU64;
        ptr::write_unaligned(target as *mut u64, swapped_data);
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    let mut buffer = [0u8; 16];
    os_write_swap_int64(buffer.as_mut_ptr(), 0, 0x1234567890ABCDEF);
    println!("{:x?}", &buffer[..]);
}
