use std::ffi::CStr;
use std::os::raw::{c_char, c_int};
use std::ptr;

#[repr(C)]
#[derive(Debug)]
struct Timespec {
    tv_sec: i64, // Equivalent to __time_t
    tv_nsec: i64, // Equivalent to __syscall_slong_t
}

#[repr(C)]
#[derive(Debug)]
struct SigSet {
    __val: [u64; 1024 / (8 * std::mem::size_of::<u64>())],
}

#[repr(C)]
#[derive(Debug)]
struct JmpBuf {
    __jmpbuf: [i64; 8], // Equivalent to __jmp_buf
    __mask_was_saved: c_int,
    __saved_mask: SigSet,
}

type JmpBufArray = [JmpBuf; 1];

#[repr(C)]
#[derive(Debug)]
struct ExceptionContext {
    penv: *mut JmpBufArray,
    caught: c_int,
    v: ExceptionValue,
}

#[repr(C)]
#[derive(Debug)]
struct ExceptionValue {
    etmp: *const c_char,
}

#[repr(C)]
#[derive(Debug)]
struct PngStruct;

type PngStructP = *mut PngStruct;

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

type UsrPrintf = extern "C" fn(fmt: *const c_char, ...);
type UsrPrintCntrl = extern "C" fn(cntrl_code: c_int);

static mut usr_printf: Option<UsrPrintf> = None;
static mut usr_print_cntrl: Option<UsrPrintCntrl> = None;

fn opng_print_warning(msg: &str) {
    unsafe {
        if let Some(print_cntrl) = usr_print_cntrl {
            print_cntrl('\u{000B}' as c_int); // '\v' in C
        }
        if let Some(printf) = usr_printf {
            let c_msg = CStr::from_bytes_with_nul(msg.as_bytes()).unwrap();
            printf(c_msg.as_ptr());
        }
    }
}
