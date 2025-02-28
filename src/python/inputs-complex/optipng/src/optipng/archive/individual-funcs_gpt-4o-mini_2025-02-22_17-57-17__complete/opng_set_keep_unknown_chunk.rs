use std::ffi::CStr;
use std::os::raw::{c_char, c_int, c_uchar};
use std::ptr;

#[repr(C)]
pub struct PngStruct {
    // Define the fields of png_struct as needed
}

extern "C" {
    fn png_set_keep_unknown_chunks(png_ptr: *mut PngStruct, keep: c_int, chunk_list: *const c_uchar, num_chunks: c_int);
    fn png_handle_as_unknown(png_ptr: *const PngStruct, chunk_name: *const c_uchar) -> c_int;
}

fn opng_set_keep_unknown_chunk(png_ptr: *mut PngStruct, keep: c_int, chunk_type: *mut c_uchar) {
    let mut chunk_name: [c_uchar; 5] = [0; 5];
    
    // Copy the first 4 bytes from chunk_type to chunk_name
    unsafe {
        std::ptr::copy_nonoverlapping(chunk_type, chunk_name.as_mut_ptr(), 4);
    }
    
    // Null-terminate the chunk_name
    chunk_name[4] = 0;

    unsafe {
        if png_handle_as_unknown(png_ptr, chunk_name.as_ptr()) == 0 {
            png_set_keep_unknown_chunks(png_ptr, keep, chunk_name.as_ptr(), 1);
        }
    }
}
