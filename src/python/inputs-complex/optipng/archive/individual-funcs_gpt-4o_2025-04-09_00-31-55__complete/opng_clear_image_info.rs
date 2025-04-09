use std::mem::MaybeUninit;
use std::ptr;

type PngByte = u8;
type PngUint16 = u16;
type PngUint32 = u32;
type PngSizeT = usize;
type PngBytepp = *mut *mut PngByte;
type PngColorp = *mut PngColor;
type PngUint16p = *mut PngUint16;
type PngColor16p = *mut PngColor16;
type PngColor8p = *mut PngColor8;
type PngUnknownChunkp = *mut PngUnknownChunk;

#[repr(C)]
struct PngColor {
    red: PngByte,
    green: PngByte,
    blue: PngByte,
}

#[repr(C)]
struct PngColor16 {
    index: PngByte,
    red: PngUint16,
    green: PngUint16,
    blue: PngUint16,
    gray: PngUint16,
}

#[repr(C)]
struct PngColor8 {
    red: PngByte,
    green: PngByte,
    blue: PngByte,
    gray: PngByte,
    alpha: PngByte,
}

#[repr(C)]
struct PngUnknownChunk {
    name: [PngByte; 5],
    data: *mut PngByte,
    size: PngSizeT,
    location: PngByte,
}

#[repr(C)]
struct OpngImageStruct {
    width: PngUint32,
    height: PngUint32,
    bit_depth: i32,
    color_type: i32,
    compression_type: i32,
    filter_type: i32,
    interlace_type: i32,
    row_pointers: PngBytepp,
    palette: PngColorp,
    num_palette: i32,
    background_ptr: PngColor16p,
    background: PngColor16,
    hist: PngUint16p,
    sig_bit_ptr: PngColor8p,
    sig_bit: PngColor8,
    trans_alpha: *mut PngByte,
    num_trans: i32,
    trans_color_ptr: PngColor16p,
    trans_color: PngColor16,
    unknowns: PngUnknownChunkp,
    num_unknowns: i32,
}

static mut IMAGE: MaybeUninit<OpngImageStruct> = MaybeUninit::uninit();

unsafe fn opng_clear_image_info() {
    ptr::write_bytes(IMAGE.as_mut_ptr(), 0, 1);
}
