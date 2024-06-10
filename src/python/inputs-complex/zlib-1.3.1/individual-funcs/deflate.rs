rust
fn check_match(s: &mut deflate_state, start: IPos, match: IPos, length: int) {
    /* check that the match is indeed a match */
    let back = s.window + (int)match;
    let here = s.window + start;
    let len = length;
    if match == (IPos)-1 {
        /* match starts one byte before the current window -- just compare the
           subsequent length-1 bytes */
        back += 1;
        here += 1;
        len -= 1;
    }
    if zmemcmp(back, here, len) != EQUAL {
        eprintln!(" start {}, match {}, length {}",
                   start, (int)match, length);
        do {
            eprint!("({:02x} {:02x})", *back++, *here++);
        } while len != 0;
        z_error!("invalid match");
    }
    if z_verbose > 1 {
        eprintln!("\\[{} {}]", start - match, length);
        do { putc(s.window[start], stderr); } while length != 0;
    }
}