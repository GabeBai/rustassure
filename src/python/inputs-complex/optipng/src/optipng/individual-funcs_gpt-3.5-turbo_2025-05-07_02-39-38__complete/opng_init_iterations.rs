use std::os::raw::{c_char, c_int, c_long, c_ulong};

type opng_bitset_t = u32;

const OPNG_BITSET_ELT_MIN: u32 = 0;
const OPNG_BITSET_ELT_MAX: u32 = (std::mem::size_of::<opng_bitset_t>() as u32 * 8) - 1;

fn opng_bitset_count(set: opng_bitset_t) -> u32 {
    set.count_ones()
}

struct timespec {
    tv_sec: c_long,
    tv_nsec: c_long,
}

struct fd_set {
    __fds_bits: [c_long; 128],
}

struct opng_options {
    backup: c_int,
    clobber: c_int,
    debug: c_int,
    fix: c_int,
    force: c_int,
    full: c_int,
    preserve: c_int,
    quiet: c_int,
    simulate: c_int,
    verbose: c_int,
    out_name: *const c_char,
    dir_name: *const c_char,
    log_name: *const c_char,
    interlace: c_int,
    nb: c_int,
    nc: c_int,
    np: c_int,
    nz: c_int,
    optim_level: c_int,
    compr_level_set: opng_bitset_t,
    mem_level_set: opng_bitset_t,
    strategy_set: opng_bitset_t,
    filter_set: opng_bitset_t,
    window_bits: c_int,
    snip: c_int,
    strip_all: c_int,
}

type png_byte = u8;
type png_uint_16 = u16;
type png_uint_32 = u32;
type png_size_t = usize;
type png_bytep = *mut png_byte;
type png_uint_16p = *mut png_uint_16;
type png_const_charp = *const c_char;
type png_bytepp = *mut *mut png_byte;

struct png_struct;
type png_structp = *mut png_struct;

struct png_color {
    red: png_byte,
    green: png_byte,
    blue: png_byte,
}

type png_colorp = *mut png_color;

struct png_color_16 {
    index: png_byte,
    red: png_uint_16,
    green: png_uint_16,
    blue: png_uint_16,
    gray: png_uint_16,
}

type png_color_16p = *mut png_color_16;

struct png_color_8 {
    red: png_byte,
    green: png_byte,
    blue: png_byte,
    gray: png_byte,
    alpha: png_byte,
}

type png_color_8p = *mut png_color_8;

struct png_unknown_chunk_t {
    name: [png_byte; 5],
    data: *mut png_byte,
    size: png_size_t,
    location: png_byte,
}

type png_unknown_chunkp = *mut png_unknown_chunk_t;

type osys_foffset_t = c_long;
type osys_fsize_t = c_ulong;

struct opng_process_struct {
    status: u32,
    num_iterations: c_int,
    in_datastream_offset: osys_foffset_t,
    in_file_size: osys_fsize_t,
    out_file_size: osys_fsize_t,
    in_idat_size: osys_fsize_t,
    out_idat_size: osys_fsize_t,
    best_idat_size: osys_fsize_t,
    max_idat_size: osys_fsize_t,
    in_plte_trns_size: png_uint_32,
    out_plte_trns_size: png_uint_32,
    reductions: png_uint_32,
    compr_level_set: opng_bitset_t,
    mem_level_set: opng_bitset_t,
    strategy_set: opng_bitset_t,
    filter_set: opng_bitset_t,
    best_compr_level: c_int,
    best_mem_level: c_int,
    best_strategy: c_int,
    best_filter: c_int,
}

static mut process: opng_process_struct = opng_process_struct {
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

const idat_size_max: png_uint_32 = 0x7fffffff;

struct opng_image_struct {
    width: png_uint_32,
    height: png_uint_32,
    bit_depth: c_int,
    color_type: c_int,
    compression_type: c_int,
    filter_type: c_int,
    interlace_type: c_int,
    row_pointers: png_bytepp,
    palette: png_colorp,
    num_palette: c_int,
    background_ptr: png_color_16p,
    background: png_color_16,
    hist: png_uint_16p,
    sig_bit_ptr: png_color_8p,
    sig_bit: png_color_8,
    trans_alpha: png_bytep,
    num_trans: c_int,
    trans_color_ptr: png_color_16p,
    trans_color: png_color_16,
    unknowns: png_unknown_chunkp,
    num_unknowns: c_int,
}

static mut image: opng_image_struct = opng_image_struct {
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
    background: png_color_16 {
        index: 0,
        red: 0,
        green: 0,
        blue: 0,
        gray: 0,
    },
    hist: std::ptr::null_mut(),
    sig_bit_ptr: std::ptr::null_mut(),
    sig_bit: png_color_8 {
        red: 0,
        green: 0,
        blue: 0,
        gray: 0,
        alpha: 0,
    },
    trans_alpha: std::ptr::null_mut(),
    num_trans: 0,
    trans_color_ptr: std::ptr::null_mut(),
    trans_color: png_color_16 {
        index: 0,
        red: 0,
        green: 0,
        blue: 0,
        gray: 0,
    },
    unknowns: std::ptr::null_mut(),
    num_unknowns: 0,
};

static mut options: opng_options = opng_options {
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

fn usr_panic(msg: *const c_char) {
    panic!("User panic: {:?}", msg);
}

fn opng_init_iterations() {
    let mut compr_level_set: opng_bitset_t = 0;
    let mut mem_level_set: opng_bitset_t = 0;
    let mut strategy_set: opng_bitset_t = 0;
    let mut filter_set: opng_bitset_t = 0;
    let strategy_singles_set: opng_bitset_t;
    let preset_index: c_int;
    let mut t1: c_int;
    let mut t2: c_int;

    if (unsafe { process.status } & OUTPUT_NEEDS_NEW_IDAT != 0) || options.full != 0 {
        unsafe {
            process.max_idat_size = idat_size_max;
        }
    } else {
        if unsafe { process.in_idat_size } <= 0 {
            usr_panic("No IDAT in input".as_ptr());
        }
        unsafe {
            process.max_idat_size = process.in_idat_size + process.in_plte_trns_size;
        }
    }

    preset_index = options.optim_level;
    if preset_index < 0 {
        preset_index = 2;
    } else if preset_index > 7 {
        preset_index = 7;
    }

    opng_init_iteration(options.compr_level_set, (1 << (9 + 1)) - (1 << 1), presets[preset_index].compr_level, &mut compr_level_set);
    opng_init_iteration(options.mem_level_set, (1 << (9 + 1)) - (1 << 1), presets[preset_index].mem_level, &mut mem_level_set);
    opng_init_iteration(options.strategy_set, (1 << (3 + 1)) - (1 << 0), presets[preset_index].strategy, &mut strategy_set);
    opng_init_iteration(options.filter_set, (1 << (5 + 1)) - (1 << 0), presets[preset_index].filter, &mut filter_set);

    if compr_level_set == 0 {
        unsafe {
            compr_level_set |= 1 << 9;
        }
    }
    if mem_level_set == 0 {
        unsafe {
            mem_level_set |= 1 << 8;
        }
    }

    if image.bit_depth < 8 || !image.palette.is_null() {
        if strategy_set == 0 {
            unsafe {
                strategy_set |= 1 << 0;
            }
        }
        if filter_set == 0 {
            unsafe {
                filter_set |= 1 << 0;
            }
        }
    } else {
        if strategy_set == 0 {
            unsafe {
                strategy_set |= 1 << 1;
            }
        }
        if filter_set == 0 {
            unsafe {
                filter_set |= 1 << 5;
            }
        }
    }

    unsafe {
        process.compr_level_set = compr_level_set;
        process.mem_level_set = mem_level_set;
        process.strategy_set = strategy_set;
        process.filter_set = filter_set;
    }

    strategy_singles_set = (1 << 2) | (1 << 3);
    t1 = opng_bitset_count(compr_level_set) * opng_bitset_count(strategy_set & !strategy_singles_set);
    t2 = opng_bitset_count(strategy_set & strategy_singles_set);
    unsafe {
        process.num_iterations = (t1 + t2) * opng_bitset_count(mem_level_set) * opng_bitset_count(filter_set);
    }

    if unsafe { process.num_iterations } <= 0 {
        usr_panic("Invalid iteration parameters".as_ptr());
    }
}
