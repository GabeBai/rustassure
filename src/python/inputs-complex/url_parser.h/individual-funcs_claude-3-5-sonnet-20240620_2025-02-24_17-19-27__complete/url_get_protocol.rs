use std::ffi::c_void;
use std::os::raw::c_int;

union Sigval {
    sival_int: c_int,
    sival_ptr: *mut c_void,
}

union SigactionU {
    __sa_handler: unsafe extern "C" fn(c_int),
    __sa_sigaction: unsafe extern "C" fn(c_int, *mut c_void, *mut c_void),
}

type Uint16T = u16;
type Uint32T = u32;
type Uint64T = u64;

#[repr(packed)]
struct OSUnalignedU16 {
    __val: core::cell::UnsafeCell<Uint16T>,
}

#[repr(packed)]
struct OSUnalignedU32 {
    __val: core::cell::UnsafeCell<Uint32T>,
}

#[repr(packed)]
struct OSUnalignedU64 {
    __val: core::cell::UnsafeCell<Uint64T>,
}

union Wait {
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

struct Sbuf {
    _base: *mut u8,
    _size: c_int,
}

struct SFileX;
struct UrlKeyValue;

extern "C" {
    fn url_get_scheme(url: *const i8) -> *mut i8;
}

#[inline]
unsafe fn url_get_protocol(url: *const i8) -> *mut i8 {
    url_get_scheme(url)
}