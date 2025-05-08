use std::os::raw::{c_int, c_ulong};

const _ISupper: c_int = if 0 < 8 { (1 << 0) << 8 } else { (1 << 0) >> 8 };
const _ISlower: c_int = if 1 < 8 { (1 << 1) << 8 } else { (1 << 1) >> 8 };
const _ISalpha: c_int = if 2 < 8 { (1 << 2) << 8 } else { (1 << 2) >> 8 };
const _ISdigit: c_int = if 3 < 8 { (1 << 3) << 8 } else { (1 << 3) >> 8 };
const _ISxdigit: c_int = if 4 < 8 { (1 << 4) << 8 } else { (1 << 4) >> 8 };
const _ISspace: c_int = if 5 < 8 { (1 << 5) << 8 } else { (1 << 5) >> 8 };
const _ISprint: c_int = if 6 < 8 { (1 << 6) << 8 } else { (1 << 6) >> 8 };
const _ISgraph: c_int = if 7 < 8 { (1 << 7) << 8 } else { (1 << 7) >> 8 };
const _ISblank: c_int = if 8 < 8 { (1 << 8) << 8 } else { (1 << 8) >> 8 };
const _IScntrl: c_int = if 9 < 8 { (1 << 9) << 8 } else { (1 << 9) >> 8 };
const _ISpunct: c_int = if 10 < 8 { (1 << 10) << 8 } else { (1 << 10) >> 8 };
const _ISalnum: c_int = if 11 < 8 { (1 << 11) << 8 } else { (1 << 11) >> 8 };

#[repr(C)]
struct timespec {
    tv_sec: c_long,
    tv_nsec: c_long,
}

#[repr(C)]
struct fd_set {
    __fds_bits: [c_ulong; 1024 / (8 * std::mem::size_of::<c_ulong>())],
}

#[repr(C)]
union pthread_attr_t {
    __size: [u8; 56],
    __align: c_long,
}

const OPNG_BITSET_ELT_MIN: c_int = 0;
const OPNG_BITSET_ELT_MAX: c_int = (std::mem::size_of::<opng_bitset_t>() * 8) as c_int - 1;

type png_byte = u8;
type png_bytep = *mut png_byte;
type png_const_charp = *const std::os::raw::c_char;
type png_struct = std::ffi::c_void;
type png_structp = *mut png_struct;

fn check_num_option(opt: &str, opt_arg: &str, lowest: c_int, highest: c_int) -> c_int {
    let mut value: c_ulong = 0;
    if opng_str2ulong(&mut value, opt_arg, 0) != 0 || value > 2147483647 || value as c_int < lowest || value as c_int > highest {
        unsafe { err_option_arg(opt, opt_arg) };
    }
    value as c_int
}
