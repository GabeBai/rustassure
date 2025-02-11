#![allow(unaligned_references)]
use std::os::raw::{c_char, c_void};

type zahl_char_t = u64;

#[no_mangle]
#[no_mangle]
fn sprintint_fix(buf: &mut [u8; 20], mut v: zahl_char_t) {
    const PARTIALS: &[u16] = &[
        0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
        // Add the rest of the values from the C code
    ];

    let buffer = unsafe { &mut *(buf.as_mut_ptr() as *mut [u16; 10]) };

    buffer[8] = PARTIALS[(v % 100) as usize];
    v /= 100;
    buffer[7] = PARTIALS[(v % 100) as usize];
    v /= 100;
    buffer[6] = PARTIALS[(v % 100) as usize];
    v /= 100;
    buffer[5] = PARTIALS[(v % 100) as usize];
    v /= 100;
    buffer[4] = PARTIALS[(v % 100) as usize];
    v /= 100;
    buffer[3] = PARTIALS[(v % 100) as usize];
    v /= 100;
    buffer[2] = PARTIALS[(v % 100) as usize];
    v /= 100;
    buffer[1] = PARTIALS[(v % 100) as usize];
    v /= 100;
    buffer[0] = PARTIALS[(v % 100) as usize];
    *buf = [(b'0' + v as u8), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
}
