fn opng_free<T>(ptr: *mut T) {
    if !ptr.is_null() {
        // Convert the raw pointer back into a Box to safely deallocate it
        unsafe {
            Box::from_raw(ptr);
        }
    }
}
