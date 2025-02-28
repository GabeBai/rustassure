use std::ffi::c_void;
use std::os::raw::{c_char, c_int};

#[repr(C)]
pub struct FILE;

#[repr(C)]
pub struct png_struct_def;

#[repr(C)]
pub struct png_info_def;

type png_structp = *mut png_struct_def;
type png_infop = *mut png_info_def;

extern "C" {
    fn png_create_write_struct(user_png_ver: *const c_char, error_ptr: *mut c_void, error_fn: Option<unsafe extern "C" fn(png_structp, *const c_char)>, warn_fn: Option<unsafe extern "C" fn(png_structp, *const c_char)>) -> png_structp;
    fn png_create_info_struct(png_ptr: png_structp) -> png_infop;
    fn png_set_compression_level(png_ptr: png_structp, level: c_int);
    fn png_set_compression_mem_level(png_ptr: png_structp, mem_level: c_int);
    fn png_set_compression_strategy(png_ptr: png_structp, strategy: c_int);
    fn png_set_filter(png_ptr: png_structp, method: c_int, filters: c_int);
    fn png_set_compression_window_bits(png_ptr: png_structp, window_bits: c_int);
    fn png_set_keep_unknown_chunks(png_ptr: png_structp, keep: c_int, chunk_list: *const u8, num_chunks: c_int);
    fn png_set_user_limits(png_ptr: png_structp, user_width_max: u32, user_height_max: u32);
    fn png_set_write_fn(png_ptr: png_structp, io_ptr: *mut c_void, write_data_fn: Option<unsafe extern "C" fn(png_structp, *mut u8, usize)>, output_flush_fn: Option<unsafe extern "C" fn(png_structp)>);
    fn png_write_png(png_ptr: png_structp, info_ptr: png_infop, transforms: c_int, params: *mut c_void);
    fn png_destroy_write_struct(png_ptr_ptr: *mut png_structp, info_ptr_ptr: *mut png_infop);
}

extern "C" {
    fn opng_error(png_ptr: png_structp, error_message: *const c_char);
    fn opng_warning(png_ptr: png_structp, warning_message: *const c_char);
    fn opng_store_image_info(write_ptr: png_structp, write_info_ptr: png_infop, store_metadata: c_int);
    fn opng_init_write_data();
    fn opng_write_data(png_ptr: png_structp, data: *mut u8, length: usize);
}

static mut write_ptr: png_structp = std::ptr::null_mut();
static mut write_info_ptr: png_infop = std::ptr::null_mut();

#[no_mangle]
pub unsafe extern "C" fn opng_write_file(
    outfile: *mut FILE,
    compression_level: c_int,
    memory_level: c_int,
    compression_strategy: c_int,
    filter: c_int,
) {
    let filter_table: [c_int; 6] = [0x08, 0x10, 0x20, 0x40, 0x80, 0x08 | 0x10 | 0x20 | 0x40 | 0x80];

    assert!(compression_level >= 1 && compression_level <= 9 && 
            memory_level >= 1 && memory_level <= 9 && 
            compression_strategy >= 0 && compression_strategy <= 3 && 
            filter >= 0 && filter <= 5);

    write_ptr = png_create_write_struct(b"1.6.21\0".as_ptr() as *const c_char, 
                                        std::ptr::null_mut(), 
                                        Some(opng_error), 
                                        Some(opng_warning));

    write_info_ptr = png_create_info_struct(write_ptr);
    if write_info_ptr.is_null() {
        panic!("Out of memory");
    }

    png_set_compression_level(write_ptr, compression_level);
    png_set_compression_mem_level(write_ptr, memory_level);
    png_set_compression_strategy(write_ptr, compression_strategy);
    png_set_filter(write_ptr, 0, filter_table[filter as usize]);

    if compression_strategy != 2 && compression_strategy != 3 {
        if (*options).window_bits > 0 {
            png_set_compression_window_bits(write_ptr, (*options).window_bits);
        }
    } else {
        png_set_compression_window_bits(write_ptr, 9);
    }

    png_set_keep_unknown_chunks(write_ptr, 3, std::ptr::null(), 0);
    png_set_user_limits(write_ptr, 0x7fffffff, 0x7fffffff);

    opng_store_image_info(write_ptr, write_info_ptr, !outfile.is_null() as c_int);
    opng_init_write_data();

    png_set_write_fn(write_ptr, 
                     outfile as *mut c_void, 
                     Some(opng_write_data), 
                     None);

    png_write_png(write_ptr, write_info_ptr, 0, std::ptr::null_mut());

    png_destroy_write_struct(&mut write_ptr, &mut write_info_ptr);
}