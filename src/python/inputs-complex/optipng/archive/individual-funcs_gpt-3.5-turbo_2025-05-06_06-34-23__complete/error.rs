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

pub type opng_bitset_t = c_ulong;

pub const OPNG_BITSET_ELT_MIN: c_ulong = 0;
pub const OPNG_BITSET_ELT_MAX: c_ulong = (std::mem::size_of::<opng_bitset_t>() * 8 - 1) as c_ulong;

pub type png_byte = u8;
pub type png_bytep = *mut png_byte;
pub type png_const_charp = *const i8;

pub struct png_struct;

extern "C" {
    pub fn fprintf(stream: *mut std::ffi::c_void, format: *const i8, ...) -> i32;
    pub fn vfprintf(stream: *mut std::ffi::c_void, format: *const i8, arg: va_list) -> i32;
    pub fn exit(status: i32) -> !;
}

#[no_mangle]
pub extern "C" fn error(fmt: *const i8, ...) {
    unsafe {
        let mut arg_ptr: va_list = std::mem::zeroed();
        fprintf(std::ptr::null_mut(), b"** Error: \0".as_ptr() as *const i8);
        __builtin_va_start(&mut arg_ptr, fmt);
        vfprintf(std::ptr::null_mut(), fmt, arg_ptr);
        __builtin_va_end(&mut arg_ptr);
        fprintf(std::ptr::null_mut(), b"\n\0".as_ptr() as *const i8);
        exit(1);
    }
}

#[repr(C)]
pub struct va_list {
    gp_offset: c_ulong,
    fp_offset: c_ulong,
    overflow_arg_area: *mut c_ulong,
    reg_save_area: *mut c_ulong,
}
