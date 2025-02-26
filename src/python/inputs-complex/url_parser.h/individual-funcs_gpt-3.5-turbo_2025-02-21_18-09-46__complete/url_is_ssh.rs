use std::os::raw::{c_int, c_void};

extern "C" {
    fn strcmp(s1: *const i8, s2: *const i8) -> c_int;
}

#[repr(C)]
union Sigval {
    sival_int: c_int,
    sival_ptr: *mut c_void,
}

#[repr(C)]
union SigActionU {
    __sa_handler: extern "C" fn(c_int),
    __sa_sigaction: extern "C" fn(c_int, *mut libc::siginfo, *mut c_void),
}

#[repr(C)]
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

#[repr(C)]
struct OSUnalignedU16 {
    __val: u16,
}

#[repr(C)]
struct OSUnalignedU32 {
    __val: u32,
}

#[repr(C)]
struct OSUnalignedU64 {
    __val: u64,
}

struct SBuf {
    _base: *mut u8,
    _size: c_int,
}

struct SFileX;

struct UrlKeyValue {
    key: *const i8,
    value: *const i8,
}

#[derive(Debug, PartialEq)]
enum Category {
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

fn url_is_ssh(str: &str) -> bool {
    str == "ssh" || str == "git"
}

fn main() {
    let str1 = "ssh";
    let str2 = "git";
    println!("{}", url_is_ssh(str1)); // Output: true
    println!("{}", url_is_ssh(str2)); // Output: true
}
