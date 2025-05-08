pub fn opng_free(ptr: *mut std::ffi::c_void) {
    unsafe {
        std::alloc::dealloc(ptr as *mut u8, std::alloc::Layout::from_size_align_unchecked(0, 1));
    }
}
