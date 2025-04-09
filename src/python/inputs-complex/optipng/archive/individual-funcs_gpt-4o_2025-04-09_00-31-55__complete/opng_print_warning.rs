use std::os::raw::{c_char, c_int, c_long};
use std::mem;

type __time_t = c_long;
type __syscall_slong_t = c_long;
type __fd_mask = c_long;

#[repr(C)]
struct timespec {
    tv_sec: __time_t,
    tv_nsec: __syscall_slong_t,
}

#[repr(C)]
struct fd_set {
    __fds_bits: [__fd_mask; 1024 / (8 * mem::size_of::<__fd_mask>())],
}

union pthread_attr_t {
    __size: [u8; 56],
    __align: c_long,
}

type opng_bitset_t = u32;

const OPNG_BITSET_ELT_MIN: c_int = 0;
const OPNG_BITSET_ELT_MAX: c_int = (mem::size_of::<opng_bitset_t>() * 8 - 1) as c_int;

type png_byte = u8;
type png_bytep = *mut png_byte;
type png_const_charp = *const c_char;

#[repr(C)]
struct png_struct_def;
type png_structp = *mut png_struct_def;

#[repr(C)]
struct internal_state;

#[repr(C)]
struct __jmp_buf_tag;
type jmp_buf = [__jmp_buf_tag; 1];

#[repr(C)]
struct exception_context {
    penv: *mut jmp_buf,
    caught: c_int,
    v: Volatile,
}

#[repr(C)]
struct Volatile {
    etmp: *const c_char,
}

const INPUT_IS_PNG_FILE: c_int = 0x0001;
const INPUT_HAS_PNG_DATASTREAM: c_int = 0x0002;
const INPUT_HAS_PNG_SIGNATURE: c_int = 0x0004;
const INPUT_HAS_DIGITAL_SIGNATURE: c_int = 0x0008;
const INPUT_HAS_MULTIPLE_IMAGES: c_int = 0x0010;
const INPUT_HAS_APNG: c_int = 0x0020;
const INPUT_HAS_STRIPPED_DATA: c_int = 0x0040;
const INPUT_HAS_JUNK: c_int = 0x0080;
const INPUT_HAS_ERRORS: c_int = 0x0100;
const OUTPUT_NEEDS_NEW_FILE: c_int = 0x1000;
const OUTPUT_NEEDS_NEW_IDAT: c_int = 0x2000;
const OUTPUT_HAS_ERRORS: c_int = 0x4000;

static mut usr_printf: Option<unsafe extern "C" fn(fmt: *const c_char, ...)> = None;
static mut usr_print_cntrl: Option<unsafe extern "C" fn(cntrl_code: c_int)> = None;

unsafe fn opng_print_warning(msg: *const c_char) {
    if let Some(print_cntrl) = usr_print_cntrl {
        print_cntrl('\x0B' as c_int); // '\v' is vertical tab
    }
    if let Some(print_fn) = usr_printf {
        print_fn(b"Warning: %s\n\0".as_ptr() as *const c_char, msg);
    }
}
