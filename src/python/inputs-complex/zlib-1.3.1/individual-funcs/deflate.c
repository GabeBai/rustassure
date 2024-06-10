local void check_match(deflate_state *s, IPos start, IPos match, int length) {
    /* check that the match is indeed a match */
    Bytef *back = s->window + (int)match, *here = s->window + start;
    IPos len = length;
    if (match == (IPos)-1) {
        /* match starts one byte before the current window -- just compare the
           subsequent length-1 bytes */
        back++;
        here++;
        len--;
    }
    if (zmemcmp(back, here, len) != EQUAL) {
        fprintf(stderr, " start %u, match %d, length %d\n",
                start, (int)match, length);
        do {
            fprintf(stderr, "(%02x %02x)", *back++, *here++);
        } while (--len != 0);
        z_error("invalid match");
    }
    if (z_verbose > 1) {
        fprintf(stderr,"\\[%d,%d]", start - match, length);
        do { putc(s->window[start++], stderr); } while (--length != 0);
    }
}
