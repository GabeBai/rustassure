use std::ptr;
use std::ffi::CStr;
use std::os::raw::c_char;

// Assuming these are defined somewhere in your Rust code
struct Image {
    width: u32,
    height: u32,
    bit_depth: i32,
    color_type: i32,
    compression_type: i32,
    filter_type: i32,
    interlace_type: i32,
    row_pointers: *mut *mut u8,
    palette: *mut u8,
    num_palette: i32,
    trans_alpha: *mut u8,
    num_trans: i32,
    trans_color_ptr: *mut u8,
    background_ptr: *mut u8,
    hist: *mut u16,
    sig_bit_ptr: *mut u8,
    num_unknowns: i32,
    unknowns: *mut u8,
}

extern "C" {
    fn png_set_IHDR(
        png_ptr: *mut u8,
        info_ptr: *mut u8,
        width: u32,
        height: u32,
        bit_depth: i32,
        color_type: i32,
        interlace_type: i32,
        compression_type: i32,
        filter_type: i32,
    );
    fn png_set_rows(png_ptr: *mut u8, info_ptr: *mut u8, row_pointers: *mut *mut u8);
    fn png_set_PLTE(png_ptr: *mut u8, info_ptr: *mut u8, palette: *mut u8, num_palette: i32);
    fn png_set_tRNS(
        png_ptr: *mut u8,
        info_ptr: *mut u8,
        trans_alpha: *mut u8,
        num_trans: i32,
        trans_color_ptr: *mut u8,
    );
    fn png_set_bKGD(png_ptr: *mut u8, info_ptr: *mut u8, background_ptr: *mut u8);
    fn png_set_hIST(png_ptr: *mut u8, info_ptr: *mut u8, hist: *mut u16);
    fn png_set_sBIT(png_ptr: *mut u8, info_ptr: *mut u8, sig_bit_ptr: *mut u8);
    fn png_set_unknown_chunks(
        png_ptr: *mut u8,
        info_ptr: *mut u8,
        unknowns: *mut u8,
        num_unknowns: i32,
    );
    fn png_set_unknown_chunk_location(
        png_ptr: *mut u8,
        info_ptr: *mut u8,
        chunk: i32,
        location: u8,
    );
}

fn usr_panic(msg: &str) {
    eprintln!("{}", msg);
    std::process::exit(1);
}

fn opng_store_image_info(png_ptr: *mut u8, info_ptr: *mut u8, store_meta: bool, image: &Image) {
    if image.row_pointers.is_null() {
        usr_panic("No info in image");
    }

    unsafe {
        png_set_IHDR(
            png_ptr,
            info_ptr,
            image.width,
            image.height,
            image.bit_depth,
            image.color_type,
            image.interlace_type,
            image.compression_type,
            image.filter_type,
        );

        png_set_rows(png_ptr, info_ptr, image.row_pointers);

        if !image.palette.is_null() {
            png_set_PLTE(png_ptr, info_ptr, image.palette, image.num_palette);
        }

        if !image.trans_alpha.is_null() || !image.trans_color_ptr.is_null() {
            png_set_tRNS(
                png_ptr,
                info_ptr,
                image.trans_alpha,
                image.num_trans,
                image.trans_color_ptr,
            );
        }

        if !store_meta {
            return;
        }

        if !image.background_ptr.is_null() {
            png_set_bKGD(png_ptr, info_ptr, image.background_ptr);
        }

        if !image.hist.is_null() {
            png_set_hIST(png_ptr, info_ptr, image.hist);
        }

        if !image.sig_bit_ptr.is_null() {
            png_set_sBIT(png_ptr, info_ptr, image.sig_bit_ptr);
        }

        if image.num_unknowns != 0 {
            png_set_unknown_chunks(png_ptr, info_ptr, image.unknowns, image.num_unknowns);
            for i in 0..image.num_unknowns {
                png_set_unknown_chunk_location(png_ptr, info_ptr, i, *image.unknowns.add(i as usize));
            }
        }
    }
}
