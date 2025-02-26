struct OpngImageStruct {
    width: u32,
    height: u32,
    bit_depth: i32,
    color_type: i32,
    compression_type: i32,
    filter_type: i32,
    interlace_type: i32,
    row_pointers: Vec<Vec<u8>>, // Assuming row_pointers is a 2D array of bytes
    palette: Option<Vec<PngColor>>, // Assuming palette is an optional vector of colors
    num_palette: i32,
    background_ptr: Option<PngColor16>, // Assuming background_ptr is an optional color
    background: PngColor16,
    hist: Option<Vec<u16>>, // Assuming hist is an optional vector of u16
    sig_bit_ptr: Option<PngColor8>, // Assuming sig_bit_ptr is an optional color
    sig_bit: PngColor8,
    trans_alpha: Option<Vec<u8>>, // Assuming trans_alpha is an optional vector of bytes
    num_trans: i32,
    trans_color_ptr: Option<PngColor16>, // Assuming trans_color_ptr is an optional color
    trans_color: PngColor16,
    unknowns: Option<Vec<PngUnknownChunk>>, // Assuming unknowns is an optional vector of unknown chunks
    num_unknowns: i32,
}

struct PngColor {
    red: u8,
    green: u8,
    blue: u8,
}

struct PngColor16 {
    index: u8,
    red: u16,
    green: u16,
    blue: u16,
    gray: u16,
}

struct PngColor8 {
    red: u8,
    green: u8,
    blue: u8,
    gray: u8,
    alpha: u8,
}

struct PngUnknownChunk {
    name: [u8; 5],
    data: Vec<u8>,
    size: usize,
    location: u8,
}

static mut IMAGE: OpngImageStruct = OpngImageStruct {
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
    background: PngColor16 { index: 0, red: 0, green: 0, blue: 0, gray: 0 },
    hist: None,
    sig_bit_ptr: None,
    sig_bit: PngColor8 { red: 0, green: 0, blue: 0, gray: 0, alpha: 0 },
    trans_alpha: None,
    num_trans: 0,
    trans_color_ptr: None,
    trans_color: PngColor16 { index: 0, red: 0, green: 0, blue: 0, gray: 0 },
    unknowns: None,
    num_unknowns: 0,
};

fn opng_print_image_info(show_dim: i32, show_depth: i32, show_type: i32, show_interlaced: i32) {
    static TYPE_CHANNELS: [i32; 8] = [1, 0, 3, 1, 2, 0, 4, 0];
    let mut channels;
    let mut printed = false;

    unsafe {
        if show_dim != 0 {
            printed = true;
            println!("{}x{} pixels", IMAGE.width, IMAGE.height);
        }
        if show_depth != 0 {
            if printed {
                print!(", ");
            }
            printed = true;
            channels = TYPE_CHANNELS[(IMAGE.color_type & 7) as usize];
            if channels != 1 {
                println!("{}x{} bits/pixel", channels, IMAGE.bit_depth);
            } else if IMAGE.bit_depth != 1 {
                println!("{} bits/pixel", IMAGE.bit_depth);
            } else {
                println!("1 bit/pixel");
            }
        }
        if show_type != 0 {
            if printed {
                print!(", ");
            }
            printed = true;
            if IMAGE.color_type & 1 != 0 {
                if IMAGE.num_palette == 1 {
                    println!("1 color");
                } else {
                    println!("{} colors", IMAGE.num_palette);
                }
                if IMAGE.num_trans > 0 {
                    println!(" ({} transparent)", IMAGE.num_trans);
                }
                println!(" in palette");
            } else {
                println!("{}", if IMAGE.color_type & 2 != 0 { "RGB" } else { "grayscale" });
                if IMAGE.color_type & 4 != 0 {
                    println!(" +alpha");
                } else if IMAGE.trans_color_ptr.is_some() {
                    println!(" +transparency");
                }
            }
        }
        if show_interlaced != 0 {
            if IMAGE.interlace_type != 0 {
                if printed {
                    print!(", ");
                }
                println!("interlaced");
            }
        }
    }
}
