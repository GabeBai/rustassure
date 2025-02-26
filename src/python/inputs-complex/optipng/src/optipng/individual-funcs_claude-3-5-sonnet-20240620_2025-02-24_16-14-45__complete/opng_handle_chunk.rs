use std::cmp::Ordering;
use std::ffi::c_void;

#[repr(C)]
struct OpngOptions {
    backup: i32,
    clobber: i32,
    debug: i32,
    fix: i32,
    force: i32,
    full: i32,
    preserve: i32,
    quiet: i32,
    simulate: i32,
    verbose: i32,
    out_name: *const i8,
    dir_name: *const i8,
    log_name: *const i8,
    interlace: i32,
    nb: i32,
    nc: i32,
    np: i32,
    nz: i32,
    optim_level: i32,
    compr_level_set: u32,
    mem_level_set: u32,
    strategy_set: u32,
    filter_set: u32,
    window_bits: i32,
    snip: i32,
    strip_all: i32,
}

type PngByte = u8;
type PngUint32 = u32;
type PngBytep = *mut PngByte;
type PngStructp = *mut c_void;

static mut PROCESS: OpngProcessStruct = OpngProcessStruct {
    status: 0,
    num_iterations: 0,
    in_datastream_offset: 0,
    in_file_size: 0,
    out_file_size: 0,
    in_idat_size: 0,
    out_idat_size: 0,
    best_idat_size: 0,
    max_idat_size: 0,
    in_plte_trns_size: 0,
    out_plte_trns_size: 0,
    reductions: 0,
    compr_level_set: 0,
    mem_level_set: 0,
    strategy_set: 0,
    filter_set: 0,
    best_compr_level: 0,
    best_mem_level: 0,
    best_strategy: 0,
    best_filter: 0,
};

static mut OPTIONS: OpngOptions = OpngOptions {
    backup: 0,
    clobber: 0,
    debug: 0,
    fix: 0,
    force: 0,
    full: 0,
    preserve: 0,
    quiet: 0,
    simulate: 0,
    verbose: 0,
    out_name: std::ptr::null(),
    dir_name: std::ptr::null(),
    log_name: std::ptr::null(),
    interlace: 0,
    nb: 0,
    nc: 0,
    np: 0,
    nz: 0,
    optim_level: 0,
    compr_level_set: 0,
    mem_level_set: 0,
    strategy_set: 0,
    filter_set: 0,
    window_bits: 0,
    snip: 0,
    strip_all: 0,
};

const SIG_BKGD: [PngByte; 4] = [0x62, 0x4b, 0x47, 0x44];
const SIG_HIST: [PngByte; 4] = [0x68, 0x49, 0x53, 0x54];
const SIG_SBIT: [PngByte; 4] = [0x73, 0x42, 0x49, 0x54];
const SIG_DSIG: [PngByte; 4] = [0x64, 0x53, 0x49, 0x47];
const SIG_FDAT: [PngByte; 4] = [0x66, 0x64, 0x41, 0x54];

extern "C" {
    fn opng_is_image_chunk(chunk_type: PngBytep) -> i32;
    fn opng_set_keep_unknown_chunk(png_ptr: PngStructp, keep: i32, chunk_type: PngBytep);
    fn opng_is_apng_chunk(chunk_type: PngBytep) -> i32;
}

#[no_mangle]
unsafe extern "C" fn opng_handle_chunk(png_ptr: PngStructp, chunk_type: PngBytep) {
    let mut keep: i32;

    if opng_is_image_chunk(chunk_type) != 0 {
        return;
    }

    if OPTIONS.strip_all != 0 {
        PROCESS.status |= INPUT_HAS_STRIPPED_DATA | INPUT_HAS_JUNK;
        opng_set_keep_unknown_chunk(png_ptr, 1, chunk_type);
        return;
    }

    if chunk_type.cast::<[PngByte; 4]>().cmp(&SIG_BKGD) == Ordering::Equal ||
       chunk_type.cast::<[PngByte; 4]>().cmp(&SIG_HIST) == Ordering::Equal ||
       chunk_type.cast::<[PngByte; 4]>().cmp(&SIG_SBIT) == Ordering::Equal {
        return;
    }

    keep = 3;

    if chunk_type.cast::<[PngByte; 4]>().cmp(&SIG_DSIG) == Ordering::Equal {
        PROCESS.status |= INPUT_HAS_DIGITAL_SIGNATURE;
    } else if opng_is_apng_chunk(chunk_type) != 0 {
        PROCESS.status |= INPUT_HAS_APNG;
        if chunk_type.cast::<[PngByte; 4]>().cmp(&SIG_FDAT) == Ordering::Equal {
            PROCESS.status |= INPUT_HAS_MULTIPLE_IMAGES;
        }
        if OPTIONS.snip != 0 {
            PROCESS.status |= INPUT_HAS_JUNK;
            keep = 1;
        }
    }

    opng_set_keep_unknown_chunk(png_ptr, keep, chunk_type);
}