use std::mem;

const OPNG_BITSET_ELT_MAX: u32 = (mem::size_of::<u32>() as u32 * 8) - 1;

const SIG_TRNS: [u8; 4] = [0x74, 0x52, 0x4e, 0x53];

fn opng_is_image_chunk(chunk_type: &[u8]) -> bool {
    if (chunk_type[0] & 0x20) == 0 {
        return true;
    }
    if chunk_type.len() >= 4 && chunk_type[..4] == SIG_TRNS {
        return true;
    }
    false
}
