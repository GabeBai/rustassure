#![allow(unaligned_references)]
#[no_mangle]
#[no_mangle]
fn is_hex_number(c: char) -> bool {
    c.is_ascii_hexdigit()
}

#[no_mangle]
#[no_mangle]
fn main() {
    let c = 'A';
    if is_hex_number(c) {
        println!("'{}' is a hexadecimal digit.", c);
    } else {
        println!("'{}' is not a hexadecimal digit.", c);
    }
}
