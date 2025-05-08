use std::os::raw::c_char;

#[repr(C)]
struct timespec {
    tv_sec: i64,
    tv_nsec: i64,
}

#[repr(C)]
struct fd_set {
    __fds_bits: [i64; 16],
}

#[repr(C)]
union pthread_attr_t {
    __size: [u8; 56],
    __align: i64,
}

#[repr(C)]
struct opng_options {
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
    out_name: *const c_char,
    dir_name: *const c_char,
    log_name: *const c_char,
    interlace: i32,
    nb: i32,
    nc: i32,
    np: i32,
    nz: i32,
    optim_level: i32,
    compr_level_set: u32,
    mem_level_set: u32,
    strategy_set: u32,
    filter_set: u32,
    window_bits: i32,
    snip: i32,
    strip_all: i32,
}

#[repr(C)]
struct opng_engine_struct {
    started: i32,
}

#[repr(C)]
struct opng_summary_struct {
    file_count: u32,
    err_count: u32,
    fix_count: u32,
    snip_count: u32,
}

static mut engine: opng_engine_struct = opng_engine_struct { started: 0 };
static mut summary: opng_summary_struct = opng_summary_struct {
    file_count: 0,
    err_count: 0,
    fix_count: 0,
    snip_count: 0,
};
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

extern "C" {
    fn usr_printf(fmt: *const c_char, ...);
}

fn opng_finalize() -> i32 {
    unsafe {
        if options.verbose != 0 || summary.snip_count > 0 || summary.err_count > 0 {
            usr_printf(b"** Status report\n\0".as_ptr() as *const c_char);
            usr_printf(b"%u file(s) have been processed.\n\0".as_ptr() as *const c_char, summary.file_count);
            if summary.snip_count > 0 {
                usr_printf(b"%u multi-image file(s) have been snipped.\n\0".as_ptr() as *const c_char, summary.snip_count);
            }
            if summary.err_count > 0 {
                usr_printf(b"%u error(s) have been encountered.\n\0".as_ptr() as *const c_char, summary.err_count);
                if summary.fix_count > 0 {
                    usr_printf(b"%u erroneous file(s) have been fixed.\n\0".as_ptr() as *const c_char, summary.fix_count);
                }
            }
        }
        engine.started = 0;
    }
    0
}
