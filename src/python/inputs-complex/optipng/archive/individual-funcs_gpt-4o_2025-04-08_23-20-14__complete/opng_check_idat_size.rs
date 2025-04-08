const IDAT_SIZE_MAX: u64 = 0x7fffffff; // 2GB

fn opng_check_idat_size(size: u64) -> Result<(), &'static str> {
    if size > IDAT_SIZE_MAX {
        Err("IDAT sizes larger than the maximum chunk size are currently unsupported")
    } else {
        Ok(())
    }
}

fn main() {
    // Example usage
    match opng_check_idat_size(0x80000000) {
        Ok(_) => println!("Size is within the limit."),
        Err(e) => panic!("{}", e),
    }
}
