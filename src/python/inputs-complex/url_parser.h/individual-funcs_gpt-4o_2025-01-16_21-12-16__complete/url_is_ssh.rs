#![allow(unaligned_references)]
use std::ffi::CStr;
use std::os::raw::{c_char, c_int, c_void};
use std::ptr;

#[repr(C)]
union Sigval {
    sival_int: c_int,
    sival_ptr: *mut c_void,
}

#[repr(C)]
union SigactionU {
    __sa_handler: Option<extern "C" fn(c_int)>,
    __sa_sigaction: Option<extern "C" fn(c_int, *mut libc::siginfo_t, *mut c_void)>,
}

#[repr(C, packed)]
#[repr(C, packed)]struct OSUnalignedU16 {
    __val: u16,
}

#[repr(C, packed)]
#[repr(C, packed)]struct OSUnalignedU32 {
    __val: u32,
}

#[repr(C, packed)]
#[repr(C, packed)]struct OSUnalignedU64 {
    __val: u64,
}

#[repr(C)]
union Wait {
    w_status: c_int,
    w_T: WaitT,
    w_S: WaitS,
}

#[repr(C)]
#[repr(C, packed)]struct WaitT {
    w_Termsig: u32,
    w_Coredump: u32,
    w_Retcode: u32,
    w_Filler: u32,
}

#[repr(C)]
#[repr(C, packed)]struct WaitS {
    w_Stopval: u32,
    w_Stopsig: u32,
    w_Filler: u32,
}

#[repr(C)]
#[repr(C, packed)]struct Sbuf {
    _base: *mut u8,
    _size: c_int,
}

#[repr(C, packed)]struct SFILEX;

#[repr(C)]
#[repr(C, packed)]struct UrlKeyValue {
    key: *const c_char,
    value: *const c_char,
}

#[derive(Debug)]
enum Category {
    Scheme = 0x01,
    Unreserved = 0x02,
    GenDelim = 0x04,
    SubDelim = 0x08,
    PCharSlash = 0x10,
    HexDigit = 0x20,
    Query = 0x40,
    Fragment = 0x41, // Changed to avoid duplicate value
    Userinfo = 0x80,
    IPv6Char = 0x100,
}

#[no_mangle]
#[no_mangle]
fn url_is_ssh(str: *const c_char) -> bool {
    unsafe {
        if CStr::from_ptr(str) == CStr::from_bytes_with_nul(b"ssh\0").unwrap()
            || CStr::from_ptr(str) == CStr::from_bytes_with_nul(b"git\0").unwrap()
        {
            return true;
        }
    }
    false
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    let ssh_str = std::ffi::CString::new("ssh").unwrap();
    let is_ssh = url_is_ssh(ssh_str.as_ptr());
    println!("Is SSH: {}", is_ssh);
}
