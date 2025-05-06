use std::os::raw::{c_long, c_ulong};

#[repr(C)]
pub struct timespec {
    pub tv_sec: c_long,
    pub tv_nsec: c_long,
}

#[repr(C)]
pub struct fd_set {
    __fds_bits: [c_long; 128],
}

#[repr(C)]
pub union pthread_attr_t {
    __size: [u8; 56],
    __align: c_long,
}

pub type opng_bitset_t = u32;

pub const OPNG_BITSET_ELT_MIN: opng_bitset_t = 0;
pub const OPNG_BITSET_ELT_MAX: opng_bitset_t = (std::mem::size_of::<opng_bitset_t>() as opng_bitset_t * 8) - 1;

pub type png_byte = u8;
pub type png_uint_32 = u32;
pub type png_bytep = *mut png_byte;
pub type png_const_charp = *const std::os::raw::c_char;

pub struct png_struct;

pub type png_structp = *mut png_struct;

pub type osys_fsize_t = c_ulong;

pub type jmp_buf = [c_long; 1];

pub struct exception_context {
    penv: *mut jmp_buf,
    caught: c_int,
    v: volatile,
}

pub struct volatile {
    etmp: *const std::os::raw::c_char,
}

pub static mut the_exception_context: [exception_context; 1] = [exception_context {
    penv: std::ptr::null_mut(),
    caught: 0,
    v: volatile { etmp: std::ptr::null() },
}];

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

pub const idat_size_max: png_uint_32 = 0x7fffffff;

fn opng_check_idat_size(size: osys_fsize_t) {
    if size > idat_size_max {
        unsafe {
            for (;;) {
                longjmp(*the_exception_context[0].penv, 1);
            }
            the_exception_context[0].v.etmp = "IDAT sizes larger than the maximum chunk size are currently unsupported";
        }
    }
}
