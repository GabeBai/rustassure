rust
fn braid<const N: usize, const W: usize>(ltl: [[z_crc_t; 256]; W], big: [[z_word_t; 256]; W]) {
    for k in 0..W {
        let p = x2nmodp((N * W + 3 - k) << 3, 0);
        ltl[k][0] = 0;
        big[W - 1 - k][0] = 0;
        for i in 1..=256 {
            ltl[k][i] = multmodp(i << 24, p);
            big[W - 1 - k][i] = byte_swap(ltl[k][i]);
        }
    }
}