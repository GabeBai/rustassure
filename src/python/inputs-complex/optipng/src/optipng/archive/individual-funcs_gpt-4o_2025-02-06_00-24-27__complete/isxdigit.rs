#![allow(unaligned_references)]
#[no_mangle]
#[no_mangle]
fn isxdigit(c: char) -> bool {
    c.is_digit(16)
}

#[no_mangle]
#[no_mangle]
fn main() {
    let c = 'A';
    if isxdigit(c) {
        println!("'{}' is a hexadecimal digit.", c);
    } else {
        println!("'{}' is not a hexadecimal digit.", c);
    }
}
