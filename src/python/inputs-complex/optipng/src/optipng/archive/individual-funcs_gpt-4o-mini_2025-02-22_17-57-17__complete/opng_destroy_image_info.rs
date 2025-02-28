use std::ptr;
use std::mem;

struct PngColor {
    red: u8,
    green: u8,
    blue: u8,
}

struct PngUnknownChunk {
    name: [u8; 5],
    data: *mut u8,
    size: usize,
    location: u8,
}

struct OpngImage {
    width: u32,
    height: u32,
    bit_depth: i32,
    color_type: i32,
    compression_type: i32,
    filter_type: i32,
    interlace_type: i32,
    row_pointers: *mut *mut u8,
    palette: *mut PngColor,
    num_palette: i32,
    trans_alpha: *mut u8,
    hist: *mut u16,
    unknowns: *mut PngUnknownChunk,
    num_unknowns: i32,
}

static mut IMAGE: OpngImage = OpngImage {
    width: 0,
    height: 0,
    bit_depth: 0,
    color_type: 0,
    compression_type: 0,
    filter_type: 0,
    interlace_type: 0,
    row_pointers: ptr::null_mut(),
    palette: ptr::null_mut(),
    num_palette: 0,
    trans_alpha: ptr::null_mut(),
    hist: ptr::null_mut(),
    unknowns: ptr::null_mut(),
    num_unknowns: 0,
};

fn opng_free(ptr: *mut std::ffi::c_void) {
    if !ptr.is_null() {
        unsafe {
            Box::from_raw(ptr as *mut u8); // Assuming the memory was allocated with Box::into_raw
        }
    }
}

fn opng_destroy_image_info() {
    unsafe {
        if IMAGE.row_pointers.is_null() {
            return;
        }
        for i in 0..IMAGE.height {
            opng_free(*IMAGE.row_pointers.offset(i as isize) as *mut std::ffi::c_void);
        }
        opng_free(IMAGE.row_pointers as *mut std::ffi::c_void);
        opng_free(IMAGE.palette as *mut std::ffi::c_void);
        opng_free(IMAGE.trans_alpha as *mut std::ffi::c_void);
        opng_free(IMAGE.hist as *mut std::ffi::c_void);
        for j in 0..IMAGE.num_unknowns {
            opng_free((*IMAGE.unknowns.offset(j as isize)).data as *mut std::ffi::c_void);
        }
        opng_free(IMAGE.unknowns as *mut std::ffi::c_void);
        mem::zeroed(&mut IMAGE); // Zero out the IMAGE struct
    }
}
