#[repr(C)]
struct OSUnalignedU16 {
    __val: u16,
}

#[repr(C)]
struct OSUnalignedU32 {
    __val: u32,
}

#[repr(C)]
struct OSUnalignedU64 {
    __val: u64,
}

struct Wait {
    w_status: i32,
    w_T: W_T,
    w_S: W_S,
}

struct W_T {
    w_Termsig: u32,
    w_Coredump: u32,
    w_Retcode: u32,
    w_Filler: u32,
}

struct W_S {
    w_Stopval: u32,
    w_Stopsig: u32,
    w_Filler: u32,
}

#[repr(C)]
struct FDSet {
    fds_bits: [i32; 32], // Assuming 1024 bits
}

struct Timespec {
    tv_sec: i64,
    tv_nsec: i64,
}

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
    compr_level_set: u32,
    mem_level_set: u32,
    strategy_set: u32,
    filter_set: u32,
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

fn opng_init_write_data() {
    unsafe {
        PROCESS.out_file_size = 0;
        PROCESS.out_plte_trns_size = 0;
        PROCESS.out_idat_size = 0;
    }
}
