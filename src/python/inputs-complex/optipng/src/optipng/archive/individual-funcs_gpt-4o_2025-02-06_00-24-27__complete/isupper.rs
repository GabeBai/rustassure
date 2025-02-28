#![allow(unaligned_references)]
#[no_mangle]
#[no_mangle]
fn isupper(c: char) -> bool {
    c.is_uppercase()
}

#[no_mangle]
#[no_mangle]
fn main() {
    let c = 'A';
    if isupper(c) {
        println!("'{}' is an uppercase letter.", c);
    } else {
        println!("'{}' is not an uppercase letter.", c);
    }
}
