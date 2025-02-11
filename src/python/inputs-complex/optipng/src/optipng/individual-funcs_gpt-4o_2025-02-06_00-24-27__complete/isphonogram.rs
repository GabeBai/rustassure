#![allow(unaligned_references)]
#[no_mangle]
#[no_mangle]
fn isphonogram(c: char) -> bool {
    c.is_alphabetic()
}

#[no_mangle]
#[no_mangle]
fn main() {
    let c = 'a';
    if isphonogram(c) {
        println!("The character is a phonogram.");
    } else {
        println!("The character is not a phonogram.");
    }
}
