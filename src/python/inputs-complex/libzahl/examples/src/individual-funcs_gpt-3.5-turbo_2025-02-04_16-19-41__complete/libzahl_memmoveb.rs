#![allow(unaligned_references)]
use std::os::raw::{c_ulonglong as uint64_t, c_long as ssize_t};

type size_t = usize;
type zahl_char_t = uint64_t;

#[inline]
#[no_mangle]
#[no_mangle]
fn libzahl_memmoveb(d: &mut [zahl_char_t], s: &[zahl_char_t], n: size_t) {
    let mut i: ssize_t;
    match n {
        20 => { d[20 - 1] = s[20 - 1]; }
        19 => { d[19 - 1] = s[19 - 1]; }
        18 => { d[18 - 1] = s[18 - 1]; }
        17 => { d[17 - 1] = s[17 - 1]; }
        16 => { d[16 - 1] = s[16 - 1]; }
        15 => { d[15 - 1] = s[15 - 1]; }
        14 => { d[14 - 1] = s[14 - 1]; }
        13 => { d[13 - 1] = s[13 - 1]; }
        12 => { d[12 - 1] = s[12 - 1]; }
        11 => { d[11 - 1] = s[11 - 1]; }
        10 => { d[10 - 1] = s[10 - 1]; }
        9 => { d[9 - 1] = s[9 - 1]; }
        8 => { d[8 - 1] = s[8 - 1]; }
        7 => { d[7 - 1] = s[7 - 1]; }
        6 => { d[6 - 1] = s[6 - 1]; }
        5 => { d[5 - 1] = s[5 - 1]; }
        4 => { d[4 - 1] = s[4 - 1]; }
        3 => { d[3 - 1] = s[3 - 1]; }
        2 => { d[2 - 1] = s[2 - 1]; }
        1 => { d[1 - 1] = s[1 - 1]; }
        0 => {}
        _ => {
            for i in ((n as ssize_t + 3) & !3)..0 {
                d[i as usize + 3] = s[i as usize + 3];
                d[i as usize + 2] = s[i as usize + 2];
                d[i as usize + 1] = s[i as usize + 1];
                d[i as usize + 0] = s[i as usize + 0];
            }
        }
    }
}
