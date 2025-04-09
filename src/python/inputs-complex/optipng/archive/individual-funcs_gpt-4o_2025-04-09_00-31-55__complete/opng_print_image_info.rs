use std::fmt::Write;

type PngByte = u8;
type PngUint16 = u16;
type PngUint32 = u32;
type PngSizeT = usize;
type PngBytePP = Vec<Vec<PngByte>>;
type PngColorP = Vec<PngColor>;
type PngUint16P = Vec<PngUint16>;
type PngColor16P = Vec<PngColor16>;
type PngColor8P = Vec<PngColor8>;
type PngUnknownChunkP = Vec<PngUnknownChunk>;

#[derive(Default)]
struct PngColor {
    red: PngByte,
    green: PngByte,
    blue: PngByte,
}

#[derive(Default)]
struct PngColor16 {
    index: PngByte,
    red: PngUint16,
    green: PngUint16,
    blue: PngUint16,
    gray: PngUint16,
}

#[derive(Default)]
struct PngColor8 {
    red: PngByte,
    green: PngByte,
    blue: PngByte,
    gray: PngByte,
    alpha: PngByte,
}

#[derive(Default)]
struct PngUnknownChunk {
    name: [PngByte; 5],
    data: Vec<PngByte>,
    size: PngSizeT,
    location: PngByte,
}

struct OpngImageStruct {
    width: PngUint32,
    height: PngUint32,
    bit_depth: i32,
    color_type: i32,
    compression_type: i32,
    filter_type: i32,
    interlace_type: i32,
    row_pointers: PngBytePP,
    palette: PngColorP,
    num_palette: i32,
    background_ptr: Option<PngColor16P>,
    background: PngColor16,
    hist: PngUint16P,
    sig_bit_ptr: Option<PngColor8P>,
    sig_bit: PngColor8,
    trans_alpha: Vec<PngByte>,
    num_trans: i32,
    trans_color_ptr: Option<PngColor16P>,
    trans_color: PngColor16,
    unknowns: PngUnknownChunkP,
    num_unknowns: i32,
}

impl OpngImageStruct {
    fn new() -> Self {
        OpngImageStruct {
            width: 0,
            height: 0,
            bit_depth: 0,
            color_type: 0,
            compression_type: 0,
            filter_type: 0,
            interlace_type: 0,
            row_pointers: vec![],
            palette: vec![],
            num_palette: 0,
            background_ptr: None,
            background: PngColor16::default(),
            hist: vec![],
            sig_bit_ptr: None,
            sig_bit: PngColor8::default(),
            trans_alpha: vec![],
            num_trans: 0,
            trans_color_ptr: None,
            trans_color: PngColor16::default(),
            unknowns: vec![],
            num_unknowns: 0,
        }
    }
}

fn opng_print_image_info(
    image: &OpngImageStruct,
    show_dim: bool,
    show_depth: bool,
    show_type: bool,
    show_interlaced: bool,
) {
    let type_channels = [1, 0, 3, 1, 2, 0, 4, 0];
    let mut printed = false;
    let mut output = String::new();

    if show_dim {
        printed = true;
        write!(
            output,
            "{}x{} pixels",
            image.width as u64, image.height as u64
        )
        .unwrap();
    }

    if show_depth {
        if printed {
            write!(output, ", ").unwrap();
        }
        printed = true;
        let channels = type_channels[(image.color_type & 7) as usize];
        if channels != 1 {
            write!(output, "{}x{} bits/pixel", channels, image.bit_depth).unwrap();
        } else if image.bit_depth != 1 {
            write!(output, "{} bits/pixel", image.bit_depth).unwrap();
        } else {
            write!(output, "1 bit/pixel").unwrap();
        }
    }

    if show_type {
        if printed {
            write!(output, ", ").unwrap();
        }
        printed = true;
        if image.color_type & 1 != 0 {
            if image.num_palette == 1 {
                write!(output, "1 color").unwrap();
            } else {
                write!(output, "{} colors", image.num_palette).unwrap();
            }
            if image.num_trans > 0 {
                write!(output, " ({} transparent)", image.num_trans).unwrap();
            }
            write!(output, " in palette").unwrap();
        } else {
            write!(
                output,
                "{}",
                if image.color_type & 2 != 0 {
                    "RGB"
                } else {
                    "grayscale"
                }
            )
            .unwrap();
            if image.color_type & 4 != 0 {
                write!(output, "+alpha").unwrap();
            } else if image.trans_color_ptr.is_some() {
                write!(output, "+transparency").unwrap();
            }
        }
    }

    if show_interlaced {
        if image.interlace_type != 0 {
            if printed {
                write!(output, ", ").unwrap();
            }
            write!(output, "interlaced").unwrap();
        }
    }

    println!("{}", output);
}

fn main() {
    let image = OpngImageStruct::new();
    opng_print_image_info(&image, true, true, true, true);
}
