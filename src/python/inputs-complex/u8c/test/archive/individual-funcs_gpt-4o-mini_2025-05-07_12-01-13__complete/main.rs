use std::io::{self, Write};
use std::convert::TryInto;

extern "C" {
    fn u8next_(txt: *const i8, ch: *mut i32) -> i32;
    fn u8next_FAST(txt: *const i8, ch: *mut i32) -> i32;
}

fn main() {
    let s: [&str; 4] = ["Aa", "èa", "会員", "𧀀𧀍"];
    let cp: [i32; 4] = [0x41, 0xE8, 0x4F1A, 0x27000];

    let mut c: i32 = 0;

    for k in 0..s.len() {
        let s1 = s[k].as_ptr() as *const i8; // Convert &str to *const i8
        let l = unsafe { u8next_(s1, &mut c) };

        let e_ = !(l == (k + 1).try_into().unwrap());
        let _ = io::stdout().flush();
        eprintln!("{}: ({}) {}:{}", if e_ { "FAIL" } else { "PASS" }, "l==k+1", "test2.rs", 17);
        if e_ {
            eprintln!("    : Wrong length: expected {}, got {}", k + 1, l);
        }

        let l = unsafe { u8next_FAST(s1, &mut c) };

        let e_ = !(l == (k + 1).try_into().unwrap());
        let _ = io::stdout().flush();
        eprintln!("{}: ({}) {}:{}", if e_ { "FAIL" } else { "PASS" }, "l==k+1", "test2.rs", 20);
        if e_ {
            eprintln!("    : (FAST) Wrong length: expected {}, got {}", k + 1, l);
        }

        let e_ = !(c == cp[k]);
        let _ = io::stdout().flush();
        eprintln!("{}: ({}) {}:{}", if e_ { "FAIL" } else { "PASS" }, "c==cp[k]", "test2.rs", 21);
        if e_ {
            eprintln!("    : (FAST) Wrong code: expected {:06X}, got {:06X}", cp[k], c);
        }
    }
}
