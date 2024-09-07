use std::alloc::{alloc, dealloc, Layout};
use std::ptr;

unsafe fn real_malloc(size: usize) -> *mut std::ffi::c_void {
    let layout = Layout::from_size_align(size, std::mem::align_of::<std::ffi::c_void>()).unwrap();
    let ptr = alloc(layout) as *mut std::ffi::c_void;
    ptr
}

unsafe fn alt_malloc(size: usize) -> *mut std::ffi::c_void {
    let layout = Layout::from_size_align(size, std::mem::align_of::<std::ffi::c_void>()).unwrap();
    let ptr = alloc(layout) as *mut std::ffi::c_void;
    ptr
}

unsafe fn real_free(ptr: *mut std::ffi::c_void) {
    let layout = Layout::from_size_align(0, std::mem::align_of::<std::ffi::c_void>()).unwrap();
    dealloc(ptr as *mut u8, layout);
}

unsafe fn alt_free(ptr: *mut std::ffi::c_void) {
    let layout = Layout::from_size_align(0, std::mem::align_of::<std::ffi::c_void>()).unwrap();
    dealloc(ptr as *mut u8, layout);
}
