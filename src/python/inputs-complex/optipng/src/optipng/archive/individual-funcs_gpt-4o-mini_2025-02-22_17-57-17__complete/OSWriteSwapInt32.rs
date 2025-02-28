use std::mem;
use std::ptr;

#[repr(C)]
struct OSUnalignedU32 {
    __val: u32,
}

fn os_write_swap_int32(base: *mut u8, offset: usize, data: u32) {
    // Swap the byte order of the data
    let swapped_data = data.to_le(); // Assuming we want to convert to little-endian

    // Calculate the pointer to the target location
    let target_ptr = unsafe { (base as usize + offset) as *mut OSUnalignedU32 };

    // Write the swapped data to the target location
    unsafe {
        ptr::write(&mut (*target_ptr).__val, swapped_data);
    }
}
