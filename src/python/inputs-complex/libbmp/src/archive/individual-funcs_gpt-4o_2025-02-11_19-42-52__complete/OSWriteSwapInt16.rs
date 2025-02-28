#![allow(unaligned_references)]
use std::ptr;
use std::mem;

#[repr(C)]
#[repr(C, packed)]struct OSUnalignedU16 {
    __val: u16,
}

#[repr(C)]
#[repr(C, packed)]struct OSUnalignedU32 {
    __val: u32,
}

#[repr(C)]
#[repr(C, packed)]struct OSUnalignedU64 {
    __val: u64,
}

#[no_mangle]
#[no_mangle]
fn os_write_swap_int16(base: *mut u8, offset: usize, data: u16) {
    unsafe {
        let ptr = base.add(offset) as *mut u16;
        ptr::write_unaligned(ptr, data.to_be());
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    let mut buffer = [0u8; 4];
    os_write_swap_int16(buffer.as_mut_ptr(), 0, 0x1234);
    println!("{:x?}", &buffer[..]);
}
