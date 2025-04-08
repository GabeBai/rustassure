use std::ffi::CStr;
use std::os::raw::{c_char, c_int, c_uchar, c_uint};
use std::ptr;

type PngStructp = *mut PngStruct;
type PngBytep = *mut c_uchar;

#[repr(C)]
struct PngStruct {
    // Define the fields of the PngStruct here
}

#[repr(C)]
struct OpngProcessStruct {
    status: c_uint,
    // Other fields...
}

#[repr(C)]
struct OpngOptions {
    strip_all: c_int,
    snip: c_int,
    // Other fields...
}

const INPUT_HAS_STRIPPED_DATA: c_uint = 0x0040;
const INPUT_HAS_JUNK: c_uint = 0x0080;
const INPUT_HAS_DIGITAL_SIGNATURE: c_uint = 0x0008;
const INPUT_HAS_APNG: c_uint = 0x0020;
const INPUT_HAS_MULTIPLE_IMAGES: c_uint = 0x0010;

extern "C" {
    fn opng_is_image_chunk(chunk_type: PngBytep) -> c_int;
    fn opng_is_apng_chunk(chunk_type: PngBytep) -> c_int;
    fn opng_set_keep_unknown_chunk(png_ptr: PngStructp, keep: c_int, chunk_type: PngBytep);
}

fn opng_handle_chunk(png_ptr: PngStructp, chunk_type: PngBytep, options: &OpngOptions, process: &mut OpngProcessStruct) {
    unsafe {
        if opng_is_image_chunk(chunk_type) != 0 {
            return;
        }

        if options.strip_all != 0 {
            process.status |= INPUT_HAS_STRIPPED_DATA | INPUT_HAS_JUNK;
            opng_set_keep_unknown_chunk(png_ptr, 1, chunk_type);
            return;
        }

        if CStr::from_ptr(chunk_type as *const c_char) == CStr::from_bytes_with_nul_unchecked(b"bKGD\0")
            || CStr::from_ptr(chunk_type as *const c_char) == CStr::from_bytes_with_nul_unchecked(b"hIST\0")
            || CStr::from_ptr(chunk_type as *const c_char) == CStr::from_bytes_with_nul_unchecked(b"sBIT\0")
        {
            return;
        }

        let mut keep = 3;
        if CStr::from_ptr(chunk_type as *const c_char) == CStr::from_bytes_with_nul_unchecked(b"dSIG\0") {
            process.status |= INPUT_HAS_DIGITAL_SIGNATURE;
        } else if opng_is_apng_chunk(chunk_type) != 0 {
            process.status |= INPUT_HAS_APNG;
            if CStr::from_ptr(chunk_type as *const c_char) == CStr::from_bytes_with_nul_unchecked(b"fdAT\0") {
                process.status |= INPUT_HAS_MULTIPLE_IMAGES;
            }
            if options.snip != 0 {
                process.status |= INPUT_HAS_JUNK;
                keep = 1;
            }
        }
        opng_set_keep_unknown_chunk(png_ptr, keep, chunk_type);
    }
}
