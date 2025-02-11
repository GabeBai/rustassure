#![allow(unaligned_references)]
#[no_mangle]
#[no_mangle]
fn toupper(c: char) -> char {
    c.to_ascii_uppercase()
}

#[no_mangle]
#[no_mangle]
fn main() {
    let c = 'a';
    let upper_c = toupper(c);
    println!("Uppercase: {}", upper_c);
}
