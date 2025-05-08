use std::os::raw::{c_void, c_long};

#[repr(C)]
pub struct timespec {
    tv_sec: c_long,
    tv_nsec: c_long,
}

#[repr(C)]
pub struct fd_set {
    __fds_bits: [c_long; 16],
}

#[repr(C)]
pub union pthread_attr_t {
    __size: [u8; 56],
    __align: c_long,
}

#[repr(C)]
pub struct __jmp_buf_tag {
    __jmpbuf: [c_long; 8],
    __mask_was_saved: i32,
    __saved_mask: __sigset_t,
}

pub type jmp_buf = [__jmp_buf_tag; 1];

#[repr(C)]
pub struct exception_context {
    penv: *mut jmp_buf,
    caught: i32,
    v: Volatile,
}

#[repr(C)]
pub struct Volatile {
    etmp: *const libc::c_char,
}

#[repr(C)]
pub struct png_struct;

pub type png_structp = *mut png_struct;

pub type opng_bitset_t = u32;

pub const OPNG_BITSET_ELT_MIN: u32 = 0;
pub const OPNG_BITSET_ELT_MAX: u32 = (std::mem::size_of::<opng_bitset_t>() as u32 * 8) - 1;

pub type png_byte = u8;
pub type png_bytep = *mut png_byte;
pub type png_const_charp = *const libc::c_char;

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

fn opng_free(ptr: *mut c_void) {
    unsafe {
        libc::free(ptr as *mut c_void);
    }
}
