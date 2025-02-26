use std::mem::size_of;

type OpngBitsetT = u32;

const OPNG_BITSET_ELT_MIN: i32 = 0;
const OPNG_BITSET_ELT_MAX: i32 = (size_of::<OpngBitsetT>() * 8 - 1) as i32;

#[repr(C)]
struct OpngPreset {
    compr_level: &'static str,
    mem_level: &'static str,
    strategy: &'static str,
    filter: &'static str,
}

const PRESETS: [OpngPreset; 8] = [
    OpngPreset { compr_level: "", mem_level: "", strategy: "", filter: "" },
    OpngPreset { compr_level: "", mem_level: "", strategy: "", filter: "" },
    OpngPreset { compr_level: "9", mem_level: "8", strategy: "0-", filter: "0,5" },
    OpngPreset { compr_level: "9", mem_level: "8-9", strategy: "0-", filter: "0,5" },
    OpngPreset { compr_level: "9", mem_level: "8", strategy: "0-", filter: "0-" },
    OpngPreset { compr_level: "9", mem_level: "8-9", strategy: "0-", filter: "0-" },
    OpngPreset { compr_level: "1-9", mem_level: "8", strategy: "0-", filter: "0-" },
    OpngPreset { compr_level: "1-9", mem_level: "8-9", strategy: "0-", filter: "0-" },
];

const INPUT_IS_PNG_FILE: u32 = 0x0001;
const INPUT_HAS_PNG_DATASTREAM: u32 = 0x0002;
const INPUT_HAS_PNG_SIGNATURE: u32 = 0x0004;
const INPUT_HAS_DIGITAL_SIGNATURE: u32 = 0x0008;
const INPUT_HAS_MULTIPLE_IMAGES: u32 = 0x0010;
const INPUT_HAS_APNG: u32 = 0x0020;
const INPUT_HAS_STRIPPED_DATA: u32 = 0x0040;
const INPUT_HAS_JUNK: u32 = 0x0080;
const INPUT_HAS_ERRORS: u32 = 0x0100;
const OUTPUT_NEEDS_NEW_FILE: u32 = 0x1000;
const OUTPUT_NEEDS_NEW_IDAT: u32 = 0x2000;
const OUTPUT_HAS_ERRORS: u32 = 0x4000;

#[repr(C)]
struct OpngProcessStruct {
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
    compr_level_set: OpngBitsetT,
    mem_level_set: OpngBitsetT,
    strategy_set: OpngBitsetT,
    filter_set: OpngBitsetT,
    best_compr_level: i32,
    best_mem_level: i32,
    best_strategy: i32,
    best_filter: i32,
}

#[repr(C)]
struct OpngImageStruct {
    width: u32,
    height: u32,
    bit_depth: i32,
    color_type: i32,
    compression_type: i32,
    filter_type: i32,
    interlace_type: i32,
    row_pointers: *mut *mut u8,
    palette: *mut PngColor,
    num_palette: i32,
    background_ptr: *mut PngColor16,
    background: PngColor16,
    hist: *mut u16,
    sig_bit_ptr: *mut PngColor8,
    sig_bit: PngColor8,
    trans_alpha: *mut u8,
    num_trans: i32,
    trans_color_ptr: *mut PngColor16,
    trans_color: PngColor16,
    unknowns: *mut PngUnknownChunk,
    num_unknowns: i32,
}

#[repr(C)]
struct OpngOptions {
    // Fields omitted for brevity
}

#[repr(C)]
struct PngColor {
    red: u8,
    green: u8,
    blue: u8,
}

#[repr(C)]
struct PngColor16 {
    index: u8,
    red: u16,
    green: u16,
    blue: u16,
    gray: u16,
}

#[repr(C)]
struct PngColor8 {
    red: u8,
    green: u8,
    blue: u8,
    gray: u8,
    alpha: u8,
}

#[repr(C)]
struct PngUnknownChunk {
    name: [u8; 5],
    data: *mut u8,
    size: usize,
    location: u8,
}

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

static mut IMAGE: OpngImageStruct = OpngImageStruct {
    width: 0,
    height: 0,
    bit_depth: 0,
    color_type: 0,
    compression_type: 0,
    filter_type: 0,
    interlace_type: 0,
    row_pointers: std::ptr::null_mut(),
    palette: std::ptr::null_mut(),
    num_palette: 0,
    background_ptr: std::ptr::null_mut(),
    background: PngColor16 { index: 0, red: 0, green: 0, blue: 0, gray: 0 },
    hist: std::ptr::null_mut(),
    sig_bit_ptr: std::ptr::null_mut(),
    sig_bit: PngColor8 { red: 0, green: 0, blue: 0, gray: 0, alpha: 0 },
    trans_alpha: std::ptr::null_mut(),
    num_trans: 0,
    trans_color_ptr: std::ptr::null_mut(),
    trans_color: PngColor16 { index: 0, red: 0, green: 0, blue: 0, gray: 0 },
    unknowns: std::ptr::null_mut(),
    num_unknowns: 0,
};

static mut OPTIONS: OpngOptions = OpngOptions {
    // Fields omitted for brevity
};

static mut USR_PANIC: Option<fn(&str)> = None;

const IDAT_SIZE_MAX: u64 = 0x7fffffff;

extern "C" {
    fn opng_init_iteration(
        set: OpngBitsetT,
        max_set: OpngBitsetT,
        str: *const i8,
        result: *mut OpngBitsetT,
    );
    fn opng_bitset_count(set: OpngBitsetT) -> u32;
}

unsafe fn opng_init_iterations() {
    let mut compr_level_set: OpngBitsetT = 0;
    let mut mem_level_set: OpngBitsetT = 0;
    let mut strategy_set: OpngBitsetT = 0;
    let mut filter_set: OpngBitsetT = 0;
    let mut strategy_singles_set: OpngBitsetT;
    let mut preset_index: i32;
    let mut t1: u32;
    let mut t2: u32;

    if (PROCESS.status & OUTPUT_NEEDS_NEW_IDAT != 0) || OPTIONS.full != 0 {
        PROCESS.max_idat_size = IDAT_SIZE_MAX;
    } else {
        if PROCESS.in_idat_size == 0 {
            if let Some(panic_fn) = USR_PANIC {
                panic_fn("No IDAT in input");
            }
        }
        PROCESS.max_idat_size = PROCESS.in_idat_size + PROCESS.in_plte_trns_size as u64;
    }

    preset_index = OPTIONS.optim_level;
    if preset_index < 0 {
        preset_index = 2;
    } else if preset_index > 7 {
        preset_index = 7;
    }

    opng_init_iteration(
        OPTIONS.compr_level_set,
        (1 << (9 + 1)) - (1 << 1),
        PRESETS[preset_index as usize].compr_level.as_ptr() as *const i8,
        &mut compr_level_set,
    );
    opng_init_iteration(
        OPTIONS.mem_level_set,
        (1 << (9 + 1)) - (1 << 1),
        PRESETS[preset_index as usize].mem_level.as_ptr() as *const i8,
        &mut mem_level_set,
    );
    opng_init_iteration(
        OPTIONS.strategy_set,
        (1 << (3 + 1)) - (1 << 0),
        PRESETS[preset_index as usize].strategy.as_ptr() as *const i8,
        &mut strategy_set,
    );
    opng_init_iteration(
        OPTIONS.filter_set,
        (1 << (5 + 1)) - (1 << 0),
        PRESETS[preset_index as usize].filter.as_ptr() as *const i8,
        &mut filter_set,
    );

    if compr_level_set == 0 {
        compr_level_set |= 1 << 9;
    }
    if mem_level_set == 0 {
        mem_level_set |= 1 << 8;
    }

    if IMAGE.bit_depth < 8 || !IMAGE.palette.is_null() {
        if strategy_set == 0 {
            strategy_set |= 1 << 0;
        }
        if filter_set == 0 {
            filter_set |= 1 << 0;
        }
    } else {
        if strategy_set == 0 {
            strategy_set |= 1 << 1;
        }
        if filter_set == 0 {
            filter_set |= 1 << 5;
        }
    }

    PROCESS.compr_level_set = compr_level_set;
    PROCESS.mem_level_set = mem_level_set;
    PROCESS.strategy_set = strategy_set;
    PROCESS.filter_set = filter_set;

    strategy_singles_set = (1 << 2) | (1 << 3);
    t1 = opng_bitset_count(compr_level_set)
        * opng_bitset_count(strategy_set & !strategy_singles_set);
    t2 = opng_bitset_count(strategy_set & strategy_singles_set);
    PROCESS.num_iterations = ((t1 + t2) * opng_bitset_count(mem_level_set) * opng_bitset_count(filter_set)) as i32;

    if PROCESS.num_iterations == 0 {
        if let Some(panic_fn) = USR_PANIC {
            panic_fn("Invalid iteration parameters");
        }
    }
}
