#![allow(unaligned_references)]
use std::ffi::c_void;
use std::ptr;

// Equivalent to C's `union sigval`
enum Sigval {
    SivalInt(i32),
    SivalPtr(*mut c_void),
}

// Equivalent to C's `union __sigaction_u`
enum SigactionU {
    SaHandler(Option<extern "C" fn(i32)>),
    SaSigaction(Option<extern "C" fn(i32, *mut libc::siginfo_t, *mut c_void)>),
}

// Equivalent to C's packed structs
#[repr(C, packed)]
#[repr(C, packed)]struct OSUnalignedU16 {
    val: u16,
}

#[repr(C, packed)]
#[repr(C, packed)]struct OSUnalignedU32 {
    val: u32,
}

#[repr(C, packed)]
#[repr(C, packed)]struct OSUnalignedU64 {
    val: u64,
}

// Equivalent to C's `union wait`
enum Wait {
    WStatus(i32),
    WT {
        w_termsig: u32,
        w_coredump: u32,
        w_retcode: u32,
        w_filler: u32,
    },
    WS {
        w_stopval: u32,
        w_stopsig: u32,
        w_filler: u32,
    },
}

// Equivalent to C's `struct __sbuf`
#[repr(C, packed)]struct Sbuf {
    base: *mut u8,
    size: i32,
}

// Equivalent to C's `enum Category`
#[repr(u32)]
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

// Equivalent to C's `struct url_key_value`
#[repr(C, packed)]struct UrlKeyValue {
    key: *const u8,
    value: *const u8,
}

// Equivalent to C's `unhex` function
#[no_mangle]
#[no_mangle]
fn unhex(s: &str) -> i32 {
    if let Some(c) = s.chars().next() {
        match c {
            '0'..='9' => (c as i32) - ('0' as i32),
            'A'..='F' => (c as i32) - ('A' as i32) + 10,
            'a'..='f' => (c as i32) - ('a' as i32) + 10,
            _ => -1,
        }
    } else {
        -1
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage of unhex
    let hex_value = unhex("A");
    println!("Hex value of 'A': {}", hex_value);
}
