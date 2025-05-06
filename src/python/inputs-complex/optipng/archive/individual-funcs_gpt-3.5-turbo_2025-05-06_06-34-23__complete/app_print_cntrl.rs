use std::os::raw::{c_char, c_int};
use std::io::{self, Write};

const OPNG_BITSET_ELT_MIN: u32 = 0;
const OPNG_BITSET_ELT_MAX: u32 = (std::mem::size_of::<opng_bitset_t>() as u32 * 8) - 1;

type opng_bitset_t = u32;
type png_byte = u8;
type png_bytep = *mut png_byte;
type png_const_charp = *const c_char;
type png_struct = std::ffi::c_void;
type png_structp = *mut png_struct;

static mut CON_FILE: Option<io::Stdout> = None;
static mut LOG_FILE: Option<io::Stdout> = None;
static mut START_OF_LINE: bool = false;

unsafe fn fputc(c: c_int, stream: *mut io::Stdout) -> c_int {
    if let Some(stream) = stream.as_mut() {
        stream.write(&[c as u8]).unwrap();
    }
    c
}

unsafe fn fputs(s: *const c_char, stream: *mut io::Stdout) -> c_int {
    if let Some(stream) = stream.as_mut() {
        let c_str = std::ffi::CStr::from_ptr(s);
        stream.write(c_str.to_bytes()).unwrap();
    }
    0
}

#[repr(C)]
struct timespec {
    tv_sec: i64,
    tv_nsec: i64,
}

#[repr(C)]
struct fd_set {
    __fds_bits: [__fd_mask; 128],
}

union pthread_attr_t {
    __size: [u8; 56],
    __align: i64,
}

unsafe fn app_print_cntrl(cntrl_code: c_int) {
    let con_str: &'static str;
    let log_str: &'static str;
    let mut i: c_int;

    if cntrl_code == '\r' as c_int {
        con_str = "\r";
        log_str = "\n";
        START_OF_LINE = true;
    } else if cntrl_code == '\v' as c_int {
        if !START_OF_LINE {
            con_str = "\n";
            log_str = "\n";
            START_OF_LINE = true;
        } else {
            con_str = "";
            log_str = "";
        }
    } else if cntrl_code < 0 && cntrl_code > -80 && START_OF_LINE {
        if let Some(con_file) = CON_FILE.as_mut() {
            for i in (cntrl_code..0).rev() {
                fputc(' ' as c_int, con_file as *mut _);
            }
        }
        con_str = "\r";
        log_str = "";
    } else {
        con_str = "<?>";
        log_str = "<?>";
    }

    if let Some(con_file) = CON_FILE.as_mut() {
        fputs(con_str.as_ptr() as *const c_char, con_file as *mut _);
    }
    if let Some(log_file) = LOG_FILE.as_mut() {
        fputs(log_str.as_ptr() as *const c_char, log_file as *mut _);
    }
}
