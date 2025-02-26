use std::mem::MaybeUninit;

static mut PROCESS: MaybeUninit<ProcessStruct> = MaybeUninit::uninit();
static mut READ_PTR: *mut png_struct = std::ptr::null_mut();

#[repr(C)]
struct ProcessStruct {
    status: u32,
    num_iterations: i32,
    in_datastream_offset: i64,
    in_file_size: u64,
    out_file_size: u64,
    in_idat_size: u64,
    out_idat_size: u64,
    best_idat_size: u64,
    max_idat_size: u64,
    in_plte_trns_size: u32,
    out_plte_trns_size: u32,
    reductions: u32,
    compr_level_set: u32,
    mem_level_set: u32,
    strategy_set: u32,
    filter_set: u32,
    best_compr_level: i32,
    best_mem_level: i32,
    best_strategy: i32,
    best_filter: i32,
}

unsafe extern "C" fn opng_error(png_ptr: *mut png_struct, msg: *const i8) {
    if png_ptr == READ_PTR {
        let process = PROCESS.assume_init_mut();
        process.status |= INPUT_HAS_ERRORS | OUTPUT_NEEDS_NEW_IDAT;
    }
    panic!("{}", std::ffi::CStr::from_ptr(msg).to_string_lossy());
}

const INPUT_HAS_ERRORS: u32 = 0x0100;
const OUTPUT_NEEDS_NEW_IDAT: u32 = 0x2000;