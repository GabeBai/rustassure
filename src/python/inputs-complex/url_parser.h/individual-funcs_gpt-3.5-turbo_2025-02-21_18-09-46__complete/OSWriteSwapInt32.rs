use std::mem;

#[repr(packed)]
struct _OSUnalignedU16 {
    __val: u16,
}

#[repr(packed)]
struct _OSUnalignedU32 {
    __val: u32,
}

#[repr(packed)]
struct _OSUnalignedU64 {
    __val: u64,
}

fn os_write_swap_int32(base: *mut u8, offset: usize, data: u32) {
    unsafe {
        let base_ptr = base.offset(offset as isize) as *mut _OSUnalignedU32;
        (*base_ptr).__val = data.to_be();
    }
}

fn main() {
    // Example usage
    let mut data: [u8; 8] = [0; 8];
    let base = data.as_mut_ptr();
    let offset = 0;
    let data = 123456789;
    
    os_write_swap_int32(base, offset, data);

    // Verify the result
    let result = unsafe {
        let base_ptr = base.offset(offset as isize) as *const _OSUnalignedU32;
        (*base_ptr).__val.to_be()
    };

    println!("Result: {}", result);
}
