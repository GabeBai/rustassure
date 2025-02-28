#![allow(unaligned_references)]
use std::ptr;

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
fn os_write_swap_int16(base: *mut u8, offset: usize, data: u16) {
    unsafe {
        let ptr = base.add(offset) as *mut OSUnalignedU16;
        (*ptr).val = data.swap_bytes();
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
