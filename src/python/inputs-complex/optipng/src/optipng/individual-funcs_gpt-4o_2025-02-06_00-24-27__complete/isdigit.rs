#![allow(unaligned_references)]
#[no_mangle]
#[no_mangle]
fn is_digit(c: char) -> bool {
    c.is_ascii_digit()
}

#[no_mangle]
#[no_mangle]
fn main() {
    let c = '5';
    if is_digit(c) {
        println!("'{}' is a digit.", c);
    } else {
        println!("'{}' is not a digit.", c);
    }
}
