use std::os::raw::{c_int, c_uchar, c_ulong};

#[repr(C)]
pub struct MbedtlsSslSession {
    // Define the fields of the struct here
    // This is a placeholder; you need to define the actual fields
}

extern "C" {
    fn ssl_session_save(
        session: *const MbedtlsSslSession,
        flag: c_int,
        buf: *mut c_uchar,
        buf_len: c_ulong,
        olen: *mut c_ulong,
    ) -> c_int;
}

pub fn mbedtls_ssl_session_save(
    session: &MbedtlsSslSession,
    buf: &mut [u8],
    olen: &mut usize,
) -> i32 {
    let buf_len = buf.len() as c_ulong;
    let ret = unsafe {
        ssl_session_save(
            session,
            0,
            buf.as_mut_ptr(),
            buf_len,
            olen as *mut usize as *mut c_ulong,
        )
    };
    ret
}
