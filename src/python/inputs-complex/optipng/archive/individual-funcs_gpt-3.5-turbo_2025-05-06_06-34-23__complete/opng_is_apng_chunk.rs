use std::mem;

const SIG_AC_TL: [u8; 4] = [0x61, 0x63, 0x54, 0x4c];
const SIG_FC_TL: [u8; 4] = [0x66, 0x63, 0x54, 0x4c];
const SIG_FD_AT: [u8; 4] = [0x66, 0x64, 0x41, 0x54];

fn opng_is_apng_chunk(chunk_type: &[u8]) -> bool {
    if chunk_type == SIG_AC_TL || chunk_type == SIG_FC_TL || chunk_type == SIG_FD_AT {
        return true;
    }
    false
}

fn main() {
    let chunk_type = [0x61, 0x63, 0x54, 0x4c]; // Example chunk type
    if opng_is_apng_chunk(&chunk_type) {
        println!("Chunk is APNG");
    } else {
        println!("Chunk is not APNG");
    }
}
