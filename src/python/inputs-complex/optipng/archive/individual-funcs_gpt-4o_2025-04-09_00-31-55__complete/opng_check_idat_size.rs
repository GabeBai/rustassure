use std::panic::{self, AssertUnwindSafe};

const IDAT_SIZE_MAX: u32 = 0x7fffffff;

fn opng_check_idat_size(size: u32) -> Result<(), &'static str> {
    if size > IDAT_SIZE_MAX {
        Err("IDAT sizes larger than the maximum chunk size are currently unsupported")
    } else {
        Ok(())
    }
}

fn main() {
    let size: u32 = 0x80000000; // Example size that exceeds the limit

    let result = panic::catch_unwind(AssertUnwindSafe(|| {
        opng_check_idat_size(size).unwrap();
    }));

    match result {
        Ok(_) => println!("Size is within the limit."),
        Err(_) => println!("Caught an error: IDAT sizes larger than the maximum chunk size are currently unsupported"),
    }
}
