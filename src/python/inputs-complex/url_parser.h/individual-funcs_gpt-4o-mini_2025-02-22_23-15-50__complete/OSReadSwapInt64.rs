use std::mem;
use std::ptr;

#[repr(C)]
#[derive(Debug)]
struct OSUnalignedU64 {
    __val: u64,
}

fn os_swap_int64(value: u64) -> u64 {
    value.swap_bytes()
}

fn os_read_swap_int64(base: *const u8, offset: usize) -> u64 {
    unsafe {
        // Calculate the address of the unaligned value
        let unaligned_ptr = (base as usize + offset) as *const OSUnalignedU64;
        // Read the value
        let value = (*unaligned_ptr).__val;
        // Swap the bytes
        os_swap_int64(value)
    }
}

fn main() {
    // Example usage
    let data: [u8; mem::size_of::<OSUnalignedU64>()] = [1, 0, 0, 0, 0, 0, 0, 0]; // Example data
    let base = data.as_ptr();
    let offset = 0;

    let swapped_value = os_read_swap_int64(base, offset);
    println!("Swapped value: {}", swapped_value);
}
