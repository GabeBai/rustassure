#![allow(unaligned_references)]
use std::ptr;
use std::slice;

// Assuming these are the Rust equivalents of the C functions
extern "C" {
#[no_mangle]
#[no_mangle]
    fn png_set_keep_unknown_chunks(
        png_ptr: *mut png_struct,
        keep: i32,
        chunk_list: *const u8,
        num_chunks: i32,
    );
#[no_mangle]
#[no_mangle]
    fn png_handle_as_unknown(
        png_ptr: *const png_struct,
        chunk_name: *const u8,
    ) -> i32;
}

// Define the png_struct type as a placeholder
#[repr(C)]
#[repr(C, packed)]struct png_struct;

// The Rust equivalent of the C function
#[no_mangle]
#[no_mangle]
fn opng_set_keep_unknown_chunk(png_ptr: *mut png_struct, keep: i32, chunk_type: &[u8]) {
    let mut chunk_name = [0u8; 5];
    
    // Copy the first 4 bytes from chunk_type to chunk_name
    chunk_name[..4].copy_from_slice(&chunk_type[..4]);
    
    // Null-terminate the chunk_name
    chunk_name[4] = 0;
    
    // Call the external C functions
    unsafe {
        if png_handle_as_unknown(png_ptr, chunk_name.as_ptr()) == 0 {
            png_set_keep_unknown_chunks(png_ptr, keep, chunk_name.as_ptr(), 1);
        }
    }
}
