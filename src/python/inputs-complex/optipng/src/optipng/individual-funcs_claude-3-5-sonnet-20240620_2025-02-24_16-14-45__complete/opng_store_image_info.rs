use std::ptr::NonNull;

fn opng_store_image_info(png_ptr: NonNull<png_struct>, info_ptr: NonNull<png_info>, store_meta: bool) {
    assert!(image.row_pointers.is_some(), "No info in image");

    unsafe {
        png_set_IHDR(png_ptr.as_ptr(), info_ptr.as_ptr(),
            image.width, image.height, image.bit_depth, image.color_type,
            image.interlace_type, image.compression_type, image.filter_type);
        
        png_set_rows(write_ptr.as_ptr(), write_info_ptr.as_ptr(), image.row_pointers.unwrap());

        if let Some(palette) = image.palette {
            png_set_PLTE(png_ptr.as_ptr(), info_ptr.as_ptr(), palette, image.num_palette);
        }

        if image.trans_alpha.is_some() || image.trans_color_ptr.is_some() {
            png_set_tRNS(png_ptr.as_ptr(), info_ptr.as_ptr(),
                image.trans_alpha.unwrap_or(std::ptr::null_mut()),
                image.num_trans,
                image.trans_color_ptr.unwrap_or(std::ptr::null()));
        }

        if !store_meta {
            return;
        }

        if let Some(background_ptr) = image.background_ptr {
            png_set_bKGD(png_ptr.as_ptr(), info_ptr.as_ptr(), background_ptr);
        }

        if let Some(hist) = image.hist {
            png_set_hIST(png_ptr.as_ptr(), info_ptr.as_ptr(), hist);
        }

        if let Some(sig_bit_ptr) = image.sig_bit_ptr {
            png_set_sBIT(png_ptr.as_ptr(), info_ptr.as_ptr(), sig_bit_ptr);
        }

        if image.num_unknowns != 0 {
            png_set_unknown_chunks(png_ptr.as_ptr(), info_ptr.as_ptr(),
                image.unknowns, image.num_unknowns);
            
            for i in 0..image.num_unknowns {
                png_set_unknown_chunk_location(png_ptr.as_ptr(), info_ptr.as_ptr(),
                    i as i32, image.unknowns.add(i).read().location);
            }
        }
    }
}