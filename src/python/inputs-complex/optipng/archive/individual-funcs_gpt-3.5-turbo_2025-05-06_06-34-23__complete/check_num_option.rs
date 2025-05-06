use std::os::raw::{c_char, c_long, c_ulong};

#[repr(C)]
pub struct timespec {
    pub tv_sec: c_long,
    pub tv_nsec: c_long,
}

#[repr(C)]
pub struct fd_set {
    __fds_bits: [c_ulong; 1024 / (8 * std::mem::size_of::<c_ulong>())],
}

#[repr(C)]
pub union pthread_attr_t {
    __size: [u8; 56],
    __align: c_long,
}

pub type opng_bitset_t = u32;

pub const OPNG_BITSET_ELT_MIN: u32 = 0;
pub const OPNG_BITSET_ELT_MAX: u32 = (std::mem::size_of::<opng_bitset_t>() * 8 - 1) as u32;

pub type png_byte = u8;
pub type png_bytep = *mut png_byte;
pub type png_const_charp = *const c_char;
pub type png_struct = std::ffi::c_void;
pub type png_structp = *mut png_struct;

fn check_num_option(opt: &str, opt_arg: &str, lowest: i32, highest: i32) -> i32 {
    let value = match opt_arg.parse::<u64>() {
        Ok(val) => val,
        Err(_) => {
            // Handle error here
            panic!("Error parsing integer value");
        }
    };

    if value > 2147483647 || value < lowest as u64 || value > highest as u64 {
        // Handle error here
        panic!("Option argument out of range");
    }

    value as i32
}
