use std::os::raw::{c_int, c_uchar};

#[repr(C)]
pub struct png_struct;

extern "C" {
    pub fn png_set_keep_unknown_chunks(png_ptr: *mut png_struct, keep: c_int, chunk_list: *const c_uchar, num_chunks: c_int);
    pub fn png_handle_as_unknown(png_ptr: *const png_struct, chunk_name: *const c_uchar) -> c_int;
}

fn opng_set_keep_unknown_chunk(png_ptr: *mut png_struct, keep: c_int, chunk_type: *const c_uchar) {
    let mut chunk_name = [0u8; 5];
    unsafe {
        std::ptr::copy(chunk_type, chunk_name.as_mut_ptr(), 4);
    }
    chunk_name[4] = 0;
    if unsafe { png_handle_as_unknown(png_ptr, chunk_name.as_ptr()) } == 0 {
        unsafe {
            png_set_keep_unknown_chunks(png_ptr, keep, chunk_name.as_ptr(), 1);
        }
    }
}
