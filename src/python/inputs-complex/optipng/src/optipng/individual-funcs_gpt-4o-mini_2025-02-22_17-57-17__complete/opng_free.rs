use std::alloc::dealloc;
use std::alloc::Layout;

fn opng_free(ptr: *mut std::ffi::c_void) {
    unsafe {
        if !ptr.is_null() {
            let layout = Layout::from_size_align(std::mem::size_of::<*mut std::ffi::c_void>(), std::mem::align_of::<*mut std::ffi::c_void>()).unwrap();
            dealloc(ptr as *mut u8, layout);
        }
    }
}
