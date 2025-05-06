use std::os::raw::{c_long, c_ulong};

#[repr(C)]
pub struct timespec {
    pub tv_sec: c_long,
    pub tv_nsec: c_long,
}

#[repr(C)]
pub struct fd_set {
    __fds_bits: [c_ulong; 128],
}

#[repr(C)]
pub struct pthread_attr_t {
    __size: [u8; 56],
    __align: c_long,
}

pub type opng_bitset_t = u32;

pub const OPNG_BITSET_ELT_MIN: u32 = 0;
pub const OPNG_BITSET_ELT_MAX: u32 = (std::mem::size_of::<opng_bitset_t>() * 8 - 1) as u32;

pub type png_byte = u8;
pub type png_bytep = *mut png_byte;
pub type png_const_charp = *const i8;

pub struct png_struct;

pub type png_structp = *mut png_struct;

pub struct FILE;

extern "C" {
    fn fclose(stream: *mut FILE) -> i32;
}

static mut log_file: *mut FILE = std::ptr::null_mut();

fn app_finish() {
    unsafe {
        if !log_file.is_null() {
            fclose(log_file);
        }
    }
}
