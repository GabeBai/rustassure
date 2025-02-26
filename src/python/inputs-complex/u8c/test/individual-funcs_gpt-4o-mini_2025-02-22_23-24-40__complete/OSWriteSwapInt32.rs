use std::ptr;

#[repr(C)]
#[derive(Debug)]
struct OSUnalignedU32 {
    __val: u32,
}

fn os_swap_int32(data: u32) -> u32 {
    // Implement the byte swap logic here. This is a placeholder.
    data.swap_bytes()
}

fn os_write_swap_int32(base: *mut std::ffi::c_void, offset: usize, data: u32) {
    unsafe {
        // Calculate the pointer to the target location
        let target_ptr = (base as usize + offset) as *mut OSUnalignedU32;
        
        // Write the swapped value to the target location
        (*target_ptr).__val = os_swap_int32(data);
    }
}
