use std::os::raw::{c_char, c_int};

type time_t = i64;
type syscall_slong_t = i64;

#[repr(C)]
struct timespec {
    tv_sec: time_t,
    tv_nsec: syscall_slong_t,
}

type fd_mask = i64;

#[repr(C)]
struct fd_set {
    __fds_bits: [fd_mask; 128],
}

union pthread_attr_t {
    __size: [u8; 56],
    __align: i64,
}

type opng_bitset_t = u32;

const OPNG_BITSET_ELT_MIN: u32 = 0;
const OPNG_BITSET_ELT_MAX: u32 = (std::mem::size_of::<opng_bitset_t>() as u32 * 8) - 1;

type png_byte = u8;
type png_bytep = *mut png_byte;
type png_const_charp = *const c_char;

struct png_struct;

type png_structp = *mut png_struct;

struct internal_state;

type jmp_buf = [i32; 1];

struct exception_context {
    penv: *mut jmp_buf,
    caught: c_int,
    v: volatile,
}

const INPUT_IS_PNG_FILE: u16 = 0x0001;
const INPUT_HAS_PNG_DATASTREAM: u16 = 0x0002;
const INPUT_HAS_PNG_SIGNATURE: u16 = 0x0004;
const INPUT_HAS_DIGITAL_SIGNATURE: u16 = 0x0008;
const INPUT_HAS_MULTIPLE_IMAGES: u16 = 0x0010;
const INPUT_HAS_APNG: u16 = 0x0020;
const INPUT_HAS_STRIPPED_DATA: u16 = 0x0040;
const INPUT_HAS_JUNK: u16 = 0x0080;
const INPUT_HAS_ERRORS: u16 = 0x0100;
const OUTPUT_NEEDS_NEW_FILE: u16 = 0x1000;
const OUTPUT_NEEDS_NEW_IDAT: u16 = 0x2000;
const OUTPUT_HAS_ERRORS: u16 = 0x4000;

extern "C" {
    fn usr_printf(fmt: *const c_char, ...);
    fn usr_print_cntrl(cntrl_code: c_int);
}

fn opng_print_warning(msg: *const c_char) {
    unsafe {
        usr_print_cntrl('\x0b' as c_int);
        usr_printf("Warning: %s\n\0".as_ptr() as *const c_char, msg);
    }
}
