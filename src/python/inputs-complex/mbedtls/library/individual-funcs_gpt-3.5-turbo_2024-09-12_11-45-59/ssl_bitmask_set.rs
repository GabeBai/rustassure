use std::mem;

fn ssl_bitmask_set(mask: &mut [u8], offset: usize, len: usize) {
    let mut start_bits = 8 - (offset % 8);
    if start_bits != 8 {
        let first_byte_idx = offset / 8;
        if len <= start_bits {
            for i in 0..len {
                mask[first_byte_idx] |= 1 << (start_bits - i);
            }
            return;
        }
        let mut new_offset = offset + start_bits;
        let mut new_len = len - start_bits;
        for _ in 0..start_bits {
            mask[first_byte_idx] |= 1 << (start_bits - 1);
        }
    }
    let end_bits = len % 8;
    if end_bits != 0 {
        let last_byte_idx = (offset + len) / 8;
        let mut new_len = len - end_bits;
        for i in 0..end_bits {
            mask[last_byte_idx] |= 1 << (8 - end_bits + i);
        }
    }
    let fill_len = len / 8;
    unsafe {
        let fill_ptr = mask.as_mut_ptr().add(offset / 8);
        let fill_val = 0xFFu8;
        let fill_size = fill_len * mem::size_of::<u8>();
        std::ptr::write_bytes(fill_ptr, fill_val, fill_size);
    }
}
