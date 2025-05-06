use std::os::raw::{c_char, c_int, c_long, c_ulong};

type time_t = c_long;
type syscall_slong_t = c_long;

#[repr(C)]
enum IsFlags {
    _ISupper = if 0 < 8 { (1 << 0) << 8 } else { (1 << 0) >> 8 },
    _ISlower = if 1 < 8 { (1 << 1) << 8 } else { (1 << 1) >> 8 },
    _ISalpha = if 2 < 8 { (1 << 2) << 8 } else { (1 << 2) >> 8 },
    _ISdigit = if 3 < 8 { (1 << 3) << 8 } else { (1 << 3) >> 8 },
    _ISxdigit = if 4 < 8 { (1 << 4) << 8 } else { (1 << 4) >> 8 },
    _ISspace = if 5 < 8 { (1 << 5) << 8 } else { (1 << 5) >> 8 },
    _ISprint = if 6 < 8 { (1 << 6) << 8 } else { (1 << 6) >> 8 },
    _ISgraph = if 7 < 8 { (1 << 7) << 8 } else { (1 << 7) >> 8 },
    _ISblank = if 8 < 8 { (1 << 8) << 8 } else { (1 << 8) >> 8 },
    _IScntrl = if 9 < 8 { (1 << 9) << 8 } else { (1 << 9) >> 8 },
    _ISpunct = if 10 < 8 { (1 << 10) << 8 } else { (1 << 10) >> 8 },
    _ISalnum = if 11 < 8 { (1 << 11) << 8 } else { (1 << 11) >> 8 },
}

extern "C" {
    fn __errno_location() -> *mut c_int;
}

type size_t = c_ulong;

#[repr(C)]
struct timespec {
    tv_sec: time_t,
    tv_nsec: syscall_slong_t,
}

type fd_mask = c_long;

#[repr(C)]
struct fd_set {
    __fds_bits: [fd_mask; 1024 / (8 * std::mem::size_of::<fd_mask>())],
}

union pthread_attr_t {
    __size: [u8; 56],
    __align: c_long,
}

type opng_bitset_t = c_uint;

const OPNG_BITSET_ELT_MIN: opng_bitset_t = 0;
const OPNG_BITSET_ELT_MAX: opng_bitset_t = (std::mem::size_of::<opng_bitset_t>() * 8) - 1;

extern {
    fn opng_rangeset_string_to_bitset(str: *const c_char, end_idx: *mut size_t) -> opng_bitset_t;
}

type png_byte = u8;
type png_bytep = *mut png_byte;
type png_const_charp = *const c_char;
type png_struct = std::ffi::c_void;
type png_structp = *mut png_struct;

fn opng_strltrim(s: *const c_char) -> *const c_char {
    let mut ptr = s;
    while !ptr.is_null() && *ptr == b' ' as c_char {
        ptr = ptr.offset(1);
    }
    ptr
}

fn opng_rangeset2bitset(out_val: *mut opng_bitset_t, in_str: *const c_char) -> c_int {
    let mut end_idx: size_t = 0;
    unsafe {
        *out_val = opng_rangeset_string_to_bitset(in_str, &mut end_idx);
        if end_idx == 0 || *opng_strltrim(in_str.offset(end_idx as isize)) != 0 {
            *__errno_location() = 22;
            return -1;
        }
    }
    0
}
