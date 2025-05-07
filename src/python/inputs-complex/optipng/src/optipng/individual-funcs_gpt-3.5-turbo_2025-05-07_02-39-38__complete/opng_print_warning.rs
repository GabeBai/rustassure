use std::os::raw::{c_char, c_int};

type __time_t = i64;
type __syscall_slong_t = i64;
type __sigset_t = [u64; 16];
struct timespec {
    tv_sec: __time_t,
    tv_nsec: __syscall_slong_t,
}
type __fd_mask = i64;
struct fd_set {
    __fds_bits: [__fd_mask; 16],
}
union pthread_attr_t {
    __size: [u8; 56],
    __align: i64,
}
type opng_bitset_t = u32;
const OPNG_BITSET_ELT_MIN: u32 = 0;
const OPNG_BITSET_ELT_MAX: u32 = (std::mem::size_of::<opng_bitset_t>() as u32 * 8) - 1;
type png_byte = u8;
type png_bytep = *mut png_byte;
type png_const_charp = *const c_char;
type png_struct = *mut std::ffi::c_void;
type png_structp = *mut png_struct;
type __jmp_buf = [i64; 8];
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
enum {
    INPUT_IS_PNG_FILE = 0x0001,
    INPUT_HAS_PNG_DATASTREAM = 0x0002,
    INPUT_HAS_PNG_SIGNATURE = 0x0004,
    INPUT_HAS_DIGITAL_SIGNATURE = 0x0008,
    INPUT_HAS_MULTIPLE_IMAGES = 0x0010,
    INPUT_HAS_APNG = 0x0020,
    INPUT_HAS_STRIPPED_DATA = 0x0040,
    INPUT_HAS_JUNK = 0x0080,
    INPUT_HAS_ERRORS = 0x0100,
    OUTPUT_NEEDS_NEW_FILE = 0x1000,
    OUTPUT_NEEDS_NEW_IDAT = 0x2000,
    OUTPUT_HAS_ERRORS = 0x4000,
}

extern "C" {
    fn usr_printf(fmt: *const c_char, ...) -> ();
    fn usr_print_cntrl(cntrl_code: c_int) -> ();
}

fn opng_print_warning(msg: *const c_char) {
    unsafe {
        usr_print_cntrl('\x0b' as c_int);
        usr_printf("Warning: %s\n\0".as_ptr(), msg);
    }
}
