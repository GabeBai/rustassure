rust
fn deflateReset(z_streamp: &mut z_stream) -> Result<(), String> {
    let ret = deflateResetKeep(z_streamp)?;
    if ret == Z_OK {
        lm_init(&mut z_streamp.state);
    }
    Ok(())
}