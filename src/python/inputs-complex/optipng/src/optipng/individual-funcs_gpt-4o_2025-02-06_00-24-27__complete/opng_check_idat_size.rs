#![allow(unaligned_references)]
const IDAT_SIZE_MAX: u32 = 0x7fffffff;

#[no_mangle]
#[no_mangle]
fn opng_check_idat_size(size: u32) {
    if size > IDAT_SIZE_MAX {
        panic!("IDAT sizes larger than the maximum chunk size are currently unsupported");
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    let size: u32 = 0x80000000; // Some size to check
    opng_check_idat_size(size);
}
