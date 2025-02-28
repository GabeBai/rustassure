use std::os::raw::{c_char, c_void};

#[repr(C)]
union sigval {
    sival_int: i32,
    sival_ptr: *mut c_void,
}

#[repr(C)]
union __sigaction_u {
    __sa_handler: extern "C" fn(i32),
    __sa_sigaction: extern "C" fn(i32, *mut siginfo_t, *mut c_void),
}

#[repr(C)]
#[derive(Debug)]
struct _OSUnalignedU16 {
    __val: u16,
}

#[repr(C)]
#[derive(Debug)]
struct _OSUnalignedU32 {
    __val: u32,
}

#[repr(C)]
#[derive(Debug)]
struct _OSUnalignedU64 {
    __val: u64,
}

#[repr(C)]
union wait {
    w_status: i32,
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
    _size: i32,
}

#[derive(Debug)]
struct __sFILEX;

#[derive(Debug)]
struct url_key_value {
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
    Fragment = 0x40,
    Userinfo = 0x80,
    IPv6Char = 0x100,
}

fn unhex(c: char) -> i32 {
    match c {
        '0'..='9' => c as i32 - '0' as i32,
        'a'..='f' => c as i32 - 'a' as i32 + 10,
        'A'..='F' => c as i32 - 'A' as i32 + 10,
        _ => -1,
    }
}

fn decode_percent(s: &mut String) {
    let mut in_chars = s.chars();
    let mut out_chars = String::new();

    while let Some(c) = in_chars.next() {
        if c == '%' {
            if let Some(high) = in_chars.next().and_then(|h| unhex(h)) {
                if let Some(low) = in_chars.next().and_then(|l| unhex(l)) {
                    out_chars.push((high * 16 + low) as char);
                } else {
                    break;
                }
            } else {
                break;
            }
        } else {
            out_chars.push(c);
        }
    }

    *s = out_chars;
}

fn main() {
    let mut input = String::from("Hello%20World%21");
    decode_percent(&mut input);
    println!("{}", input); // Output: Hello World!
}
