#![allow(unaligned_references)]
use std::ptr;
use std::mem;

#[inline]
#[no_mangle]
#[no_mangle]
fn os_read_swap_int16(base: *const u8, offset: usize) -> u16 {
    // Calculate the address with the offset
    let address = unsafe { base.add(offset) };

    // Read the unaligned u16 value from the address
    let mut value: u16 = 0;
    unsafe {
        ptr::copy_nonoverlapping(address, &mut value as *mut u16 as *mut u8, mem::size_of::<u16>());
    }

    // Swap the byte order to match the original C function's behavior
    value.swap_bytes()
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    let data: [u8; 4] = [0x01, 0x02, 0x03, 0x04];
    let result = os_read_swap_int16(data.as_ptr(), 0);
    println!("Swapped value: {:#06x}", result);
}
