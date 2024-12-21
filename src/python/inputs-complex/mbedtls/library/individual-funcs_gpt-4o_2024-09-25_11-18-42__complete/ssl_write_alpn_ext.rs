use std::ffi::CStr;
use std::os::raw::c_char;
use std::ptr;

#[repr(C)]
pub struct MbedtlsSslContext {
    alpn_chosen: *const c_char,
    // Add other fields as necessary
}

extern "C" {
    fn mbedtls_debug_print_msg(
        ssl: *const MbedtlsSslContext,
        level: i32,
        file: *const c_char,
        line: i32,
        format: *const c_char,
        ...
    );
}

fn ssl_write_alpn_ext(ssl: &MbedtlsSslContext, buf: &mut [u8], olen: &mut usize) {
    unsafe {
        if ssl.alpn_chosen.is_null() {
            *olen = 0;
            return;
        }

        let file = CStr::from_bytes_with_nul(b"ssl_srv.c\0").unwrap();
        let format = CStr::from_bytes_with_nul(b"server hello, adding alpn extension\0").unwrap();
        mbedtls_debug_print_msg(ssl, 3, file.as_ptr(), 2477, format.as_ptr());

        buf[0] = (16 >> 8) as u8;
        buf[1] = 16 as u8;

        let alpn_chosen_len = CStr::from_ptr(ssl.alpn_chosen).to_bytes().len();
        *olen = 7 + alpn_chosen_len;

        buf[2] = ((*olen - 4) >> 8) as u8;
        buf[3] = (*olen - 4) as u8;
        buf[4] = ((*olen - 6) >> 8) as u8;
        buf[5] = (*olen - 6) as u8;
        buf[6] = (*olen - 7) as u8;

        ptr::copy_nonoverlapping(ssl.alpn_chosen as *const u8, buf[7..].as_mut_ptr(), alpn_chosen_len);
    }
}

fn main() {
    // Example usage
    let alpn_chosen = std::ffi::CString::new("http/1.1").unwrap();
    let ssl_context = MbedtlsSslContext {
        alpn_chosen: alpn_chosen.as_ptr(),
    };

    let mut buf = [0u8; 256];
    let mut olen = 0usize;

    ssl_write_alpn_ext(&ssl_context, &mut buf, &mut olen);

    println!("Buffer: {:?}", &buf[..olen]);
    println!("Output length: {}", olen);
}
