use std::ptr;
use std::slice;

#[repr(C)]
pub struct PngStruct {
    // Define the fields of the png_struct here
}

pub type PngStructp = *mut PngStruct;
pub type PngConstStructrp = *const PngStruct;
pub type PngBytep = *mut u8;
pub type PngConstBytep = *const u8;

extern "C" {
    fn png_handle_as_unknown(png_ptr: PngConstStructrp, chunk_name: PngConstBytep) -> i32;
    fn png_set_keep_unknown_chunks(png_ptr: PngStructp, keep: i32, chunk_list: PngConstBytep, num_chunks: i32);
}

pub unsafe fn opng_set_keep_unknown_chunk(png_ptr: PngStructp, keep: i32, chunk_type: PngBytep) {
    let mut chunk_name: [u8; 5] = [0; 5];
    ptr::copy_nonoverlapping(chunk_type, chunk_name.as_mut_ptr(), 4);
    chunk_name[4] = 0; // Null-terminate the chunk name

    if png_handle_as_unknown(png_ptr as PngConstStructrp, chunk_name.as_ptr()) == 0 {
        png_set_keep_unknown_chunks(png_ptr, keep, chunk_name.as_ptr(), 1);
    }
}
