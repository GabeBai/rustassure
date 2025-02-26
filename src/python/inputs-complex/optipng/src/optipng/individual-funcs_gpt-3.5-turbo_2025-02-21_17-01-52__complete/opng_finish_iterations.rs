use std::os::raw::{c_char, c_int, c_ulong, c_void};

#[repr(C)]
struct __sbuf {
    _base: *mut u8,
    _size: c_int,
}

#[repr(C)]
struct __sFILEX;

union sigval {
    sival_int: c_int,
    sival_ptr: *mut c_void,
}

union __sigaction_u {
    __sa_handler: extern "C" fn(c_int),
    __sa_sigaction: extern "C" fn(c_int, *mut __siginfo, *mut c_void),
}

type uint16_t = u16;
type uint32_t = u32;
type uint64_t = u64;

#[repr(C)]
struct _OSUnalignedU16 {
    __val: volatile uint16_t,
}

#[repr(C)]
struct _OSUnalignedU32 {
    __val: volatile uint32_t,
}

#[repr(C)]
struct _OSUnalignedU64 {
    __val: volatile uint64_t,
}

union wait {
    w_status: c_int,
    w_T: WaitT,
    w_S: WaitS,
}

#[repr(C)]
struct WaitT {
    w_Termsig: u32,
    w_Coredump: u32,
    w_Retcode: u32,
    w_Filler: u32,
}

#[repr(C)]
struct WaitS {
    w_Stopval: u32,
    w_Stopsig: u32,
    w_Filler: u32,
}

type opng_bitset_t = u32;

const OPNG_BITSET_ELT_MIN: i32 = 0;
const OPNG_BITSET_ELT_MAX: i32 = (std::mem::size_of::<opng_bitset_t>() as i32 * 8) - 1;

type png_byte = u8;
type png_uint_32 = u32;
type png_bytep = *mut png_byte;
type png_const_charp = *const c_char;
type png_struct = png_struct_def;
type png_structp = *mut png_struct;
type osys_foffset_t = c_long;
type osys_fsize_t = c_ulong;

#[repr(C)]
struct fd_set {
    fds_bits: [__int32_t; 32],
}

#[repr(C)]
struct timespec {
    tv_sec: __darwin_time_t,
    tv_nsec: c_long,
}

struct fssearchblock;
struct searchstate;
struct internal_state;
type jmp_buf = [i32; 48];

struct exception_context {
    penv: *mut jmp_buf,
    caught: c_int,
    v: ExceptionContextV,
}

struct ExceptionContextV {
    etmp: *const c_char,
}

const INPUT_IS_PNG_FILE: u32 = 0x0001;
const INPUT_HAS_PNG_DATASTREAM: u32 = 0x0002;
const INPUT_HAS_PNG_SIGNATURE: u32 = 0x0004;
const INPUT_HAS_DIGITAL_SIGNATURE: u32 = 0x0008;
const INPUT_HAS_MULTIPLE_IMAGES: u32 = 0x0010;
const INPUT_HAS_APNG: u32 = 0x0020;
const INPUT_HAS_STRIPPED_DATA: u32 = 0x0040;
const INPUT_HAS_JUNK: u32 = 0x0080;
const INPUT_HAS_ERRORS: u32 = 0x0100;
const OUTPUT_NEEDS_NEW_FILE: u32 = 0x1000;
const OUTPUT_NEEDS_NEW_IDAT: u32 = 0x2000;
const OUTPUT_HAS_ERRORS: u32 = 0x4000;

#[repr(C)]
struct opng_process_struct {
    status: u32,
    num_iterations: c_int,
    in_datastream_offset: osys_foffset_t,
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
    best_compr_level: c_int,
    best_mem_level: c_int,
    best_strategy: c_int,
    best_filter: c_int,
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

static idat_size_max: osys_fsize_t = 0x7fffffff;
static idat_size_max_string: &'static str = "2GB";

static mut usr_printf: Option<extern "C" fn(*const c_char, ...) -> ()> = None;

unsafe fn opng_finish_iterations() {
    if process.best_idat_size + process.out_plte_trns_size < process.in_idat_size + process.in_plte_trns_size {
        process.status |= OUTPUT_NEEDS_NEW_IDAT;
    }
    if process.status & OUTPUT_NEEDS_NEW_IDAT != 0 {
        if process.best_idat_size <= idat_size_max {
            usr_printf.unwrap()("\nSelecting parameters:\n\0".as_ptr() as *const c_char);
            usr_printf.unwrap()("  zc = %d  zm = %d  zs = %d  f = %d\0".as_ptr() as *const c_char, process.best_compr_level, process.best_mem_level, process.best_strategy, process.best_filter);
            if process.best_idat_size > 0 {
                usr_printf.unwrap()("\t\tIDAT size = %lu\0".as_ptr() as *const c_char, process.best_idat_size);
            }
            usr_printf.unwrap()("\n\0".as_ptr() as *const c_char);
        } else {
            usr_printf.unwrap()("  zc = *  zm = *  zs = *  f = *\t\tIDAT size > %s\0".as_ptr() as *const c_char, idat_size_max_string);
        }
    }
}
