use std::ffi::CString;
use std::os::raw::{c_char, c_void};
use std::ptr;

#[repr(C)]
struct png_struct;

#[repr(C)]
struct png_info;

type png_structp = *mut png_struct;
type png_infop = *mut png_info;

extern "C" {
    fn png_create_read_struct(user_png_ver: *const c_char, error_ptr: *mut c_void, error_fn: Option<extern "C" fn(png_structp, *const c_char)>, warn_fn: Option<extern "C" fn(png_structp, *const c_char)>) -> png_structp;
    fn png_create_info_struct(png_ptr: png_structp) -> png_infop;
    fn png_destroy_read_struct(png_ptr_ptr: *mut png_structp, info_ptr_ptr: *mut png_infop, end_info_ptr_ptr: *mut png_infop);
    fn png_set_keep_unknown_chunks(png_ptr: png_structp, keep: i32, chunk_list: *const c_char, num_chunks: i32);
    fn png_set_user_limits(png_ptr: png_structp, user_width_max: u32, user_height_max: u32);
    fn png_set_read_fn(png_ptr: png_structp, io_ptr: *mut c_void, read_data_fn: Option<extern "C" fn(png_structp, *mut u8, usize)>);
    fn png_data_freer(png_ptr: png_structp, info_ptr: png_infop, free_me: u32, mask: i32);
    fn png_destroy_read_struct(png_ptr_ptr: *mut png_structp, info_ptr_ptr: *mut png_infop, end_info_ptr_ptr: *mut png_infop);
}

fn opng_read_file(infile: *mut std::fs::File) {
    let fmt_name: *const c_char;
    let num_img: i32;
    let reductions: u32;
    let mut err_msg: *const c_char = std::ptr::null();

    unsafe {
        let user_png_ver = CString::new("1.6.21").unwrap().into_raw();
        let read_ptr = png_create_read_struct(user_png_ver, std::ptr::null_mut(), None, None);
        let read_info_ptr = png_create_info_struct(read_ptr);

        if read_info_ptr.is_null() {
            panic!("Out of memory");
        }

        png_set_keep_unknown_chunks(read_ptr, 3, std::ptr::null(), 0);
        png_set_user_limits(read_ptr, 0x7fffffff, 0x7fffffff);

        // Implement opng_init_read_data, opng_read_data, opng_error, opng_warning functions

        // Implement pngx_read_image function

        // Implement opng_validate_image function

        // Implement opng_load_image_info and opng_print_image_info functions

        // Implement opng_reduce_image function

        // Implement opng_print_warning and usr_printf functions

        // Implement opng_init_read_data, opng_read_data, opng_error, opng_warning functions

        png_data_freer(read_ptr, read_info_ptr, 2, 0x7fff);
        png_destroy_read_struct(&read_ptr, &read_info_ptr, std::ptr::null_mut());
    }
}
