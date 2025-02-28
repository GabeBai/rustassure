use std::os::raw::{c_long, c_int};

#[repr(C)]
pub struct timespec {
    pub tv_sec: i64,
    pub tv_nsec: c_long,
}

#[repr(C)]
pub struct jmp_buf {
    _data: [c_long; 27], // Size of jmp_buf in macOS
}

#[repr(C)]
pub struct fd_set {
    fds_bits: [i32; 32], // Assuming 1024 bits
}

// Define the necessary constants
const INPUT_IS_PNG_FILE: u16 = 0x0001;
const INPUT_HAS_PNG_DATASTREAM: u16 = 0x0002;
const INPUT_HAS_PNG_SIGNATURE: u16 = 0x0004;
const INPUT_HAS_DIGITAL_SIGNATURE: u16 = 0x0008;
const INPUT_HAS_MULTIPLE_IMAGES: u16 = 0x0010;
const INPUT_HAS_APNG: u16 = 0x0020;
const INPUT_HAS_STRIPPED_DATA: u16 = 0x0040;
const INPUT_HAS_JUNK: u16 = 0x0080;
const INPUT_HAS_ERRORS: u16 = 0x0100;
const OUTPUT_NEEDS_NEW_FILE: u16 = 0x1000;
const OUTPUT_NEEDS_NEW_IDAT: u16 = 0x2000;
const OUTPUT_HAS_ERRORS: u16 = 0x4000;

// Function signatures
extern "C" {
    fn png_set_keep_unknown_chunks(png_ptr: *mut png_struct, keep: c_int, chunk_list: *const u8, num_chunks: c_int);
    fn png_handle_as_unknown(png_ptr: *const png_struct, chunk_name: *const u8) -> c_int;
}

fn opng_set_keep_unknown_chunk(png_ptr: *mut png_struct, keep: c_int, chunk_type: *mut u8) {
    let mut chunk_name = [0u8; 5];
    chunk_name.copy_from_slice(&chunk_type[0..4]);
    chunk_name[4] = 0;
    
    if unsafe { png_handle_as_unknown(png_ptr, chunk_name.as_ptr()) } != 0 {
        unsafe { png_set_keep_unknown_chunks(png_ptr, keep, chunk_name.as_ptr(), 1) };
    }
}
