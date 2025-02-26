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
    val: u64,
}

#[no_mangle]
#[no_mangle]
fn os_write_swap_int64(base: *mut u8, offset: usize, data: u64) {
    unsafe {
        let ptr = base.add(offset) as *mut OSUnalignedU64;
        (*ptr).val = data.swap_bytes();
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    let mut buffer = [0u8; 16];
    let data: u64 = 0x1234567890ABCDEF;
    os_write_swap_int64(buffer.as_mut_ptr(), 0, data);

    // Verify the result
    let result = unsafe { ptr::read_unaligned(buffer.as_ptr() as *const u64) };
    println!("Result: {:X}", result);
}
