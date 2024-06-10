rust
use zlib::{Decompress, Decompressor};

fn gz_comp(state: &mut GzState, flush: i32) -> Result<(), i32> {
    let mut ret = 0;
    let mut writ = 0;
    let mut have = 0;
    let max = (u32::max_value() >> 2) + 1;
    let strm = &mut state.strm as *mut _;

    if state.size == 0 && gz_init(state) != Ok(()) {
        return Err(-1);
    }

    if state.direct {
        while strm.avail_in > 0 {
            let put = if strm.avail_in > max {
                max
            } else {
                strm.avail_in as u32
            };
            writ = write(state.fd, strm.next_in, put);
            if writ < 0 {
                gz_error(state, Z_ERRNO, zstrerror());
                return Err(-1);
            }
            strm.avail_in -= writ as u32;
            strm.next_in += writ;
        }
        return Ok(());
    }

    if state.reset {
        while strm.avail_in == 0 && ret != Z_STREAM_END {
            let mut decompressor = Decompressor::new();
            ret = unsafe {
                (*strm).deflate(
                    &mut decompressor,
                    flush as i32,
                    state.size as u32,
                )
            };
        }
        if strm.avail_in > 0 && ret == Z_STREAM_END {
            state.reset = false;
        }
    }

    while strm.avail_out == 0 || (flush != Z_NO_FLUSH && (flush != Z_FINISH || ret == Z_STREAM_END)) {
        have = strm.avail_out;
        ret = unsafe {
            (*strm).deflate(
                &mut decompressor,
                flush as i32,
                state.size as u32,
            )
        };
        if ret == Z_STREAM_ERROR {
            gz_error(state, Z_STREAM_ERROR, "internal error: deflate stream corrupt");
            return Err(-1);
        }
        have -= strm.avail_out;
    }

    if flush == Z_FINISH {
        state.reset = true;
    }

    Ok(())
}