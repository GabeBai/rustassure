#![allow(unaligned_references)]
use std::ptr;
use std::mem;

#[repr(C, packed)]
#[repr(C, packed)]struct OSUnalignedU16 {
    __val: u16,
}

#[repr(C, packed)]
#[repr(C, packed)]struct OSUnalignedU32 {
    __val: u32,
}

#[repr(C, packed)]
#[repr(C, packed)]struct OSUnalignedU64 {
    __val: u64,
}

#[no_mangle]
#[no_mangle]
fn os_write_swap_int16(base: *mut u8, offset: usize, data: u16) {
    unsafe {
        let ptr = base.add(offset) as *mut OSUnalignedU16;
        (*ptr).__val = data.swap_bytes();
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    let mut buffer = [0u8; 4];
    let base = buffer.as_mut_ptr();
    let offset = 0;
    let data: u16 = 0x1234;

    os_write_swap_int16(base, offset, data);

    // Verify the result
    let result = unsafe { ptr::read_unaligned(base as *const u16) };
    println!("Result: 0x{:04x}", result);
}
