use std::os::raw::{c_long, c_int, c_char, c_uchar, c_uint};

type __time_t = c_long;
type __syscall_slong_t = c_long;
type __fd_mask = c_long;
type opng_bitset_t = c_uint;
type png_byte = c_uchar;
type png_uint_32 = c_uint;
type png_bytep = *mut png_byte;
type png_const_charp = *const c_char;
type png_struct = *mut png_struct_def;
type png_structp = *mut png_struct;
type osys_fsize_t = c_ulong;

const OPNG_BITSET_ELT_MIN: opng_bitset_t = 0;
const OPNG_BITSET_ELT_MAX: opng_bitset_t = (std::mem::size_of::<opng_bitset_t>() * 8 - 1) as opng_bitset_t;

const INPUT_IS_PNG_FILE: c_uint = 0x0001;
const INPUT_HAS_PNG_DATASTREAM: c_uint = 0x0002;
const INPUT_HAS_PNG_SIGNATURE: c_uint = 0x0004;
const INPUT_HAS_DIGITAL_SIGNATURE: c_uint = 0x0008;
const INPUT_HAS_MULTIPLE_IMAGES: c_uint = 0x0010;
const INPUT_HAS_APNG: c_uint = 0x0020;
const INPUT_HAS_STRIPPED_DATA: c_uint = 0x0040;
const INPUT_HAS_JUNK: c_uint = 0x0080;
const INPUT_HAS_ERRORS: c_uint = 0x0100;
const OUTPUT_NEEDS_NEW_FILE: c_uint = 0x1000;
const OUTPUT_NEEDS_NEW_IDAT: c_uint = 0x2000;
const OUTPUT_HAS_ERRORS: c_uint = 0x4000;

const idat_size_max: png_uint_32 = 0x7fffffff;

fn opng_check_idat_size(size: osys_fsize_t) {
    if size > idat_size_max as osys_fsize_t {
        unsafe {
            longjmp(*the_exception_context[0].penv, 1);
        }
        the_exception_context[0].v.etmp = "IDAT sizes larger than the maximum chunk size are currently unsupported";
    }
}

struct timespec {
    tv_sec: __time_t,
    tv_nsec: __syscall_slong_t,
}

struct fd_set {
    __fds_bits: [__fd_mask; 1024 / (8 * std::mem::size_of::<__fd_mask>())],
}

union pthread_attr_t {
    __size: [u8; 56],
    __align: c_long,
}

struct internal_state;

type __jmp_buf = [c_long; 8];

struct __jmp_buf_tag {
    __jmpbuf: __jmp_buf,
    __mask_was_saved: c_int,
    __saved_mask: __sigset_t,
}

type jmp_buf = [__jmp_buf_tag; 1];

struct exception_context {
    penv: *mut jmp_buf,
    caught: c_int,
    v: volatile,
}

static mut the_exception_context: [exception_context; 1] = [exception_context {
    penv: std::ptr::null_mut(),
    caught: 0,
    v: volatile {
        etmp: std::ptr::null(),
    },
}];

extern "C" {
    fn longjmp(env: *mut jmp_buf, val: c_int) -> !;
}
