#![allow(unaligned_references)]

#[no_mangle]
#[no_mangle]
fn clip_intp2(a: i32, p: u32) -> i32 {
    if ((a as u32).wrapping_add(1u32 << p) & !((2u32 << p) - 1)) != 0 {
        (a >> 31) ^ ((1 << p) - 1)
    } else {
        a
    }
}

#[no_mangle]
#[no_mangle]
fn rshift64(value: i64, shift: u32) -> i64 {
    let rounding = 1i64 << (shift - 1);
    let mask = (1i64 << (shift + 1)) - 1;
    ((value.wrapping_add(rounding) >> shift) - ((value & mask) == rounding) as i64)
}

#[no_mangle]
#[no_mangle]
fn rshift64_clip24(value: i64, shift: u32) -> i32 {
    clip_intp2(rshift64(value, shift) as i32, 23)
}

#[no_mangle]
#[no_mangle]
fn main() {}
