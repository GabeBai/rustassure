#[repr(C)]
struct OpngProcessStruct {
    status: u32,
    num_iterations: i32,
    in_datastream_offset: i64, // osys_foffset_t
    in_file_size: u64,         // osys_fsize_t
    out_file_size: u64,        // osys_fsize_t
    in_idat_size: u64,         // osys_fsize_t
    out_idat_size: u64,        // osys_fsize_t
    best_idat_size: u64,       // osys_fsize_t
    max_idat_size: u64,        // osys_fsize_t
    in_plte_trns_size: u32,
    out_plte_trns_size: u32,
    reductions: u32,
    compr_level_set: u32,      // opng_bitset_t
    mem_level_set: u32,        // opng_bitset_t
    strategy_set: u32,         // opng_bitset_t
    filter_set: u32,           // opng_bitset_t
    best_compr_level: i32,
    best_mem_level: i32,
    best_strategy: i32,
    best_filter: i32,
}

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
    out_name: *const i8, // const char *
    dir_name: *const i8, // const char *
    log_name: *const i8, // const char *
    interlace: i32,
    nb: i32,
    nc: i32,
    np: i32,
    nz: i32,
    optim_level: i32,
    compr_level_set: u32, // opng_bitset_t
    mem_level_set: u32,   // opng_bitset_t
    strategy_set: u32,    // opng_bitset_t
    filter_set: u32,      // opng_bitset_t
    window_bits: i32,
    snip: i32,
    strip_all: i32,
}

// Define static mutable instances
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
