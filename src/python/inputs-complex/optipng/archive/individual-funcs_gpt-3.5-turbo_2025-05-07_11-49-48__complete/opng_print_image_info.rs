use std::os::raw::c_char;

struct OpngImage {
    width: u32,
    height: u32,
    bit_depth: i32,
    color_type: i32,
    compression_type: i32,
    filter_type: i32,
    interlace_type: i32,
    // Add other fields as needed
}

fn usr_printf(fmt: &str) {
    println!("{}", fmt);
}

fn opng_print_image_info(image: &OpngImage, show_dim: bool, show_depth: bool, show_type: bool, show_interlaced: bool) {
    let type_channels = [1, 0, 3, 1, 2, 0, 4, 0];
    let mut printed = false;

    if show_dim {
        printed = true;
        usr_printf(&format!("{}x{} pixels", image.width, image.height));
    }

    if show_depth {
        if printed {
            usr_printf(", ");
        }
        printed = true;

        let channels = type_channels[(image.color_type & 7) as usize];
        if channels != 1 {
            usr_printf(&format!("{}x{} bits/pixel", channels, image.bit_depth));
        } else if image.bit_depth != 1 {
            usr_printf(&format!("{} bits/pixel", image.bit_depth));
        } else {
            usr_printf("1 bit/pixel");
        }
    }

    if show_type {
        if printed {
            usr_printf(", ");
        }
        printed = true;

        if image.color_type & 1 != 0 {
            if image.num_palette == 1 {
                usr_printf("1 color");
            } else {
                usr_printf(&format!("{} colors", image.num_palette));
            }

            if image.num_trans > 0 {
                usr_printf(&format(" ({}) transparent", image.num_trans));
            }

            usr_printf(" in palette");
        } else {
            usr_printf(if image.color_type & 2 != 0 { "RGB" } else { "grayscale" });

            if image.color_type & 4 != 0 {
                usr_printf("+alpha");
            } else if image.trans_color_ptr.is_some() {
                usr_printf("+transparency");
            }
        }
    }

    if show_interlaced && image.interlace_type != 0 {
        if printed {
            usr_printf(", ");
        }
        usr_printf("interlaced");
    }
}

fn main() {
    let image = OpngImage {
        width: 100,
        height: 200,
        bit_depth: 8,
        color_type: 3,
        compression_type: 0,
        filter_type: 0,
        interlace_type: 1,
    };

    opng_print_image_info(&image, true, true, true, true);
}
