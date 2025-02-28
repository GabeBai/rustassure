use std::mem;

fn opng_is_image_chunk(chunk_type: &[u8; 4]) -> bool {
    if (chunk_type[0] & 0x20) == 0 {
        return true;
    }
    if chunk_type == b"tRNS" {
        return true;
    }
    false
}