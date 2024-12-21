use std::ptr::copy_nonoverlapping;

type MbedtlsSslCookieWriteT = fn(*mut std::ffi::c_void, *mut *mut u8, *mut u8, *const u8, usize) -> i32;
type MbedtlsSslCookieCheckT = fn(*mut std::ffi::c_void, *const u8, usize, *const u8, usize) -> i32;

fn ssl_check_dtls_clihlo_cookie(
    f_cookie_write: MbedtlsSslCookieWriteT,
    f_cookie_check: MbedtlsSslCookieCheckT,
    p_cookie: *mut std::ffi::c_void,
    cli_id: &[u8],
    in_buf: &[u8],
    obuf: &mut [u8],
) -> Result<isize, i32> {
    if in_buf.len() < 61 || in_buf[0] != 22 || in_buf[3] != 0 || in_buf[4] != 0 || in_buf[19] != 0 || in_buf[20] != 0 || in_buf[21] != 0 {
        return Err(-0x7900);
    }

    let sid_len = in_buf[59] as usize;
    if sid_len > in_buf.len() - 61 {
        return Err(-0x7900);
    }

    let cookie_len = in_buf[60 + sid_len] as usize;
    if cookie_len > in_buf.len() - 60 {
        return Err(-0x7900);
    }

    if f_cookie_check(p_cookie, &in_buf[sid_len + 61], cookie_len, cli_id.as_ptr(), cli_id.len()) == 0 {
        return Ok(0);
    }

    if obuf.len() < 28 {
        return Err(-0x6A00);
    }

    unsafe {
        copy_nonoverlapping(in_buf.as_ptr(), obuf.as_mut_ptr(), 25);
    }

    obuf[13] = 3;
    obuf[25] = 0xfe;
    obuf[26] = 0xff;

    let mut p = &mut obuf[28] as *mut u8;
    if f_cookie_write(p_cookie, &mut p, obuf.as_mut_ptr().add(obuf.len()), cli_id.as_ptr(), cli_id.len()) != 0 {
        return Err(-0x6C00);
    }

    let olen = p as usize - obuf.as_ptr() as usize;
    obuf[27] = (olen - 28) as u8;
    obuf[14] = ((olen - 25) >> 16) as u8;
    obuf[22] = ((olen - 25) >> 16) as u8;
    obuf[15] = ((olen - 25) >> 8) as u8;
    obuf[23] = ((olen - 25) >> 8) as u8;
    obuf[16] = (olen - 25) as u8;
    obuf[24] = (olen - 25) as u8;
    obuf[11] = ((olen - 13) >> 8) as u8;
    obuf[12] = (olen - 13) as u8;

    Err(-0x6A80)
}
