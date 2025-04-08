use std::ffi::CStr;
use std::os::raw::{c_int, c_void};
use std::ptr;

#[repr(C)]
pub struct PngStruct {
    // Define the fields of the struct if needed
}

extern "C" {
    fn png_handle_as_unknown(png_ptr: *mut PngStruct, chunk_name: *const u8) -> c_int;
    fn png_set_keep_unknown_chunks(png_ptr: *mut PngStruct, keep: c_int, chunk_list: *const u8, num_chunks: c_int);
}

pub unsafe fn opng_set_keep_unknown_chunk(png_ptr: *mut PngStruct, keep: c_int, chunk_type: *const u8) {
    let mut chunk_name = [0u8; 5];
    ptr::copy_nonoverlapping(chunk_type, chunk_name.as_mut_ptr(), 4);
    chunk_name[4] = 0;

    if png_handle_as_unknown(png_ptr, chunk_name.as_ptr()) == 0 {
        png_set_keep_unknown_chunks(png_ptr, keep, chunk_name.as_ptr(), 1);
    }
}
