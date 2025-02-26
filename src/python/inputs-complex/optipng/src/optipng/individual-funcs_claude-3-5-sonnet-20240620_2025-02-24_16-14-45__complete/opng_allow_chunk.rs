use std::mem;

fn opng_allow_chunk(chunk_type: &[u8; 4]) -> bool {
    if opng_is_image_chunk(chunk_type) {
        return true;
    }
    if unsafe { options.strip_all != 0 } {
        return false;
    }
    if chunk_type == &sig_dSIG {
        return false;
    }
    if unsafe { options.snip != 0 } && opng_is_apng_chunk(chunk_type) {
        return false;
    }
    true
}