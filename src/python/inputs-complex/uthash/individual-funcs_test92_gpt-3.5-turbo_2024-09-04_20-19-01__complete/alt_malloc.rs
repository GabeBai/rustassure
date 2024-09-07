use std::alloc::{alloc, dealloc, Layout};
use std::ptr;

static mut MALLOC_CNT: i32 = 0;
static mut MALLOC_FAILED: i32 = 0;
static mut FREE_CNT: i32 = 0;

unsafe fn alt_malloc(sz: usize) -> *mut u8 {
    if MALLOC_CNT <= 0 {
        MALLOC_FAILED = 1;
        return ptr::null_mut();
    }
    MALLOC_FAILED = 0;
    MALLOC_CNT -= 1;
    
    let layout = Layout::from_size_align_unchecked(sz, std::mem::align_of::<u8>());
    alloc(layout)
}

unsafe fn alt_free(ptr: *mut u8, sz: usize) {
    FREE_CNT += 1;
    dealloc(ptr, Layout::from_size_align_unchecked(sz, std::mem::align_of::<u8>()));
}

fn main() {
    unsafe {
        let ptr = alt_malloc(100);
        if ptr.is_null() {
            println!("Memory allocation failed");
        } else {
            println!("Memory allocated successfully");
            alt_free(ptr, 100);
        }
    }
}
