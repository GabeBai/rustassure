use std::panic;

const IDAT_SIZE_MAX: u64 = 0x7fffffff; // 2GB

fn opng_check_idat_size(size: u64) {
    if size > IDAT_SIZE_MAX {
        panic!("IDAT sizes larger than the maximum chunk size are currently unsupported");
    }
}

fn main() {
    // Example usage
    let size: u64 = 0x80000000; // Example size greater than 2GB
    opng_check_idat_size(size);
}
