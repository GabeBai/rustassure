local void braid(z_crc_t ltl[][256], z_word_t big[][256], int n, int w) {
    int k;
    z_crc_t i, p, q;
    for (k = 0; k < w; k++) {
        p = x2nmodp((n * w + 3 - k) << 3, 0);
        ltl[k][0] = 0;
        big[w - 1 - k][0] = 0;
        for (i = 1; i < 256; i++) {
            ltl[k][i] = q = multmodp(i << 24, p);
            big[w - 1 - k][i] = byte_swap(q);
        }
    }
}
