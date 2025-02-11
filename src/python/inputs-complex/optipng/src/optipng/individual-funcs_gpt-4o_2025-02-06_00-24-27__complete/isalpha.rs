#![allow(unaligned_references)]
#[no_mangle]
#[no_mangle]
fn is_alpha(c: i32) -> bool {
    // Convert the integer to a char, assuming it's a valid ASCII value
    if let Some(character) = std::char::from_u32(c as u32) {
        character.is_alphabetic()
    } else {
        false
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    let c = 'A' as i32;
    println!("Is '{}' an alphabetic character? {}", c as u8 as char, is_alpha(c));
}
