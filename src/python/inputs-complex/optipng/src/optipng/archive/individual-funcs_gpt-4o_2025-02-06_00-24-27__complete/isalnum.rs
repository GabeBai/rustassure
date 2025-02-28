#![allow(unaligned_references)]
#[no_mangle]
#[no_mangle]
fn isalnum(c: char) -> bool {
    c.is_alphanumeric()
}

#[no_mangle]
#[no_mangle]
fn main() {
    let c = 'A';
    if isalnum(c) {
        println!("'{}' is alphanumeric.", c);
    } else {
        println!("'{}' is not alphanumeric.", c);
    }
}
