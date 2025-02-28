#![allow(unaligned_references)]
#[no_mangle]
#[no_mangle]
fn isspace(c: char) -> bool {
    c.is_whitespace()
}

#[no_mangle]
#[no_mangle]
fn main() {
    let test_char = ' ';
    if isspace(test_char) {
        println!("The character is a whitespace.");
    } else {
        println!("The character is not a whitespace.");
    }
}
