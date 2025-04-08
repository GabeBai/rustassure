struct Image {
    width: u32,
    height: u32,
    bit_depth: i32,
    color_type: i32,
    num_palette: i32,
    num_trans: i32,
    trans_color_ptr: Option<()>,
    interlace_type: i32,
}

fn opng_print_image_info(
    image: &Image,
    show_dim: bool,
    show_depth: bool,
    show_type: bool,
    show_interlaced: bool,
) {
    let type_channels = [1, 0, 3, 1, 2, 0, 4, 0];
    let mut printed = false;

    if show_dim {
        printed = true;
        println!("{}x{} pixels", image.width, image.height);
    }

    if show_depth {
        if printed {
            print!(", ");
        }
        printed = true;
        let channels = type_channels[(image.color_type & 7) as usize];
        if channels != 1 {
            print!("{}x{} bits/pixel", channels, image.bit_depth);
        } else if image.bit_depth != 1 {
            print!("{} bits/pixel", image.bit_depth);
        } else {
            print!("1 bit/pixel");
        }
    }

    if show_type {
        if printed {
            print!(", ");
        }
        printed = true;
        if image.color_type & 1 != 0 {
            if image.num_palette == 1 {
                print!("1 color");
            } else {
                print!("{} colors", image.num_palette);
            }
            if image.num_trans > 0 {
                print!(" ({} transparent)", image.num_trans);
            }
            print!(" in palette");
        } else {
            print!(
                "{}",
                if image.color_type & 2 != 0 {
                    "RGB"
                } else {
                    "grayscale"
                }
            );
            if image.color_type & 4 != 0 {
                print!("+alpha");
            } else if image.trans_color_ptr.is_some() {
                print!("+transparency");
            }
        }
    }

    if show_interlaced {
        if image.interlace_type != 0 {
            if printed {
                print!(", ");
            }
            println!("interlaced");
        }
    }
}

fn main() {
    let image = Image {
        width: 800,
        height: 600,
        bit_depth: 8,
        color_type: 2,
        num_palette: 0,
        num_trans: 0,
        trans_color_ptr: None,
        interlace_type: 1,
    };

    opng_print_image_info(&image, true, true, true, true);
}
