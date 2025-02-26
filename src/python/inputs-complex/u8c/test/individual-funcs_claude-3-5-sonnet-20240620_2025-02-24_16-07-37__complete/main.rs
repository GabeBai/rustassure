use std::io::{self, Write};
use std::ffi::CStr;
use std::os::raw::c_char;

fn main() {
    let mut l: i32;
    let mut l2: i32;
    let mut c: i32;
    let mut buf = [0u8; 8];
    let s: [*const c_char; 4] = [
        b"Aa\0".as_ptr() as *const c_char,
        "èa\0".as_ptr() as *const c_char,
        "会員\0".as_ptr() as *const c_char,
        "𧀀𧀍\0".as_ptr() as *const c_char,
    ];

    for (k, &s1) in s.iter().enumerate() {
        l = unsafe { u8next_(s1, &mut c) };
        assert_eq!(l, k as i32 + 1, "Expected length: {}, got {}", k + 1, l);

        l2 = unsafe { u8encode_(c, buf.as_mut_ptr() as *mut c_char) };
        assert_eq!(l, l2, "Length should be {}, got {}", l, l2);

        let s1_slice = unsafe { CStr::from_ptr(s1).to_bytes() };
        assert_eq!(&s1_slice[..l as usize], &buf[..l as usize], "Encoding error");

        if std::io::stderr().is_err() {
            eprintln!("    : len={} [S {:02X} {:02X} {:02X} {:02X}] [E {:02X} {:02X} {:02X} {:02X}]",
                l2, s1_slice[0], s1_slice[1], s1_slice[2], s1_slice[3],
                buf[0], buf[1], buf[2], buf[3]);
        }

        assert_eq!(buf[l as usize], 0, "Encoding not 0 terminated!");
    }
}

extern "C" {
    fn u8next_(txt: *const c_char, ch: *mut i32) -> i32;
    fn u8encode_(ch: i32, s: *mut c_char) -> i32;
}