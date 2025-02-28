#![allow(unaligned_references)]
extern crate png;

use png::{BitDepth, ColorType, Decoder, OutputInfo};
use std::fs::File;
use std::io::BufReader;

#[repr(C, packed)]struct OpngImage {
    width: u32,
    height: u32,
    bit_depth: BitDepth,
    color_type: ColorType,
    row_pointers: Vec<Vec<u8>>,
    palette: Option<Vec<png::Color>>,
    num_palette: usize,
    background: Option<png::Color>,
    hist: Option<Vec<u16>>,
    sig_bit: Option<png::ColorType>,
    trans_alpha: Option<Vec<u8>>,
    num_trans: usize,
    trans_color: Option<png::Color>,
    unknowns: Vec<png::Chunk>,
}

impl OpngImage {
#[no_mangle]
#[no_mangle]
    fn new() -> Self {
        OpngImage {
            width: 0,
            height: 0,
            bit_depth: BitDepth::Eight,
            color_type: ColorType::Grayscale,
            row_pointers: Vec::new(),
            palette: None,
            num_palette: 0,
            background: None,
            hist: None,
            sig_bit: None,
            trans_alpha: None,
            num_trans: 0,
            trans_color: None,
            unknowns: Vec::new(),
        }
    }
}

#[no_mangle]
#[no_mangle]
fn opng_load_image_info(file_path: &str, load_meta: bool) -> Result<OpngImage, Box<dyn std::error::Error>> {
    let file = File::open(file_path)?;
    let decoder = Decoder::new(BufReader::new(file));
    let (info, mut reader) = decoder.read_info()?;

    let mut image = OpngImage::new();
    image.width = info.width;
    image.height = info.height;
    image.bit_depth = info.bit_depth;
    image.color_type = info.color_type;

    let mut buf = vec![0; info.buffer_size()];
    reader.next_frame(&mut buf)?;

    image.row_pointers = buf.chunks(info.line_size).map(|line| line.to_vec()).collect();

    if let Some(palette) = reader.info().palette.clone() {
        image.palette = Some(palette);
        image.num_palette = image.palette.as_ref().unwrap().len();
    }

    if let Some(transparency) = reader.info().trns.clone() {
        image.trans_alpha = Some(transparency);
        image.num_trans = image.trans_alpha.as_ref().unwrap().len();
    }

    if load_meta {
        if let Some(background) = reader.info().background {
            image.background = Some(background);
        }

        if let Some(hist) = reader.info().histogram.clone() {
            image.hist = Some(hist);
        }

        if let Some(sig_bit) = reader.info().sbit {
            image.sig_bit = Some(sig_bit);
        }

        image.unknowns = reader.info().unknown_chunks.clone();
    }

    Ok(image)
}
