#![allow(unaligned_references)]
#[no_mangle]
#[no_mangle]
fn is_print(c: char) -> bool {
    c.is_ascii_graphic()
}

#[no_mangle]
#[no_mangle]
fn main() {
    let test_char = 'A';
    if is_print(test_char) {
        println!("'{}' is a printable character.", test_char);
    } else {
        println!("'{}' is not a printable character.", test_char);
    }
}
