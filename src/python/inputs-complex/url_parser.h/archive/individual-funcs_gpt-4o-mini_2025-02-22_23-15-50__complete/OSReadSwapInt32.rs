use std::mem;
use std::ptr;

#[repr(C)]
#[derive(Debug)]
struct OSUnalignedU32 {
    __val: u32,
}

fn os_swap_int32(value: u32) -> u32 {
    value.swap_bytes()
}

fn os_read_swap_int32(base: *const u8, offset: usize) -> u32 {
    // Calculate the address of the unaligned structure
    let addr = unsafe { base.add(offset) as *const OSUnalignedU32 };
    
    // Read the value from the unaligned structure
    let value = unsafe { (*addr).__val };
    
    // Swap the bytes and return
    os_swap_int32(value)
}

fn main() {
    // Example usage
    let data: [u8; 4] = [0x01, 0x02, 0x03, 0x04]; // Example data
    let base = data.as_ptr();
    let offset = 0; // Offset in bytes

    let swapped_value = os_read_swap_int32(base, offset);
    println!("Swapped Value: {}", swapped_value);
}
