pub type __off_t = i64;
pub type __off64_t = i64;

use std::ptr;

static mut ALT_BZERO_COUNT: i32 = 0;

fn alt_bzero(a: *mut u8, n: usize) {
    unsafe {
        ALT_BZERO_COUNT += 1;
        ptr::write_bytes(a, 0, n);
    }
}
