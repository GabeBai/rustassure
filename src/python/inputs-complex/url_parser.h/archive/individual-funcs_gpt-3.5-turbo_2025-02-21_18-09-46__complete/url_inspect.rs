use std::os::raw::{c_void, c_ushort, c_uint, c_ulonglong};

#[repr(C)]
union sigval {
    sival_int: c_int,
    sival_ptr: *mut c_void,
}

#[repr(C)]
union __sigaction_u {
    __sa_handler: extern "C" fn(c_int),
    __sa_sigaction: extern "C" fn(c_int, *mut __siginfo, *mut c_void),
}

type uint16_t = c_ushort;
type uint32_t = c_uint;
type uint64_t = c_ulonglong;

#[repr(C, packed)]
struct _OSUnalignedU16 {
    __val: volatile uint16_t,
}

#[repr(C, packed)]
struct _OSUnalignedU32 {
    __val: volatile uint32_t,
}

#[repr(C, packed)]
struct _OSUnalignedU64 {
    __val: volatile uint64_t,
}

#[repr(C)]
union wait {
    w_status: c_int,
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
struct __sbuf {
    _base: *mut u8,
    _size: c_int,
}

struct __sFILEX;
struct url_key_value;

#[repr(C)]
pub struct url_data {
    whole_url: *mut i8,
    protocol: *const i8,
    userinfo: *const i8,
    host: *const i8,
    port: *const i8,
    path: *const i8,
    query: *const url_key_value,
    fragment: *const i8,
}

impl url_data {
    fn new() -> Self {
        Self {
            whole_url: std::ptr::null_mut(),
            protocol: std::ptr::null(),
            userinfo: std::ptr::null(),
            host: std::ptr::null(),
            port: std::ptr::null(),
            path: std::ptr::null(),
            query: std::ptr::null(),
            fragment: std::ptr::null(),
        }
    }
}

#[repr(C)]
pub struct url_key_value {
    key: *const i8,
    value: *const i8,
}

impl url_key_value {
    fn new() -> Self {
        Self {
            key: std::ptr::null(),
            value: std::ptr::null(),
        }
    }
}

extern "C" {
    fn url_parse(url: *const i8) -> *mut url_data;
    fn url_inspect(url: *const i8);
    fn url_data_inspect(data: *const url_data);
}

#[derive(Debug)]
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

fn main() {
    let url = "https://example.com/path?query=value#fragment";
    url_inspect(url.as_ptr() as *const i8);
}
