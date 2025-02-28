#![allow(unaligned_references)]
#[no_mangle]
#[no_mangle]
fn islower(c: char) -> bool {
    c.is_lowercase()
}

#[no_mangle]
#[no_mangle]
fn main() {
    let c = 'a';
    if islower(c) {
        println!("'{}' is a lowercase letter.", c);
    } else {
        println!("'{}' is not a lowercase letter.", c);
    }
}
