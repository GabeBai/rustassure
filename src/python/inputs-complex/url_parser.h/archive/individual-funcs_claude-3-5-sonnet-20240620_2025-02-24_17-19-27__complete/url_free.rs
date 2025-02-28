use std::ffi::c_void;

#[repr(C)]
pub union Sigval {
    pub sival_int: i32,
    pub sival_ptr: *mut c_void,
}

#[repr(C)]
pub union SigactionU {
    pub __sa_handler: unsafe extern "C" fn(i32),
    pub __sa_sigaction: unsafe extern "C" fn(i32, *mut Siginfo, *mut c_void),
}

pub type Uint16T = u16;
pub type Uint32T = u32;
pub type Uint64T = u64;

#[repr(C, packed)]
pub struct OSUnalignedU16 {
    pub __val: core::cell::UnsafeCell<Uint16T>,
}

#[repr(C, packed)]
pub struct OSUnalignedU32 {
    pub __val: core::cell::UnsafeCell<Uint32T>,
}

#[repr(C, packed)]
pub struct OSUnalignedU64 {
    pub __val: core::cell::UnsafeCell<Uint64T>,
}

#[repr(C)]
pub union Wait {
    pub w_status: i32,
    pub w_T: WaitT,
    pub w_S: WaitS,
}

#[repr(C)]
pub struct WaitT {
    pub w_Termsig: u32,
    pub w_Coredump: u32,
    pub w_Retcode: u32,
    pub w_Filler: u32,
}

#[repr(C)]
pub struct WaitS {
    pub w_Stopval: u32,
    pub w_Stopsig: u32,
    pub w_Filler: u32,
}

#[repr(C)]
pub struct Sbuf {
    pub _base: *mut u8,
    pub _size: i32,
}

pub struct SfileX;

#[repr(C)]
pub struct UrlKeyValue {
    pub key: *const i8,
    pub value: *const i8,
}

#[repr(C)]
pub struct UrlData {
    pub whole_url: *mut i8,
    pub protocol: *const i8,
    pub userinfo: *const i8,
    pub host: *const i8,
    pub port: *const i8,
    pub path: *const i8,
    pub query: *const UrlKeyValue,
    pub fragment: *const i8,
}

#[repr(C)]
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

#[no_mangle]
pub unsafe extern "C" fn url_free(data: *mut UrlData) {
    if data.is_null() {
        return;
    }
    let data = &mut *data;
    libc::free(data.whole_url as *mut c_void);
    libc::free(data.query as *mut c_void);
    libc::free(data as *mut _ as *mut c_void);
}