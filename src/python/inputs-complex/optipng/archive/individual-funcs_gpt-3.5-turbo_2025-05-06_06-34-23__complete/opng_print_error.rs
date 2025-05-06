use std::os::raw::{c_char, c_int};

#[repr(C)]
pub struct timespec {
    tv_sec: i64,
    tv_nsec: i64,
}

#[repr(C)]
pub struct fd_set {
    __fds_bits: [u64; 16],
}

#[repr(C)]
pub union pthread_attr_t {
    __size: [u8; 56],
    __align: i64,
}

pub type opng_bitset_t = u32;

pub const OPNG_BITSET_ELT_MIN: u32 = 0;
pub const OPNG_BITSET_ELT_MAX: u32 = (std::mem::size_of::<opng_bitset_t>() as u32 * 8) - 1;

pub type png_byte = u8;
pub type png_bytep = *mut png_byte;
pub type png_const_charp = *const c_char;

pub struct png_struct;

pub type png_structp = *mut png_struct;

pub struct internal_state;

pub type jmp_buf = [i32; 1];

pub struct exception_context {
    penv: *mut jmp_buf,
    caught: c_int,
    v: ExceptionContextV,
}

pub struct ExceptionContextV {
    etmp: *const c_char,
}

pub const INPUT_IS_PNG_FILE: u32 = 0x0001;
pub const INPUT_HAS_PNG_DATASTREAM: u32 = 0x0002;
pub const INPUT_HAS_PNG_SIGNATURE: u32 = 0x0004;
pub const INPUT_HAS_DIGITAL_SIGNATURE: u32 = 0x0008;
pub const INPUT_HAS_MULTIPLE_IMAGES: u32 = 0x0010;
pub const INPUT_HAS_APNG: u32 = 0x0020;
pub const INPUT_HAS_STRIPPED_DATA: u32 = 0x0040;
pub const INPUT_HAS_JUNK: u32 = 0x0080;
pub const INPUT_HAS_ERRORS: u32 = 0x0100;
pub const OUTPUT_NEEDS_NEW_FILE: u32 = 0x1000;
pub const OUTPUT_NEEDS_NEW_IDAT: u32 = 0x2000;
pub const OUTPUT_HAS_ERRORS: u32 = 0x4000;

extern "C" {
    fn usr_printf(fmt: *const c_char, ...) -> ();
    fn usr_print_cntrl(cntrl_code: c_int) -> ();
}

fn opng_print_error(msg: *const c_char) {
    unsafe {
        usr_print_cntrl('\v' as c_int);
        usr_printf("Error: %s\n\0".as_ptr(), msg);
    }
}
