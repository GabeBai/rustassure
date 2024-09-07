use std::alloc::{dealloc, Layout};

fn real_free(p: *mut std::ffi::c_void) {
    unsafe {
        dealloc(p as *mut u8, Layout::new::<std::ffi::c_void>());
    }
}
