rust
local int gz_avail(gz_statep state) {
    unsigned got;
    z_streamp strm = &(state.strm);

    if state.err != Z_OK && state.err != Z_BUF_ERROR {
        return -1;
    }

    if state.eof == 0 {
        if strm.avail_in > 0 {       /* copy what's there to the start */
            unsigned char *p = state.in;
            unsigned const char *q = strm.next_in;
            unsigned n = strm.avail_in;
            do {
                *p++ = *q++;
            } while (--n);
        }
        if gz_load(state, state.in + strm.avail_in,
                   state.size - strm.avail_in, &got) == -1 {
            return -1;
        }
        strm.avail_in += got;
        strm.next_in = state.in;
    }

    return 0;
}