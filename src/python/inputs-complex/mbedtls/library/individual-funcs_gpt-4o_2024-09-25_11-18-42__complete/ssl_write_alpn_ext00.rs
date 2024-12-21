use std::ffi::CStr;
use std::ptr;
use std::slice;

#[repr(C)]
pub struct MbedtlsSslContext {
    conf: *const MbedtlsSslConfig,
    // other fields...
}

#[repr(C)]
pub struct MbedtlsSslConfig {
    alpn_list: *const *const i8,
    // other fields...
}

extern "C" {
    fn mbedtls_debug_print_msg(
        ssl: *const MbedtlsSslContext,
        level: i32,
        file: *const i8,
        line: i32,
        format: *const i8,
        ...
    );

    fn mbedtls_ssl_chk_buf_ptr(
        p: *const u8,
        end: *const u8,
        needed: usize,
    ) -> i32;
}

fn ssl_write_alpn_ext00(
    ssl: &MbedtlsSslContext,
    buf: &mut [u8],
    end: *const u8,
    olen: &mut usize,
) -> i32 {
    let mut p = buf.as_mut_ptr();
    let mut alpnlen = 0;
    let mut cur = unsafe { (*ssl.conf).alpn_list };

    *olen = 0;

    if cur.is_null() {
        return 0;
    }

    unsafe {
        mbedtls_debug_print_msg(
            ssl,
            3,
            CStr::from_bytes_with_nul_unchecked(b"ssl_cli.c\0").as_ptr(),
            713,
            CStr::from_bytes_with_nul_unchecked(b"client hello, adding alpn extension\0").as_ptr(),
        );
    }

    unsafe {
        while !(*cur).is_null() {
            alpnlen += CStr::from_ptr(*cur).to_bytes().len() + 1;
            cur = cur.add(1);
        }
    }

    if unsafe { mbedtls_ssl_chk_buf_ptr(p, end, 6 + alpnlen) } != 0 {
        return -0x6A00;
    }

    unsafe {
        *p = (16 >> 8) as u8;
        p = p.add(1);
        *p = 16 as u8;
        p = p.add(1);
        p = p.add(4);

        cur = (*ssl.conf).alpn_list;
        while !(*cur).is_null() {
            let len = CStr::from_ptr(*cur).to_bytes().len();
            *p = len as u8;
            p = p.add(1);
            ptr::copy_nonoverlapping(*cur as *const u8, p, len);
            p = p.add(len);
            cur = cur.add(1);
        }

        *olen = p.offset_from(buf.as_mut_ptr()) as usize;

        buf[4] = ((*olen - 6) >> 8) as u8;
        buf[5] = ((*olen - 6) & 0xFF) as u8;
        buf[2] = ((*olen - 4) >> 8) as u8;
        buf[3] = ((*olen - 4) & 0xFF) as u8;
    }

    0
}
