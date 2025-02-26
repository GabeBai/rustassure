use std::mem;

#[repr(packed)]
struct OSUnalignedU16 {
    __val: u16,
}

fn os_write_swap_int16(base: *mut u8, offset: usize, data: u16) {
    let unaligned_ptr = (base as usize + offset) as *mut OSUnalignedU16;
    unsafe {
        (*unaligned_ptr).__val = u16::to_ne_bytes(data)[0] as u16 | (u16::to_ne_bytes(data)[1] as u16) << 8;
    }
}

fn main() {
    let mut base: [u8; 10] = [0; 10];
    let offset = 2;
    let data: u16 = 0xABCD;
    
    os_write_swap_int16(base.as_mut_ptr(), offset, data);
    
    println!("{:X?}", base);
}
