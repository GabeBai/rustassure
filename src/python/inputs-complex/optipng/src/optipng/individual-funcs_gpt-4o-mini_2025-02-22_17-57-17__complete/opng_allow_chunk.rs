use libc::{c_int, c_void, size_t};
use std::ptr;

static sig_dSIG: [u8; 4] = [0x64, 0x53, 0x49, 0x47];
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

fn opng_allow_chunk(chunk_type: *mut u8) -> c_int {
    unsafe {
        if opng_is_image_chunk(chunk_type) != 0 {
            return 1;
        }
        if options.strip_all != 0 {
            return 0;
        }
        if memcmp(chunk_type, sig_dSIG.as_ptr(), 4) == 0 {
            return 0;
        }
        if options.snip != 0 && opng_is_apng_chunk(chunk_type) != 0 {
            return 0;
        }
        return 1;
    }
}

// Note: You will need to implement or replace `opng_is_image_chunk` and `opng_is_apng_chunk` with their Rust equivalents.
