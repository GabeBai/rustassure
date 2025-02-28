#![allow(unaligned_references)]
#[no_mangle]
#[no_mangle]
fn isspecial(c: char) -> bool {
    // Assuming "special" means non-alphanumeric and non-whitespace
    !c.is_alphanumeric() && !c.is_whitespace()
}

#[no_mangle]
#[no_mangle]
fn main() {
    let c = '#';
    if isspecial(c) {
        println!("'{}' is a special character.", c);
    } else {
        println!("'{}' is not a special character.", c);
    }
}
