use std::mem::transmute;

static fn opng_check_idat_size(size: u64) {
    const IDAT_SIZE_MAX: u64 = 0x7fffffff;

    if size > IDAT_SIZE_MAX {
        panic!("IDAT sizes larger than the maximum chunk size are currently unsupported");
    }
}