use std::os::raw::{c_char, c_int, c_void};

#[repr(C)]
pub struct __sbuf {
    _base: *mut u8,
    _size: c_int,
}

#[repr(C)]
pub struct __sFILE {
    _p: *mut u8,
    _r: c_int,
    _w: c_int,
    _flags: i16,
    _file: i16,
    _bf: __sbuf,
    _lbfsize: c_int,
    _cookie: *mut c_void,
    _close: Option<extern "C" fn(*mut c_void) -> c_int>,
    _read: Option<extern "C" fn(*mut c_void, *mut c_char, c_int) -> c_int>,
    _seek: Option<extern "C" fn(*mut c_void, i64, c_int) -> i64>,
    _write: Option<extern "C" fn(*mut c_void, *const c_char, c_int) -> c_int,
    _ub: __sbuf,
    _extra: *mut __sFILEX,
    _ur: c_int,
    _ubuf: [u8; 3],
    _nbuf: [u8; 1],
    _lb: __sbuf,
    _blksize: c_int,
    _offset: i64,
}

extern "C" {
    static mut __stderrp: *mut __sFILE;
    fn fflush(stream: *mut __sFILE) -> c_int;
    fn fprintf(stream: *mut __sFILE, format: *const c_char, ...) -> c_int;
    fn abort();
}

#[repr(C)]
pub struct _OSUnalignedU16 {
    __val: volatile u16,
}

#[repr(C)]
pub struct _OSUnalignedU32 {
    __val: volatile u32,
}

#[repr(C)]
pub struct _OSUnalignedU64 {
    __val: volatile u64,
}

#[repr(C)]
pub union wait {
    w_status: c_int,
    w_T: WaitT,
    w_S: WaitS,
}

#[repr(C)]
pub struct WaitT {
    w_Termsig: u32,
    w_Coredump: u32,
    w_Retcode: u32,
    w_Filler: u32,
}

#[repr(C)]
pub struct WaitS {
    w_Stopval: u32,
    w_Stopsig: u32,
    w_Filler: u32,
}

#[repr(C)]
pub struct opng_options {
    backup: c_int,
    clobber: c_int,
    debug: c_int,
    fix: c_int,
    force: c_int,
    full: c_int,
    preserve: c_int,
    quiet: c_int,
    simulate: c_int,
    verbose: c_int,
    out_name: *const c_char,
    dir_name: *const c_char,
    log_name: *const c_char,
    interlace: c_int,
    nb: c_int,
    nc: c_int,
    np: c_int,
    nz: c_int,
    optim_level: c_int,
    compr_level_set: opng_bitset_t,
    mem_level_set: opng_bitset_t,
    strategy_set: opng_bitset_t,
    filter_set: opng_bitset_t,
    window_bits: c_int,
    snip: c_int,
    strip_all: c_int,
}

#[repr(C)]
pub struct timespec {
    tv_sec: __darwin_time_t,
    tv_nsec: c_long,
}

#[repr(C)]
pub struct fd_set {
    fds_bits: [__int32_t; 32],
}

#[repr(C)]
pub struct png_struct_def;

pub type png_byte = u8;
pub type png_bytep = *mut u8;
pub type png_const_charp = *const c_char;
pub type png_struct = png_struct_def;
pub type png_structp = *mut png_struct;

pub type opng_bitset_t = u32;

const OPNG_BITSET_ELT_MIN: opng_bitset_t = 0;
const OPNG_BITSET_ELT_MAX: opng_bitset_t = (std::mem::size_of::<opng_bitset_t>() as i32 * 8) - 1;

static mut options: opng_options;

fn osys_terminate() {
    // implementation
}

fn panic(msg: &str) {
    unsafe {
        fprintf(__stderrp, "\n** INTERNAL ERROR: %s\n".as_ptr() as *const c_char, msg);
        fprintf(__stderrp, "Please submit a defect report.\nhttp://optipng.sourceforge.net/\n\n".as_ptr() as *const c_char);
        fflush(__stderrp);
        if options.debug != 0 {
            abort();
        } else {
            osys_terminate();
        }
    }
}
