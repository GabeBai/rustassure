#[derive(Debug, Clone, Copy)]
struct PngColor {
    red: u8,
    green: u8,
    blue: u8,
}

#[derive(Debug, Clone, Copy)]
struct PngColor16 {
    index: u8,
    red: u16,
    green: u16,
    blue: u16,
    gray: u16,
}

struct OpngImage {
    width: u32,
    height: u32,
    bit_depth: i32,
    color_type: i32,
    compression_type: i32,
    filter_type: i32,
    interlace_type: i32,
    row_pointers: Vec<Vec<u8>>, // Assuming row pointers are a vector of byte vectors
    palette: Option<Vec<PngColor>>, // Assuming palette is optional
    num_palette: i32,
    background_ptr: Option<PngColor16>, // Assuming this is optional
    background: PngColor16,
    hist: Option<Vec<u16>>, // Assuming hist is optional
    sig_bit_ptr: Option<PngColor8>, // Assuming sig_bit_ptr is optional
    sig_bit: PngColor8,
    trans_alpha: Option<Vec<u8>>, // Assuming trans_alpha is optional
    num_trans: i32,
    trans_color_ptr: Option<PngColor16>, // Assuming this is optional
    trans_color: PngColor16,
    unknowns: Option<Vec<PngUnknownChunk>>, // Assuming unknowns is optional
    num_unknowns: i32,
}

#[derive(Debug, Clone)]
struct PngColor8 {
    red: u8,
    green: u8,
    blue: u8,
    gray: u8,
    alpha: u8,
}

#[derive(Debug, Clone)]
struct PngUnknownChunk {
    name: [u8; 5],
    data: Vec<u8>,
    size: usize,
    location: u8,
}

fn opng_clear_image_info(image: &mut OpngImage) {
    *image = OpngImage {
        width: 0,
        height: 0,
        bit_depth: 0,
        color_type: 0,
        compression_type: 0,
        filter_type: 0,
        interlace_type: 0,
        row_pointers: Vec::new(),
        palette: None,
        num_palette: 0,
        background_ptr: None,
        background: PngColor16 {
            index: 0,
            red: 0,
            green: 0,
            blue: 0,
            gray: 0,
        },
        hist: None,
        sig_bit_ptr: None,
        sig_bit: PngColor8 {
            red: 0,
            green: 0,
            blue: 0,
            gray: 0,
            alpha: 0,
        },
        trans_alpha: None,
        num_trans: 0,
        trans_color_ptr: None,
        trans_color: PngColor16 {
            index: 0,
            red: 0,
            green: 0,
            blue: 0,
            gray: 0,
        },
        unknowns: None,
        num_unknowns: 0,
    };
}
