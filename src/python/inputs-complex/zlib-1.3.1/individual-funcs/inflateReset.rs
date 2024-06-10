rust
fn inflate_reset(&mut self) -> Result<(), Error> {
    let state = unsafe { &mut *self.state };
    state.wsize = 0;
    state.whave = 0;
    state.wnext = 0;
    Ok(inflate_reset_keep(self)?)
}