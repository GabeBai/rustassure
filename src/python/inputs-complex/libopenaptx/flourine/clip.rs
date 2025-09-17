#![allow(unaligned_references)]

#[no_mangle]
#[no_mangle]
fn clip(a: i32, amin: i32, amax: i32) -> i32 {
    if a < amin {
        amin
    } else if a > amax {
        amax
    } else {
        a
    }
}
