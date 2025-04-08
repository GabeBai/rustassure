struct Process {
    best_idat_size: u64,
    out_plte_trns_size: u64,
    in_idat_size: u64,
    in_plte_trns_size: u64,
    status: u32,
    best_compr_level: i32,
    best_mem_level: i32,
    best_strategy: i32,
    best_filter: i32,
}

const OUTPUT_NEEDS_NEW_IDAT: u32 = 0x2000;
const IDAT_SIZE_MAX: u64 = 0x7fffffff;
const IDAT_SIZE_MAX_STRING: &str = "2GB";

fn opng_finish_iterations(process: &mut Process) {
    if process.best_idat_size + process.out_plte_trns_size < process.in_idat_size + process.in_plte_trns_size {
        process.status |= OUTPUT_NEEDS_NEW_IDAT;
    }
    if process.status & OUTPUT_NEEDS_NEW_IDAT != 0 {
        if process.best_idat_size <= IDAT_SIZE_MAX {
            println!("\nSelecting parameters:");
            println!(
                "  zc = {}  zm = {}  zs = {}  f = {}",
                process.best_compr_level, process.best_mem_level,
                process.best_strategy, process.best_filter
            );
            if process.best_idat_size > 0 {
                println!("\t\tIDAT size = {}", process.best_idat_size);
            }
            println!();
        } else {
            println!(
                "  zc = *  zm = *  zs = *  f = *\t\tIDAT size > {}",
                IDAT_SIZE_MAX_STRING
            );
        }
    }
}
