#![allow(unaligned_references)]
#[no_mangle]
#[no_mangle]
fn isrune(c: char) -> bool {
    // In Rust, all `char` values are valid Unicode scalar values.
    // If you need to check for specific properties, you can use methods like `is_alphabetic`, `is_numeric`, etc.
    c.is_alphabetic() || c.is_numeric() // Example check, adjust based on your needs
}

#[no_mangle]
#[no_mangle]
fn main() {
    let c = 'a';
    println!("Is '{}' a rune? {}", c, isrune(c));
}
