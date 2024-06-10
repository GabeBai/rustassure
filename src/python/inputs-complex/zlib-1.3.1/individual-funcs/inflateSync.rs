rust
use inflate::{inflate, InflateState};

fn inflateSync(strm: &mut InflateState) -> Result<(), inflate::Error> {
    let mut len = 0; // number of bytes to look at or looked at
    let flags;        // temporary to save header status
    let in;           // temporary to save total_in
    let out;          // temporary to save total_out
    let buf = [0u8; 4];

    if strm.avail_in == 0 && state.bits < 8 {
        return Err(inflate::Error::Buf);
    }

    if state.mode != SYNC {
        state.mode = SYNC;
        state.hold >>= state.bits & 7;
        state.bits -= state.bits & 7;
        len = 0;
        while state.bits >= 8 {
            buf[len] = (unsigned char)(state.hold);
            state.hold >>= 8;
            state.bits -= 8;
        }
        state.have = 0;
        syncsearch(&mut state.have, &buf[..len]);
    }

    len = syncsearch(&mut state.have, &strm.next_in[..strm.avail_in]);
    strm.avail_in -= len;
    strm.total_in += len;

    if state.have != 4 {
        return Err(inflate::Error::Data);
    }

    if state.flags == -1 {
        state.wrap = 0; // if no header yet, treat as raw
    } else {
        state.wrap &= !4; // no point in computing a check value now
    }
    flags = state.flags;
    in = strm.total_in;
    out = strm.total_out;
    inflate::inflateReset(strm);
    strm.total_in = in;
    strm.total_out = out;
    state.flags = flags;
    state.mode = TYPE;
    Ok(())
}