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

#[repr(C)]
#[derive(Debug)]
struct _OSUnalignedU16 {
    __val: volatile c_ushort,
}

#[repr(C)]
#[derive(Debug)]
struct _OSUnalignedU32 {
    __val: volatile c_uint,
}

#[repr(C)]
#[derive(Debug)]
struct _OSUnalignedU64 {
    __val: volatile c_ulonglong,
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

fn url_get_fragment(url: &str) -> *mut i8 {
    unimplemented!()
}

fn url_get_hash(url: &str) -> *mut i8 {
    url_get_fragment(url)
}
