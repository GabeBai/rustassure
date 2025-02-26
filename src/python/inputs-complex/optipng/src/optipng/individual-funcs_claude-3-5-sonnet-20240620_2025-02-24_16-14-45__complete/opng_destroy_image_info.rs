use std::ptr;

static mut IMAGE: OpngImageStruct = OpngImageStruct {
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
    background_ptr: ptr::null_mut(),
    background: PngColor16 { index: 0, red: 0, green: 0, blue: 0, gray: 0 },
    hist: ptr::null_mut(),
    sig_bit_ptr: ptr::null_mut(),
    sig_bit: PngColor8 { red: 0, green: 0, blue: 0, gray: 0, alpha: 0 },
    trans_alpha: ptr::null_mut(),
    num_trans: 0,
    trans_color_ptr: ptr::null_mut(),
    trans_color: PngColor16 { index: 0, red: 0, green: 0, blue: 0, gray: 0 },
    unknowns: ptr::null_mut(),
    num_unknowns: 0,
};

#[repr(C)]
struct OpngImageStruct {
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
    background_ptr: *mut PngColor16,
    background: PngColor16,
    hist: *mut u16,
    sig_bit_ptr: *mut PngColor8,
    sig_bit: PngColor8,
    trans_alpha: *mut u8,
    num_trans: i32,
    trans_color_ptr: *mut PngColor16,
    trans_color: PngColor16,
    unknowns: *mut PngUnknownChunk,
    num_unknowns: i32,
}

#[repr(C)]
struct PngColor {
    red: u8,
    green: u8,
    blue: u8,
}

#[repr(C)]
struct PngColor16 {
    index: u8,
    red: u16,
    green: u16,
    blue: u16,
    gray: u16,
}

#[repr(C)]
struct PngColor8 {
    red: u8,
    green: u8,
    blue: u8,
    gray: u8,
    alpha: u8,
}

#[repr(C)]
struct PngUnknownChunk {
    name: [u8; 5],
    data: *mut u8,
    size: usize,
    location: u8,
}

unsafe fn opng_destroy_image_info() {
    if IMAGE.row_pointers.is_null() {
        return;
    }

    for i in 0..IMAGE.height {
        opng_free(*IMAGE.row_pointers.offset(i as isize) as *mut libc::c_void);
    }
    opng_free(IMAGE.row_pointers as *mut libc::c_void);
    opng_free(IMAGE.palette as *mut libc::c_void);
    opng_free(IMAGE.trans_alpha as *mut libc::c_void);
    opng_free(IMAGE.hist as *mut libc::c_void);

    for j in 0..IMAGE.num_unknowns {
        opng_free((*IMAGE.unknowns.offset(j as isize)).data as *mut libc::c_void);
    }
    opng_free(IMAGE.unknowns as *mut libc::c_void);

    ptr::write_bytes(&mut IMAGE as *mut OpngImageStruct as *mut u8, 0, std::mem::size_of::<OpngImageStruct>());
}

extern "C" {
    fn opng_free(ptr: *mut libc::c_void);
}
