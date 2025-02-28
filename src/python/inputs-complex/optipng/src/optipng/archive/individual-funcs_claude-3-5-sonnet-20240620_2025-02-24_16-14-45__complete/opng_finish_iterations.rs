use std::ffi::c_long;
use std::os::raw::{c_char, c_int, c_uint, c_ulong};

#[repr(C)]
struct OpngProcessStruct {
    status: c_uint,
    num_iterations: c_int,
    in_datastream_offset: c_long,
    in_file_size: c_ulong,
    out_file_size: c_ulong,
    in_idat_size: c_ulong,
    out_idat_size: c_ulong,
    best_idat_size: c_ulong,
    max_idat_size: c_ulong,
    in_plte_trns_size: c_uint,
    out_plte_trns_size: c_uint,
    reductions: c_uint,
    compr_level_set: c_uint,
    mem_level_set: c_uint,
    strategy_set: c_uint,
    filter_set: c_uint,
    best_compr_level: c_int,
    best_mem_level: c_int,
    best_strategy: c_int,
    best_filter: c_int,
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

const IDAT_SIZE_MAX: c_ulong = 0x7fffffff;
const IDAT_SIZE_MAX_STRING: &str = "2GB";

static mut USR_PRINTF: Option<unsafe extern "C" fn(*const c_char, ...)> = None;

unsafe fn opng_finish_iterations() {
    if PROCESS.best_idat_size + PROCESS.out_plte_trns_size <
        PROCESS.in_idat_size + PROCESS.in_plte_trns_size
    {
        PROCESS.status |= 0x2000; // OUTPUT_NEEDS_NEW_IDAT
    }
    if PROCESS.status & 0x2000 != 0 {
        if PROCESS.best_idat_size <= IDAT_SIZE_MAX {
            if let Some(printf) = USR_PRINTF {
                printf(b"\nSelecting parameters:\n\0".as_ptr() as *const c_char);
                printf(
                    b"  zc = %d  zm = %d  zs = %d  f = %d\0".as_ptr() as *const c_char,
                    PROCESS.best_compr_level,
                    PROCESS.best_mem_level,
                    PROCESS.best_strategy,
                    PROCESS.best_filter,
                );
                if PROCESS.best_idat_size > 0 {
                    printf(
                        b"\t\tIDAT size = %lu\n\0".as_ptr() as *const c_char,
                        PROCESS.best_idat_size,
                    );
                } else {
                    printf(b"\n\0".as_ptr() as *const c_char);
                }
            }
        } else if let Some(printf) = USR_PRINTF {
            printf(
                b"  zc = *  zm = *  zs = *  f = *\t\tIDAT size > %s\n\0".as_ptr() as *const c_char,
                IDAT_SIZE_MAX_STRING.as_ptr() as *const c_char,
            );
        }
    }
}