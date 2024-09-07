use std::mem;

struct El {
    id: u8,
    next: *mut El,
    prev: *mut El,
}

fn main() {
    let mut els: [El; 26] = unsafe { mem::zeroed() };
    let mut head_a: *mut El = std::ptr::null_mut();
    let mut head_b: *mut El = std::ptr::null_mut();

    for i in 0..26 {
        els[i].id = b'a' + i as u8;
    }

    println!("CDL prepend elem");

    // Rest of your code goes here...
}
