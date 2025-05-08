use std::os::raw::{c_long, c_ulong};

#[repr(C)]
struct timespec {
    tv_sec: c_long,
    tv_nsec: c_long,
}

struct fd_set {
    __fds_bits: [c_long; 128],
}

#[repr(C)]
union pthread_attr_t {
    __size: [u8; 56],
    __align: c_long,
}

#[repr(C)]
struct opng_process_struct {
    status: u32,
    num_iterations: i32,
    in_datastream_offset: c_long,
    in_file_size: c_ulong,
    out_file_size: c_ulong,
    in_idat_size: c_ulong,
    out_idat_size: c_ulong,
    best_idat_size: c_ulong,
    max_idat_size: c_ulong,
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

fn opng_init_write_data() {
    unsafe {
        process.out_file_size = 0;
        process.out_plte_trns_size = 0;
        process.out_idat_size = 0;
    }
}
