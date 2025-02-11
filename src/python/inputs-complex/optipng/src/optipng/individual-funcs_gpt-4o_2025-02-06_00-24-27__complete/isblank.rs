#![allow(unaligned_references)]
#[no_mangle]
#[no_mangle]
fn isblank(c: char) -> bool {
    c == ' ' || c == '\t'
}

#[no_mangle]
#[no_mangle]
fn main() {
    let test_char = ' ';
    if isblank(test_char) {
        println!("The character is a blank character.");
    } else {
        println!("The character is not a blank character.");
    }
}
