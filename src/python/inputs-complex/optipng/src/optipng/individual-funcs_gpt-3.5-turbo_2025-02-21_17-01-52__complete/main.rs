use std::ffi::CStr;

fn app_printf(msg: &str) {
    println!("{}", msg);
}

fn main() {
    let msg_intro = "OptiPNG version 0.7.6\nCopyright (C) 2001-2016 Cosmin Truta and the Contributing Authors.\n";
    let msg_license = "This program is open-source software. See LICENSE for more details.\n\nPortions of this software are based in part on the work of:\nJean-loup Gailly and Mark Adler (zlib)\nGlenn Randers-Pehrson and the PNG Development Group (libpng)\nMiyasaka Masaru (BMP support)\nDavid Koblas (GIF support)\n";
    
    // Print intro message
    app_printf(msg_intro);

    // Print license information
    app_printf(msg_license);

    // Additional logic can be added here as needed
}
