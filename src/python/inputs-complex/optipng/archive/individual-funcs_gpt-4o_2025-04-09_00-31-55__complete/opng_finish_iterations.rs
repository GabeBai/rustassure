use std::fmt::Write;

const IDAT_SIZE_MAX: u64 = 0x7fffffff;
const IDAT_SIZE_MAX_STRING: &str = "2GB";

struct OpngProcess {
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

impl OpngProcess {
    fn new() -> Self {
        OpngProcess {
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
        }
    }
}

fn usr_printf(fmt: &str, args: std::fmt::Arguments) {
    let mut output = String::new();
    write!(&mut output, fmt, args).unwrap();
    print!("{}", output);
}

fn opng_finish_iterations(process: &mut OpngProcess) {
    if process.best_idat_size + process.out_plte_trns_size as u64 <
       process.in_idat_size + process.in_plte_trns_size as u64 {
        process.status |= 0x2000; // OUTPUT_NEEDS_NEW_IDAT
    }
    if process.status & 0x2000 != 0 {
        if process.best_idat_size <= IDAT_SIZE_MAX {
            usr_printf("\nSelecting parameters:\n", format_args!());
            usr_printf("  zc = {}  zm = {}  zs = {}  f = {}",
                       format_args!(process.best_compr_level, process.best_mem_level,
                                    process.best_strategy, process.best_filter));
            if process.best_idat_size > 0 {
                usr_printf("\t\tIDAT size = {}\n", format_args!(process.best_idat_size));
            }
            usr_printf("\n", format_args!());
        } else {
            usr_printf("  zc = *  zm = *  zs = *  f = *\t\tIDAT size > {}\n",
                       format_args!(IDAT_SIZE_MAX_STRING));
        }
    }
}

fn main() {
    let mut process = OpngProcess::new();
    opng_finish_iterations(&mut process);
}
