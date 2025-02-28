#![allow(unaligned_references)]
const SIG_TRNS: [u8; 4] = [0x74, 0x52, 0x4e, 0x53];

#[no_mangle]
#[no_mangle]
fn opng_is_image_chunk(chunk_type: &[u8]) -> bool {
    if chunk_type.len() < 4 {
        return false; // Ensure the slice is at least 4 bytes long
    }
    if (chunk_type[0] & 0x20) == 0 {
        return true;
    }
    if &chunk_type[0..4] == &SIG_TRNS {
        return true;
    }
    false
}

#[no_mangle]
#[no_mangle]
fn main() {
    let chunk_type: [u8; 4] = [0x74, 0x52, 0x4e, 0x53];
    println!("{}", opng_is_image_chunk(&chunk_type));
}
