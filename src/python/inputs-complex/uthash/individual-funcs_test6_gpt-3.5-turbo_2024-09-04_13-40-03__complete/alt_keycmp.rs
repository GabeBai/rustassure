use std::cmp::Ordering;

static mut ALT_MALLOC_SIZES: [usize; 10] = [0; 10];
static mut ALT_MALLOC_BALANCE: i32 = 0;
static mut ALT_KEYCMP_COUNT: i32 = 0;

unsafe fn alt_keycmp(a: *const std::ffi::c_void, b: *const std::ffi::c_void, n: usize) -> Ordering {
    ALT_KEYCMP_COUNT += 1;
    let a_slice = std::slice::from_raw_parts(a as *const u8, n);
    let b_slice = std::slice::from_raw_parts(b as *const u8, n);
    
    a_slice.cmp(b_slice)
}
