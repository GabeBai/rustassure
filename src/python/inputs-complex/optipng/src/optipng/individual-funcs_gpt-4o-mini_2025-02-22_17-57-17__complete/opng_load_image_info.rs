use std::ptr;

#[repr(C)]
#[derive(Default)]
struct PngUnknownChunk {
    name: [u8; 5],
    data: *mut u8,
    size: usize,
    location: u8,
}

#[repr(C)]
struct OpngImageStruct {
    // ... other fields ...
    unknowns: *mut *mut PngUnknownChunk,
    num_unknowns: i32,
}

static mut IMAGE: OpngImageStruct = OpngImageStruct {
    unknowns: ptr::null_mut(),
    num_unknowns: 0,
    // Initialize other fields as needed
};

unsafe fn opng_load_image_info(png_ptr: *mut PngStruct, info_ptr: *mut PngInfo, load_meta: i32) {
    // Zero out the IMAGE struct
    std::ptr::write_bytes(&mut IMAGE as *mut _ as *mut u8, 0, std::mem::size_of::<OpngImageStruct>());

    // Call the necessary functions to populate IMAGE
    png_get_IHDR(png_ptr, info_ptr,
        &mut IMAGE.width, &mut IMAGE.height, &mut IMAGE.bit_depth, &mut IMAGE.color_type,
        &mut IMAGE.interlace_type, &mut IMAGE.compression_type, &mut IMAGE.filter_type);
    
    IMAGE.row_pointers = png_get_rows(png_ptr, info_ptr);
    png_get_PLTE(png_ptr, info_ptr, &mut IMAGE.palette, &mut IMAGE.num_palette);
    
    if png_get_tRNS(png_ptr, info_ptr, &mut IMAGE.trans_alpha, &mut IMAGE.num_trans, &mut IMAGE.trans_color_ptr) {
        if !IMAGE.trans_color_ptr.is_null() {
            IMAGE.trans_color = *IMAGE.trans_color_ptr;
            IMAGE.trans_color_ptr = &IMAGE.trans_color;
        }
    }
    
    if load_meta == 0 {
        return;
    }
    
    if png_get_bKGD(png_ptr, info_ptr, &mut IMAGE.background_ptr) {
        IMAGE.background = *IMAGE.background_ptr;
        IMAGE.background_ptr = &IMAGE.background;
    }
    
    png_get_hIST(png_ptr, info_ptr, &mut IMAGE.hist);
    
    if png_get_sBIT(png_ptr, info_ptr, &mut IMAGE.sig_bit_ptr) {
        IMAGE.sig_bit = *IMAGE.sig_bit_ptr;
        IMAGE.sig_bit_ptr = &IMAGE.sig_bit;
    }
    
    IMAGE.num_unknowns = png_get_unknown_chunks(png_ptr, info_ptr, &mut IMAGE.unknowns);
}
