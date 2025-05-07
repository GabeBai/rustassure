use libc::c_void;

fn opng_free(ptr: *mut c_void) {
    unsafe {
        libc::free(ptr as *mut std::ffi::c_void);
    }
}
