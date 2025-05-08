if png_get_tRNS(png_ptr, info_ptr, &mut image.trans_alpha, &mut image.num_trans, image.trans_color_ptr) != 0 {

fn opng_load_image_info(png_ptr: *mut png_struct, info_ptr: *mut png_info, load_meta: i32) {
    unsafe {
        memset(&mut image as *mut _ as *mut c_void, 0, std::mem::size_of::<opng_image_struct>());

        png_get_IHDR(png_ptr, info_ptr,
            &mut image.width, &mut image.height, &mut image.bit_depth, &mut image.color_type,
            &mut image.interlace_type, &mut image.compression_type, &mut image.filter_type);
        
        image.row_pointers = png_get_rows(png_ptr, info_ptr);
        png_get_PLTE(png_ptr, info_ptr, &mut image.palette, &mut image.num_palette);
        
        if png_get_tRNS(png_ptr, info_ptr,
            &mut image.trans_alpha, &mut image.num_trans, image.trans_color_ptr) != 0 {
            if !image.trans_color_ptr.is_null() {
                image.trans_color = *image.trans_color_ptr;
                image.trans_color_ptr = &mut image.trans_color;
            }
        }
        
        if load_meta == 0 {
            return;
        }
        
        if png_get_bKGD(png_ptr, info_ptr, &mut image.background_ptr) != 0 {
            image.background = *image.background_ptr;
            image.background_ptr = &mut image.background;
        }
        
        png_get_hIST(png_ptr, info_ptr, &mut image.hist);
        
        if png_get_sBIT(png_ptr, info_ptr, &mut image.sig_bit_ptr) != 0 {
            image.sig_bit = *image.sig_bit_ptr;
            image.sig_bit_ptr = &mut image.sig_bit;
        }
        
        image.num_unknowns = png_get_unknown_chunks(png_ptr, info_ptr, &mut image.unknowns);
    }
}
