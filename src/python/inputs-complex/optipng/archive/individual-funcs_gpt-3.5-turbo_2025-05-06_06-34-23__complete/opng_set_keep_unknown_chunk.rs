use std::os::raw::{c_char, c_int, c_uchar};

const OPNG_BITSET_ELT_MIN: u32 = 0;
const OPNG_BITSET_ELT_MAX: u32 = (std::mem::size_of::<opng_bitset_t>() as u32 * 8) - 1;

type opng_bitset_t = u32;
type png_byte = c_uchar;
type png_bytep = *mut png_byte;
type png_const_bytep = *const png_byte;
type png_const_charp = *const c_char;

struct png_struct;

extern "C" {
    fn png_set_keep_unknown_chunks(png_ptr: *mut png_struct, keep: c_int, chunk_list: png_const_bytep, num_chunks: c_int);
    fn png_handle_as_unknown(png_ptr: *const png_struct, chunk_name: png_const_bytep) -> c_int;
}

fn opng_set_keep_unknown_chunk(png_ptr: *mut png_struct, keep: c_int, chunk_type: png_bytep) {
    let mut chunk_name: [png_byte; 5] = [0; 5];
    chunk_name[..4].copy_from_slice(&chunk_type[..4]);
    chunk_name[4] = 0;
    
    let chunk_name_ptr = chunk_name.as_ptr();
    
    if unsafe { png_handle_as_unknown(png_ptr, chunk_name_ptr) } == 0 {
        unsafe { png_set_keep_unknown_chunks(png_ptr, keep, chunk_name_ptr, 1) };
    }
}
