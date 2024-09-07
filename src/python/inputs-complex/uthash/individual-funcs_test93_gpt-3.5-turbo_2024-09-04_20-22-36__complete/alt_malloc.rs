use std::alloc::{alloc, Layout};
use std::ptr;

static mut MALLOC_CNT: i32 = 0;
static mut MALLOC_FAILED: i32 = 0;

fn alt_malloc(sz: usize) -> *mut u8 {
    unsafe {
        if MALLOC_CNT <= 0 {
            MALLOC_FAILED = 1;
            return ptr::null_mut();
        }
        MALLOC_FAILED = 0;
        MALLOC_CNT -= 1;

        let layout = Layout::from_size_align(sz, std::mem::align_of::<u8>()).unwrap();
        return alloc(layout);
    }
}
