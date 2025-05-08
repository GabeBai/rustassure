use std::ptr;

const SIG_ACTL: [u8; 4] = [0x61, 0x63, 0x54, 0x4c];
const SIG_FCTL: [u8; 4] = [0x66, 0x63, 0x54, 0x4c];
const SIG_FDAT: [u8; 4] = [0x66, 0x64, 0x41, 0x54];

fn opng_is_apng_chunk(chunk_type: *const u8) -> i32 {
    if unsafe { ptr::read(chunk_type as *const [u8; 4]) } == SIG_ACTL ||
       unsafe { ptr::read(chunk_type as *const [u8; 4]) } == SIG_FCTL ||
       unsafe { ptr::read(chunk_type as *const [u8; 4]) } == SIG_FDAT {
        return 1;
    }
    0
}
