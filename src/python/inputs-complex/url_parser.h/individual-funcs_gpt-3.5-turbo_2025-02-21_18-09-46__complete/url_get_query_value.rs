use std::os::raw::{c_char, c_void};

#[repr(C)]
pub struct OSUnalignedU16 {
    __val: u16,
}

#[repr(C)]
pub struct OSUnalignedU32 {
    __val: u32,
}

#[repr(C)]
pub struct OSUnalignedU64 {
    __val: u64,
}

#[repr(C)]
pub union sigval {
    sival_int: i32,
    sival_ptr: *mut c_void,
}

#[repr(C)]
pub union sigaction_u {
    __sa_handler: extern "C" fn(i32),
    __sa_sigaction: extern "C" fn(i32, *mut __siginfo, *mut c_void),
}

#[repr(C)]
pub struct wait {
    w_status: i32,
    w_T: w_T,
    w_S: w_S,
}

#[repr(C)]
pub struct w_T {
    w_Termsig: u32,
    w_Coredump: u32,
    w_Retcode: u32,
    w_Filler: u32,
}

#[repr(C)]
pub struct w_S {
    w_Stopval: u32,
    w_Stopsig: u32,
    w_Filler: u32,
}

pub struct __sbuf {
    _base: *mut u8,
    _size: i32,
}

pub struct __sFILEX;

pub struct url_key_value {
    key: *const c_char,
    value: *const c_char,
}

pub struct url_data {
    whole_url: *mut c_char,
    protocol: *const c_char,
    userinfo: *const c_char,
    host: *const c_char,
    port: *const c_char,
    path: *const c_char,
    query: *const url_key_value,
    fragment: *const c_char,
}

impl url_data {
    pub fn get_query_value(&self, key: *const c_char) -> *const c_char {
        if self.query.is_null() {
            return std::ptr::null();
        }
        let mut kv = self.query;
        loop {
            let current_kv = unsafe { &*kv };
            if current_kv.key.is_null() {
                break;
            }
            if unsafe { libc::strcmp(current_kv.key, key) } == 0 {
                return current_kv.value;
            }
            kv = unsafe { kv.offset(1) };
        }
        std::ptr::null()
    }
}

#[repr(u32)]
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

