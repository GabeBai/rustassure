rust
use deflate::{deflate, DeflateState};

fn deflateSetDictionary(strm: &mut DeflateState, dictionary: &[u8], dict_length: u32) -> Result<(), ()> {
    if strm.state.is_none() || dictionary.is_empty() {
        return Err(());
    }

    let mut s = strm.state.unwrap();
    let wrap = s.wrap;

    // When using zlib wrappers, compute Adler-32 for provided dictionary
    if wrap == 1 {
        strm.adler = adler32(strm.adler, dictionary, dict_length);
    }
    s.wrap = 0;

    // If dictionary would fill window, just replace the history
    if dict_length >= s.w_size {
        if wrap == 0 {
            CLEAR_HASH(s);
            s.strstart = 0;
            s.block_start = 0L;
            s.insert = 0;
        } else {
            dictionary += dict_length - s.w_size; // use the tail
            dict_length = s.w_size;
        }
    }

    // Insert dictionary into window and hash
    let mut avail = strm.avail_in;
    let mut next = strm.next_in;
    strm.avail_in = dict_length;
    strm.next_in = dictionary;
    fill_window(s);
    while s.lookahead >= MIN_MATCH {
        let mut str = s.strstart;
        let mut n = s.lookahead - (MIN_MATCH-1);
        while n > 0 {
            UPDATE_HASH(s, s.ins_h, s.window[str + MIN_MATCH-1]);
#ifndef FASTEST
            s.prev[str & s.w_mask] = s.head[s.ins_h];
#endif
            s.head[s.ins_h] = (Pos)str;
            str++;
        }
        s.strstart = str;
        s.lookahead = MIN_MATCH-1;
        fill_window(s);
    }
    s.strstart += s.lookahead;
    s.block_start = (long)s.strstart;
    s.insert = s.lookahead;
    s.lookahead = 0;
    s.match_length = s.prev_length = MIN_MATCH-1;
    s.match_available = 0;
    strm.next_in = next;
    strm.avail_in = avail;
    s.wrap = wrap;
    Ok(())
}