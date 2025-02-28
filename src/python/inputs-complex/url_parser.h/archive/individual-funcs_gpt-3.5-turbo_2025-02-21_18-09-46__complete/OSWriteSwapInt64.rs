use std::mem;

#[repr(C, packed)]
struct OSUnalignedU16 {
    __val: u16,
}

#[repr(C, packed)]
struct OSUnalignedU32 {
    __val: u32,
}

#[repr(C, packed)]
struct OSUnalignedU64 {
    __val: u64,
}

fn os_write_swap_int64(base: *mut u8, offset: usize, data: u64) {
    unsafe {
        let base_ptr = base.add(offset) as *mut OSUnalignedU64;
        (*base_ptr).__val = data.to_be();
    }
}

fn main() {
    // Example usage
    let mut data: [u8; 16] = [0; 16];
    let base = data.as_mut_ptr();
    let offset = 0;
    let value: u64 = 123456789;
    
    os_write_swap_int64(base, offset, value);
    
    // Verify the result
    let result = unsafe { (*(base.add(offset) as *const OSUnalignedU64)).__val.to_be() };
    println!("Result: {}", result);
}
