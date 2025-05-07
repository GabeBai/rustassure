use std::os::raw::{c_char, c_int, c_long, c_ulong};

type __time_t = c_long;
type __syscall_slong_t = c_long;

#[repr(C)]
struct timespec {
    tv_sec: __time_t,
    tv_nsec: __syscall_slong_t,
}

type __fd_mask = c_long;

#[repr(C)]
struct fd_set {
    __fds_bits: [__fd_mask; 16],
}

union pthread_attr_t {
    __size: [u8; 56],
    __align: c_long,
}

type opng_bitset_t = u32;

const OPNG_BITSET_ELT_MIN: u32 = 0;
const OPNG_BITSET_ELT_MAX: u32 = (std::mem::size_of::<opng_bitset_t>() as u32 * 8) - 1;

type png_byte = u8;
type png_bytep = *mut png_byte;
type png_const_charp = *const c_char;

struct png_struct;
type png_structp = *mut png_struct;

type __jmp_buf = [c_long; 8];

#[repr(C)]
struct __jmp_buf_tag {
    __jmpbuf: __jmp_buf,
    __mask_was_saved: c_int,
    __saved_mask: __sigset_t,
}

type jmp_buf = [__jmp_buf_tag; 1];

struct exception_context {
    penv: *mut jmp_buf,
    caught: c_int,
    v: ExceptionContextV,
}

enum ExceptionContextV {
    Etmp { etmp: *const c_char },
}

const INPUT_IS_PNG_FILE: u32 = 0x0001;
const INPUT_HAS_PNG_DATASTREAM: u32 = 0x0002;
const INPUT_HAS_PNG_SIGNATURE: u32 = 0x0004;
const INPUT_HAS_DIGITAL_SIGNATURE: u32 = 0x0008;
const INPUT_HAS_MULTIPLE_IMAGES: u32 = 0x0010;
const INPUT_HAS_APNG: u32 = 0x0020;
const INPUT_HAS_STRIPPED_DATA: u32 = 0x0040;
const INPUT_HAS_JUNK: u32 = 0x0080;
const INPUT_HAS_ERRORS: u32 = 0x0100;
const OUTPUT_NEEDS_NEW_FILE: u32 = 0x1000;
const OUTPUT_NEEDS_NEW_IDAT: u32 = 0x2000;
const OUTPUT_HAS_ERRORS: u32 = 0x4000;

extern "C" {
    fn usr_printf(fmt: *const c_char, ...) -> ();
    fn usr_print_cntrl(cntrl_code: c_int) -> ();
}

fn opng_print_error(msg: *const c_char) {
    unsafe {
        usr_print_cntrl('\x0b' as c_int);
        usr_printf("Error: %s\n\0".as_ptr() as *const c_char, msg);
    }
}
