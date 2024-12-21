fn ssl_cookie_write_dummy(
    ctx: *mut std::ffi::c_void,
    p: *mut *mut u8,
    end: *mut u8,
    cli_id: *const u8,
    cli_id_len: usize,
) -> i32 {
    let _ = ctx;
    let _ = p;
    let _ = end;
    let _ = cli_id;
    let _ = cli_id_len;
    -0x7080
}
