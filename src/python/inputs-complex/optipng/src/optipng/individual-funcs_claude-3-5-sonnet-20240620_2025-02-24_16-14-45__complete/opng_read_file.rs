use std::ffi::CStr;
use std::fs::File;
use std::io::{Read, Seek, SeekFrom};
use std::mem::MaybeUninit;
use std::os::raw::{c_char, c_int, c_void};
use std::ptr;

use libc::{c_uint, FILE, jmp_buf, longjmp, setjmp};
use png_sys::{png_create_info_struct, png_create_read_struct, png_data_freer, png_destroy_read_struct, png_error, png_infop, png_set_keep_unknown_chunks, png_set_read_fn, png_set_user_limits, png_structp, png_uint_32, png_warning};

extern "C" {
    fn opng_error(png_ptr: png_structp, error_message: *const c_char);
    fn opng_warning(png_ptr: png_structp, warning_message: *const c_char);
    fn opng_init_read_data();
    fn opng_read_data(png_ptr: png_structp, data: *mut u8, length: usize);
    fn pngx_read_image(png_ptr: png_structp, info_ptr: png_infop, fmt_name_ptr: *mut *const c_char, fmt_long_name_ptr: *mut *const c_char) -> c_int;
    fn opng_validate_image(png_ptr: png_structp, info_ptr: png_infop) -> c_int;
    fn opng_load_image_info(png_ptr: png_structp, info_ptr: png_infop, load_image: c_int);
    fn opng_print_image_info(print_dim: c_int, print_type: c_int, print_bit_depth: c_int, print_color_type: c_int);
    fn opng_reduce_image(png_ptr: png_structp, info_ptr: png_infop, reductions: png_uint_32) -> png_uint_32;
}

static mut read_ptr: png_structp = ptr::null_mut();
static mut read_info_ptr: png_infop = ptr::null_mut();

unsafe fn opng_read_file(infile: *mut FILE) {
    let mut fmt_name: *const c_char = ptr::null();
    let mut num_img: c_int;
    let mut reductions: png_uint_32;
    let mut err_msg: *const c_char = ptr::null();

    let mut exception_env = MaybeUninit::<jmp_buf>::uninit();
    if setjmp(exception_env.as_mut_ptr()) == 0 {
        read_ptr = png_create_read_struct(b"1.6.21\0".as_ptr() as *const c_char, ptr::null_mut(), Some(opng_error), Some(opng_warning));
        read_info_ptr = png_create_info_struct(read_ptr);
        if read_info_ptr.is_null() {
            png_error(read_ptr, b"Out of memory\0".as_ptr() as *const c_char);
        }

        png_set_keep_unknown_chunks(read_ptr, 3, ptr::null(), 0);
        png_set_user_limits(read_ptr, 0x7fffffff, 0x7fffffff);

        opng_init_read_data();
        png_set_read_fn(read_ptr, infile as *mut c_void, Some(opng_read_data));

        num_img = pngx_read_image(read_ptr, read_info_ptr, &mut fmt_name, ptr::null_mut());
        if num_img <= 0 {
            png_error(read_ptr, b"Unrecognized image file format\0".as_ptr() as *const c_char);
        }

        if num_img > 1 {
            (*process).status |= INPUT_HAS_MULTIPLE_IMAGES;
        }

        if ((*process).status & INPUT_IS_PNG_FILE) != 0 && ((*process).status & INPUT_HAS_MULTIPLE_IMAGES) != 0 {
            fmt_name = if ((*process).status & INPUT_HAS_PNG_SIGNATURE) != 0 {
                b"APNG\0".as_ptr() as *const c_char
            } else {
                b"APNG datastream\0".as_ptr() as *const c_char
            };
        }

        assert!(!fmt_name.is_null(), "No format name from pngxtern");

        if (*process).in_file_size == 0 {
            let mut size = 0;
            if osys_fgetsize(infile, &mut size) < 0 {
                png_warning(read_ptr, b"Can't get the correct file size\0".as_ptr() as *const c_char);
                (*process).in_file_size = 0;
            } else {
                (*process).in_file_size = size;
            }
        }
    } else {
        if opng_validate_image(read_ptr, read_info_ptr) != 0 {
            png_warning(read_ptr, err_msg);
            err_msg = ptr::null();
        }
    }

    if setjmp(exception_env.as_mut_ptr()) == 0 {
        if !err_msg.is_null() {
            png_error(read_ptr, err_msg);
        }

        if CStr::from_ptr(fmt_name).to_str().unwrap() != "PNG" {
            println!("Importing {}", CStr::from_ptr(fmt_name).to_str().unwrap());
            if ((*process).status & INPUT_HAS_MULTIPLE_IMAGES) != 0 {
                if ((*process).status & INPUT_IS_PNG_FILE) == 0 {
                    print!(" (multi-image or animation)");
                }
                if (*options).snip != 0 {
                    print!("; snipping...");
                }
            }
            println!();
        }

        opng_load_image_info(read_ptr, read_info_ptr, 1);
        opng_print_image_info(1, 1, 1, 1);
        println!();

        reductions = (0x0001 | 0x0002 | 0x0004 | 0x0008 | 0x0010 | 0x0020 | 0x0040 | 0x0080 | 0x0100 | 0x0200) & !0x1000;
        if (*options).nb != 0 {
            reductions &= !(0x0001 | 0x0002);
        }
        if (*options).nc != 0 {
            reductions &= !(0x0004 | 0x0008 | 0x0010 | 0x0020 | 0x0040 | 0x0080);
        }
        if (*options).np != 0 {
            reductions &= !(0x0100 | 0x0200);
        }
        if (*options).nz != 0 && ((*process).status & INPUT_HAS_PNG_DATASTREAM) != 0 {
            reductions = 0x0000;
        }
        if ((*process).status & INPUT_HAS_DIGITAL_SIGNATURE) != 0 {
            reductions = 0x0000;
        }
        if ((*process).status & INPUT_IS_PNG_FILE) != 0
            && ((*process).status & INPUT_HAS_MULTIPLE_IMAGES) != 0
            && reductions != 0x0000
            && (*options).snip == 0
        {
            println!("Can't reliably reduce APNG file; disabling reductions.");
            println!("(Did you want to -snip and optimize the first frame?)");
            reductions = 0x0000;
        }

        (*process).reductions = opng_reduce_image(read_ptr, read_info_ptr, reductions);
        if (*process).reductions != 0x0000 {
            opng_load_image_info(read_ptr, read_info_ptr, 1);
            print!("Reducing image to ");
            opng_print_image_info(0, 1, 1, 0);
            println!();
        }

        if (*options).interlace >= 0 && (*image).interlace_type != (*options).interlace {
            (*image).interlace_type = (*options).interlace;
            (*process).status |= OUTPUT_NEEDS_NEW_IDAT;
        }
    } else {
        png_data_freer(read_ptr, read_info_ptr, 1, 0x7fff);
        png_destroy_read_struct(&mut read_ptr, &mut read_info_ptr, ptr::null_mut());
        longjmp(exception_env.as_mut_ptr(), 1);
    }

    png_data_freer(read_ptr, read_info_ptr, 2, 0x7fff);
    png_destroy_read_struct(&mut read_ptr, &mut read_info_ptr, ptr::null_mut());
}
