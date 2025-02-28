#![allow(unaligned_references)]
#[no_mangle]
#[no_mangle]
fn isnumber(c: i32) -> bool {
    // Convert the integer to a character
    if let Some(character) = std::char::from_u32(c as u32) {
        character.is_numeric()
    } else {
        false
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    let c = '5' as i32;
    println!("Is number: {}", isnumber(c)); // Should print: Is number: true
}
