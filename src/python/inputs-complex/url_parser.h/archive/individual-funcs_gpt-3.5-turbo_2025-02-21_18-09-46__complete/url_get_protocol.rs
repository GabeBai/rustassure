use libc::{c_int, c_void};

#[repr(C)]
union sigval {
    sival_int: c_int,
    sival_ptr: *mut c_void,
}

#[repr(C)]
union __sigaction_u {
    __sa_handler: Option<extern "C" fn(c_int)>,
    __sa_sigaction: Option<extern "C" fn(c_int, *mut siginfo, *mut c_void>,
}

type uint16_t = u16;
type uint32_t = u32;
type uint64_t = u64;

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
    w_Termsig: u8,
    w_Coredump: u8,
    w_Retcode: u8,
    w_Filler: u16,
}

#[repr(C)]
struct WaitS {
    w_Stopval: u8,
    w_Stopsig: u8,
    w_Filler: u16,
}

#[repr(C)]
struct __sbuf {
    _base: *mut u8,
    _size: c_int,
}

struct __sFILEX;
struct url_key_value;

fn url_get_scheme(url: *const i8) -> *mut i8 {
    unimplemented!()
}

#[inline]
fn url_get_protocol(url: *const i8) -> *mut i8 {
    url_get_scheme(url)
}
