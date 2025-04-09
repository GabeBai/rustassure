use std::time::Duration;
use std::os::raw::{c_char, c_int, c_long, c_uint, c_void};

struct Timespec {
    tv_sec: c_long,
    tv_nsec: c_long,
}

type FdMask = c_long;
struct FdSet {
    __fds_bits: [FdMask; 1024 / (8 * std::mem::size_of::<FdMask>())],
}

union PthreadAttrT {
    __size: [u8; 56],
    __align: c_long,
}

type OpngBitsetT = c_uint;

const OPNG_BITSET_ELT_MIN: c_int = 0;
const OPNG_BITSET_ELT_MAX: c_int = (std::mem::size_of::<OpngBitsetT>() * 8 - 1) as c_int;

type PngByte = u8;
type PngBytep = *mut PngByte;
type PngConstCharp = *const c_char;

struct PngStruct;
type PngStructp = *mut PngStruct;

struct InternalState;

// The jmp_buf and exception_context are omitted due to lack of direct Rust equivalent

const INPUT_IS_PNG_FILE: c_int = 0x0001;
const INPUT_HAS_PNG_DATASTREAM: c_int = 0x0002;
const INPUT_HAS_PNG_SIGNATURE: c_int = 0x0004;
const INPUT_HAS_DIGITAL_SIGNATURE: c_int = 0x0008;
const INPUT_HAS_MULTIPLE_IMAGES: c_int = 0x0010;
const INPUT_HAS_APNG: c_int = 0x0020;
const INPUT_HAS_STRIPPED_DATA: c_int = 0x0040;
const INPUT_HAS_JUNK: c_int = 0x0080;
const INPUT_HAS_ERRORS: c_int = 0x0100;
const OUTPUT_NEEDS_NEW_FILE: c_int = 0x1000;
const OUTPUT_NEEDS_NEW_IDAT: c_int = 0x2000;
const OUTPUT_HAS_ERRORS: c_int = 0x4000;

static mut USR_PRINTF: Option<unsafe extern "C" fn(fmt: *const c_char, ...)> = None;
static mut USR_PRINT_CNTRL: Option<unsafe extern "C" fn(cntrl_code: c_int)> = None;

unsafe fn opng_print_error(msg: *const c_char) {
    if let Some(print_cntrl) = USR_PRINT_CNTRL {
        print_cntrl(b'\x0b' as c_int); // '\v' is vertical tab
    }
    if let Some(printf) = USR_PRINTF {
        printf(b"Error: %s\n\0".as_ptr() as *const c_char, msg);
    }
}
