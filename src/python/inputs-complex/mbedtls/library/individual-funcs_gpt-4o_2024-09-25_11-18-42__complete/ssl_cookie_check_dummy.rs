fn ssl_cookie_check_dummy(
    ctx: *mut std::ffi::c_void,
    cookie: *const u8,
    cookie_len: usize,
    cli_id: *const u8,
    cli_id_len: usize,
) -> i32 {
    let _ = ctx;
    let _ = cookie;
    let _ = cookie_len;
    let _ = cli_id;
    let _ = cli_id_len;
    -0x7080
}
