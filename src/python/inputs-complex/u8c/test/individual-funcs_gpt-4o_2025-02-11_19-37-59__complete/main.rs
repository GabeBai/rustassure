#![allow(unaligned_references)]
use std::ffi::CStr;
use std::io::{self, Write};

#[no_mangle]
#[no_mangle]
fn u8next_(txt: &str, ch: &mut char) -> usize {
    let mut chars = txt.chars();
    if let Some(c) = chars.next() {
        *ch = c;
        c.len_utf8()
    } else {
        0
    }
}

#[no_mangle]
#[no_mangle]
fn u8encode_(ch: char, s: &mut [u8]) -> usize {
    let encoded = ch.encode_utf8(s);
    encoded.len()
}

#[no_mangle]
#[no_mangle]
fn main() {
    let s = ["Aa", "èa", "会員", "𧀀𧀍"];
    for (k, &s1) in s.iter().enumerate() {
        let mut c = '\0';
        let l = u8next_(s1, &mut c);
        let e_ = l != k + 1;
        println!(
            "{}: (l == k+1) test4.rs:19",
            if e_ { "FAIL" } else { "PASS" }
        );
        if e_ {
            println!("    : Expected length: {}, got {}", k + 1, l);
        }

        let mut buf = [0u8; 8];
        let l2 = u8encode_(c, &mut buf);
        let e_ = l != l2;
        println!(
            "{}: (l == l2) test4.rs:21",
            if e_ { "FAIL" } else { "PASS" }
        );
        if e_ {
            println!("    : Length should be {}, got {}", l, l2);
        }

        let s1_bytes = s1.as_bytes();
        let e_ = &s1_bytes[..l] != &buf[..l];
        println!(
            "{}: (strncmp(s1,buf,l) == 0) test4.rs:22",
            if e_ { "FAIL" } else { "PASS" }
        );
        if e_ {
            println!("    : Encoding error");
        }

        if e_ {
            println!(
                "    : len={} [S {:02X?} {:02X?} {:02X?} {:02X?}] [E {:02X?} {:02X?} {:02X?} {:02X?}] test4.rs:25",
                l2,
                s1_bytes.get(0).unwrap_or(&0),
                s1_bytes.get(1).unwrap_or(&0),
                s1_bytes.get(2).unwrap_or(&0),
                s1_bytes.get(3).unwrap_or(&0),
                buf.get(0).unwrap_or(&0),
                buf.get(1).unwrap_or(&0),
                buf.get(2).unwrap_or(&0),
                buf.get(3).unwrap_or(&0),
            );
        }

        let e_ = buf[l] != 0;
        println!(
            "{}: (buf[l]=='\\0') test4.rs:28",
            if e_ { "FAIL" } else { "PASS" }
        );
        if e_ {
            println!("    : Encoding not 0 terminated!");
        }
    }
}
