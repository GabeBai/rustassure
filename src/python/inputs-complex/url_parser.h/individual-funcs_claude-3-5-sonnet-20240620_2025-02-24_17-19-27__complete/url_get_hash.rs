use std::ffi::c_void;
use std::os::raw::{c_char, c_int};

#[repr(C)]
pub union sigval {
    pub sival_int: c_int,
    pub sival_ptr: *mut c_void,
}

#[repr(C)]
pub union __sigaction_u {
    pub __sa_handler: unsafe extern "C" fn(c_int),
    pub __sa_sigaction: unsafe extern "C" fn(c_int, *mut __siginfo, *mut c_void),
}

pub type uint16_t = u16;
pub type uint32_t = u32;
pub type uint64_t = u64;

#[repr(C, packed)]
pub struct _OSUnalignedU16 {
    pub __val: core::cell::UnsafeCell<uint16_t>,
}

#[repr(C, packed)]
pub struct _OSUnalignedU32 {
    pub __val: core::cell::UnsafeCell<uint32_t>,
}

#[repr(C, packed)]
pub struct _OSUnalignedU64 {
    pub __val: core::cell::UnsafeCell<uint64_t>,
}

#[repr(C)]
pub union wait {
    pub w_status: c_int,
    pub w_T: w_T,
    pub w_S: w_S,
}

#[repr(C)]
pub struct w_T {
    pub w_Termsig: u32,
    pub w_Coredump: u32,
    pub w_Retcode: u32,
    pub w_Filler: u32,
}

#[repr(C)]
pub struct w_S {
    pub w_Stopval: u32,
    pub w_Stopsig: u32,
    pub w_Filler: u32,
}

#[repr(C)]
pub struct __sbuf {
    pub _base: *mut u8,
    pub _size: c_int,
}

pub struct __sFILEX;
pub struct url_key_value;
pub struct __siginfo;

extern "C" {
    fn url_get_fragment(url: *const c_char) -> *mut c_char;
}

#[inline]
pub unsafe fn url_get_hash(url: *const c_char) -> *mut c_char {
    url_get_fragment(url)
}