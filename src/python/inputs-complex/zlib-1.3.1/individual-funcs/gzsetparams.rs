rust
use zlib::deflateParams;
use zlib::gzFile;
use zlib::gz_statep;
use zlib::gz_streamp;
use zlib::Z_BLOCK;
use zlib::Z_OK;
use zlib::Z_STREAM_ERROR;

fn gzsetparams(file: &mut gzFile, level: i32, strategy: i32) -> Result<(), String> {
    let state = file.state();
    let strm = unsafe { &*state.strm };

    // check that we're writing and that there's no error
    if state.mode != GZ_WRITE || state.err != Z_OK || state.direct {
        return Err(format!("invalid operation"));
    }

    // if no change is requested, then do nothing
    if level == state.level && strategy == state.strategy {
        return Ok(());
    }

    // check for seek request
    if state.seek != 0 {
        state.seek = 0;
        gz_zero(state, state.skip)?;
    }

    // change compression parameters for subsequent input
    if state.size != 0 {
        // flush previous input with previous parameters before changing
        if strm.avail_in != 0 && gz_comp(state, Z_BLOCK) == -1 {
            return Err(format!("{}", strm.msg));
        }
        deflateParams(strm, level, strategy);
    }
    state.level = level;
    state.strategy = strategy;
    Ok(())
}