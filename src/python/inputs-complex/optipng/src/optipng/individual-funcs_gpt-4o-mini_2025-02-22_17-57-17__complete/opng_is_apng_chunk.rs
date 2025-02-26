use std::ptr;

const SIG_ACTL: [u8; 4] = [0x61, 0x63, 0x54, 0x4c];
const SIG_FCTL: [u8; 4] = [0x66, 0x63, 0x54, 0x4c];
const SIG_FDAT: [u8; 4] = [0x66, 0x64, 0x41, 0x54];

fn opng_is_apng_chunk(chunk_type: *const u8) -> bool {
    let chunk_slice = unsafe { std::slice::from_raw_parts(chunk_type, 4) };

    chunk_slice == &SIG_ACTL || chunk_slice == &SIG_FCTL || chunk_slice == &SIG_FDAT
}
