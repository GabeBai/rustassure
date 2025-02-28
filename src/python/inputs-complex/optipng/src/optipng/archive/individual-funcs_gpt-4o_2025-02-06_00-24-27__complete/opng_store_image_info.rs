#![allow(unaligned_references)]
use png::{BitDepth, ColorType, Encoder, HasParameters};
use std::io::Write;

#[repr(C, packed)]struct OpngImage {
    width: u32,
    height: u32,
    bit_depth: BitDepth,
    color_type: ColorType,
    row_pointers: Vec<Vec<u8>>,
    palette: Option<Vec<png::Color>>,
    trans_alpha: Option<Vec<u8>>,
    num_trans: usize,
    trans_color: Option<png::Color>,
    background: Option<png::Color>,
    hist: Option<Vec<u16>>,
    sig_bit: Option<png::Color>,
    unknowns: Vec<png::Chunk>,
}

#[no_mangle]
#[no_mangle]
fn opng_store_image_info<W: Write>(
    encoder: &mut Encoder<W>,
    image: &OpngImage,
    store_meta: bool,
) {
    assert!(
        !image.row_pointers.is_empty(),
        "No info in image"
    );

    encoder.set(image.width, image.height);
    encoder.set(image.bit_depth);
    encoder.set(image.color_type);

    if let Some(ref palette) = image.palette {
        encoder.set_palette(palette);
    }

    if let Some(ref trans_alpha) = image.trans_alpha {
        encoder.set_trns(trans_alpha);
    }

    if store_meta {
        if let Some(ref background) = image.background {
            encoder.set_background(background);
        }

        if let Some(ref hist) = image.hist {
            encoder.set_hist(hist);
        }

        if let Some(ref sig_bit) = image.sig_bit {
            encoder.set_sbit(sig_bit);
        }

        for unknown in &image.unknowns {
            encoder.add_chunk(unknown.clone());
        }
    }
}
