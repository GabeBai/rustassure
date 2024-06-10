rust
fn inflateSyncPoint(state: &mut InflateState) -> bool {
    match state.mode {
        Mode::STORED => return state.bits == 0,
        _ => return false,
    }
}