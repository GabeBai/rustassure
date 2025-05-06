use std::os::raw::{c_char, c_int, c_long, c_ulong};

#[repr(C)]
pub struct timespec {
    pub tv_sec: __time_t,
    pub tv_nsec: __syscall_slong_t,
}

#[repr(C)]
pub struct fd_set {
    __fds_bits: [__fd_mask; 128],
}

#[repr(C)]
pub union pthread_attr_t {
    __size: [c_char; 56],
    __align: c_long,
}

pub type opng_bitset_t = c_uint;

pub const OPNG_BITSET_ELT_MIN: opng_bitset_t = 0;
pub const OPNG_BITSET_ELT_MAX: opng_bitset_t = (std::mem::size_of::<opng_bitset_t>() * 8 - 1) as opng_bitset_t;

pub type png_byte = u8;
pub type png_bytep = *mut png_byte;
pub type png_const_charp = *const c_char;

pub struct png_struct;

pub type png_structp = *mut png_struct;

pub type osys_fsize_t = c_ulong;

#[repr(C)]
pub struct opng_ulratio {
    num: c_ulong,
    denom: c_ulong,
}

extern "C" {
    fn opng_ulratio_to_factor_string(buffer: *mut c_char, buffer_size: usize, ratio: *const opng_ulratio) -> c_int;
}

pub const INPUT_IS_PNG_FILE: c_int = 0x0001;
pub const INPUT_HAS_PNG_DATASTREAM: c_int = 0x0002;
pub const INPUT_HAS_PNG_SIGNATURE: c_int = 0x0004;
pub const INPUT_HAS_DIGITAL_SIGNATURE: c_int = 0x0008;
pub const INPUT_HAS_MULTIPLE_IMAGES: c_int = 0x0010;
pub const INPUT_HAS_APNG: c_int = 0x0020;
pub const INPUT_HAS_STRIPPED_DATA: c_int = 0x0040;
pub const INPUT_HAS_JUNK: c_int = 0x0080;
pub const INPUT_HAS_ERRORS: c_int = 0x0100;
pub const OUTPUT_NEEDS_NEW_FILE: c_int = 0x1000;
pub const OUTPUT_NEEDS_NEW_IDAT: c_int = 0x2000;
pub const OUTPUT_HAS_ERRORS: c_int = 0x4000;

extern "C" {
    static mut usr_printf: extern "C" fn(format: *const c_char, ...) -> ();
}

fn opng_print_fsize_ratio(num: osys_fsize_t, denom: osys_fsize_t) {
    let mut buffer: [c_char; 32] = [0; 32];
    let mut ratio = opng_ulratio { num, denom };
    let result = unsafe { opng_ulratio_to_factor_string(buffer.as_mut_ptr(), buffer.len(), &ratio) };
    unsafe {
        (usr_printf)("{}{}", buffer.iter().map(|&c| c as u8 as char).collect::<String>(), if result > 0 { "" } else { "..." });
    }
}
