#![allow(unaligned_references)]
#[no_mangle]
#[no_mangle]
fn is_ideogram(c: char) -> bool {
    // Check if the character is in the CJK Unified Ideographs block
    matches!(c, '\u{4E00}'..='\u{9FFF}')
}

#[no_mangle]
#[no_mangle]
fn main() {
    let c = '中'; // Example character
    if is_ideogram(c) {
        println!("The character is an ideogram.");
    } else {
        println!("The character is not an ideogram.");
    }
}
