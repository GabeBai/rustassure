static mut PROCESS: opng_process_struct = opng_process_struct {
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

static idat_size_max: osys_fsize_t = 0x7fffffff;
static idat_size_max_string: &str = "2GB";

fn opng_finish_iterations() {
    unsafe {
        if PROCESS.best_idat_size + PROCESS.out_plte_trns_size <
            PROCESS.in_idat_size + PROCESS.in_plte_trns_size {
            PROCESS.status |= OUTPUT_NEEDS_NEW_IDAT;
        }
        if PROCESS.status & OUTPUT_NEEDS_NEW_IDAT != 0 {
            if PROCESS.best_idat_size <= idat_size_max {
                println!("\nSelecting parameters:");
                println!("  zc = {}  zm = {}  zs = {}  f = {}",
                         PROCESS.best_compr_level,
                         PROCESS.best_mem_level,
                         PROCESS.best_strategy,
                         PROCESS.best_filter);
                if PROCESS.best_idat_size > 0 {
                    println!("\t\tIDAT size = {}", PROCESS.best_idat_size);
                }
                println!("\n");
            } else {
                println!("  zc = *  zm = *  zs = *  f = *\t\tIDAT size > {}", idat_size_max_string);
            }
        }
    }
}
