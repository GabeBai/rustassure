use std::os::raw::{c_ulong, c_uint};

struct OpngProcessStruct {
    status: u32,
    num_iterations: i32,
    in_datastream_offset: i64, // Change from c_long to i64
    in_file_size: u64,
    out_file_size: u64,
    in_idat_size: u64,
    out_idat_size: u64,
    best_idat_size: u64,
    max_idat_size: u64,
    in_plte_trns_size: u32,
    out_plte_trns_size: u32,
    reductions: u32,
    compr_level_set: c_uint,
    mem_level_set: c_uint,
    strategy_set: c_uint,
    filter_set: c_uint,
    best_compr_level: i32,
    best_mem_level: i32,
    best_strategy: i32,
    best_filter: i32,
}
