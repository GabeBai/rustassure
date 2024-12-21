fn ssl_get_reassembly_buffer_size(msg_len: usize, add_bitmap: usize) -> usize {
    let mut alloc_len = 12;
    alloc_len += msg_len;
    if add_bitmap != 0 {
        alloc_len += msg_len / 8 + (msg_len % 8 != 0) as usize;
    }
    alloc_len
}
