use std::ptr;

fn ssl_bitmask_set(mask: &mut [u8], mut offset: usize, mut len: usize) {
    let mut start_bits = 8 - (offset % 8);
    if start_bits != 8 {
        let first_byte_idx = offset / 8;
        if len <= start_bits {
            for _ in 0..len {
                mask[first_byte_idx] |= 1 << (start_bits - len);
                len -= 1;
            }
            return;
        }
        offset += start_bits;
        len -= start_bits;
        for _ in 0..start_bits {
            mask[first_byte_idx] |= 1 << (start_bits - 1);
            start_bits -= 1;
        }
    }
    let mut end_bits = len % 8;
    if end_bits != 0 {
        let last_byte_idx = (offset + len) / 8;
        len -= end_bits;
        for _ in 0..end_bits {
            mask[last_byte_idx] |= 1 << (8 - end_bits);
            end_bits -= 1;
        }
    }
    unsafe {
        ptr::write_bytes(mask.as_mut_ptr().add(offset / 8), 0xFF, len / 8);
    }
}

fn main() {
    let mut mask = [0u8; 10];
    ssl_bitmask_set(&mut mask, 3, 10);
    for byte in &mask {
        print!("{:08b} ", byte);
    }
}
