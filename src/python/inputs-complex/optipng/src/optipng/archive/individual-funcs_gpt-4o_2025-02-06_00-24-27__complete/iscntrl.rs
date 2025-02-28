#![allow(unaligned_references)]
#[no_mangle]
#[no_mangle]
fn iscntrl(c: char) -> bool {
    c.is_control()
}

#[no_mangle]
#[no_mangle]
fn main() {
    let c = '\n'; // Example character
    if iscntrl(c) {
        println!("The character is a control character.");
    } else {
        println!("The character is not a control character.");
    }
}
