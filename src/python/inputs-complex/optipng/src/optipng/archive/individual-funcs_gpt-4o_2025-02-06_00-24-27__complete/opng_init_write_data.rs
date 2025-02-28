#![allow(unaligned_references)]
#[allow(non_camel_case_types)]
type osys_fsize_t = u64;
#[allow(non_camel_case_types)]
type png_uint_32 = u32;
#[allow(non_camel_case_types)]
type opng_bitset_t = u32;

#[repr(C, packed)]struct OpngProcessStruct {
    status: u32,
    num_iterations: i32,
    in_datastream_offset: i64,
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
    best_compr_level: i32,
    best_mem_level: i32,
    best_strategy: i32,
    best_filter: i32,
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

unsafe fn opng_init_write_data() {
    PROCESS.out_file_size = 0;
    PROCESS.out_plte_trns_size = 0;
    PROCESS.out_idat_size = 0;
}
