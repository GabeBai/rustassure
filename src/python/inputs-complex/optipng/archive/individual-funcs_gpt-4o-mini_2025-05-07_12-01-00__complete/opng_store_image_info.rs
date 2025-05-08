extern crate png;

use png::{ColorType, Encoder, Decoder, HasParameters};
use std::fs::File;
use std::io::{self, BufWriter};

fn opng_store_image_info(
    png_ptr: &mut Encoder<BufWriter<File>>,
    info_ptr: &mut png::OutputInfo,
    store_meta: bool,
) -> Result<(), io::Error> {
    if image.row_pointers.is_empty() {
        return Err(io::Error::new(io::ErrorKind::InvalidInput, "No info in image"));
    }

    png_ptr.set(IHDR(
        image.width,
        image.height,
        image.bit_depth,
        image.color_type,
        image.interlace_type,
        image.compression_type,
        image.filter_type,
    ));

    png_ptr.set_rows(image.row_pointers);
    
    if let Some(palette) = image.palette {
        png_ptr.set_PLTE(palette, image.num_palette);
    }
    
    if let Some(trans_alpha) = image.trans_alpha {
        png_ptr.set_tRNS(trans_alpha, image.num_trans, image.trans_color_ptr);
    }
    
    if !store_meta {
        return Ok(());
    }
    
    if let Some(background_ptr) = image.background_ptr {
        png_ptr.set_bKGD(background_ptr);
    }
    
    if let Some(hist) = image.hist {
        png_ptr.set_hIST(hist);
    }
    
    if let Some(sig_bit_ptr) = image.sig_bit_ptr {
        png_ptr.set_sBIT(sig_bit_ptr);
    }
    
    if image.num_unknowns != 0 {
        png_ptr.set_unknown_chunks(image.unknowns, image.num_unknowns);
        for i in 0..image.num_unknowns {
            png_ptr.set_unknown_chunk_location(i, image.unknowns[i].location);
        }
    }

    Ok(())
}
