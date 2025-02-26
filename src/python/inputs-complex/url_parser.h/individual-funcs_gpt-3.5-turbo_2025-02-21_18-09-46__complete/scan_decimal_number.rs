use std::os::raw::{c_int, c_void};

#[repr(C)]
union sigval {
    sival_int: i32,
    sival_ptr: *mut c_void,
}

#[repr(C)]
union __sigaction_u {
    __sa_handler: Option<extern "C" fn(c_int)>,
    __sa_sigaction: Option<extern "C" fn(c_int, *mut __siginfo, *mut c_void>,
}

#[repr(C)]
#[derive(Clone, Copy)]
pub struct _OSUnalignedU16 {
    __val: u16,
}

#[repr(C)]
#[derive(Clone, Copy)]
pub struct _OSUnalignedU32 {
    __val: u32,
}

#[repr(C)]
#[derive(Clone, Copy)]
pub struct _OSUnalignedU64 {
    __val: u64,
}

#[repr(C)]
union wait {
    w_status: i32,
    w_T: WaitT,
    w_S: WaitS,
}

#[repr(C)]
struct WaitT {
    w_Termsig: u32,
    w_Coredump: u32,
    w_Retcode: u32,
    w_Filler: u32,
}

#[repr(C)]
struct WaitS {
    w_Stopval: u32,
    w_Stopsig: u32,
    w_Filler: u32,
}

#[repr(C)]
pub struct __sbuf {
    _base: *mut u8,
    _size: i32,
}

pub struct __sFILEX;

pub struct url_key_value {
    key: *const i8,
    value: *const i8,
}

#[derive(Debug, PartialEq)]
pub enum Category {
    Scheme = 0x01,
    Unreserved = 0x02,
    GenDelim = 0x04,
    SubDelim = 0x08,
    PCharSlash = 0x10,
    HexDigit = 0x20,
    Query = 0x40,
    Fragment = 0x40,
    Userinfo = 0x80,
    IPv6Char = 0x100,
}

impl url_key_value {
    fn new(key: *const i8, value: *const i8) -> Self {
        url_key_value { key, value }
    }
}

fn scan_decimal_number(start: *mut i8) -> Option<*mut i8> {
    let mut p = start;
    while unsafe { *p } >= '0' as i8 && unsafe { *p } <= '9' as i8 {
        p = unsafe { p.offset(1) };
    }
    if p != start {
        Some(p)
    } else {
        None
    }
}

fn main() {
    // You can test the scan_decimal_number function here
}
