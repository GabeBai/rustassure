const SIG_tRNS: [u8; 4] = [0x74, 0x52, 0x4e, 0x53];

fn opng_is_image_chunk(chunk_type: &[u8]) -> bool {
    if (chunk_type[0] & 0x20) == 0 {
        return true;
    }
    if chunk_type == &SIG_tRNS {
        return true;
    }
    false
}
