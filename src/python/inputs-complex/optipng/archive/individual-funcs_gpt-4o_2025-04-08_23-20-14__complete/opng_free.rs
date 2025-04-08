use std::ptr;
use std::alloc::{dealloc, Layout};

fn opng_free(ptr: *mut u8, size: usize) {
    if !ptr.is_null() {
        unsafe {
            dealloc(ptr, Layout::from_size_align_unchecked(size, 1));
        }
    }
}
