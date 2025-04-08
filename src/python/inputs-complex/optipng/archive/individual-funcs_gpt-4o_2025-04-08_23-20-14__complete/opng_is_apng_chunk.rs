fn opng_is_apng_chunk(chunk_type: &[u8]) -> i32 {
    const SIG_ACTL: &[u8; 4] = b"acTL";
    const SIG_FCTL: &[u8; 4] = b"fcTL";
    const SIG_FDAT: &[u8; 4] = b"fdAT";

    if chunk_type == SIG_ACTL || chunk_type == SIG_FCTL || chunk_type == SIG_FDAT {
        return 1;
    }
    0
}
