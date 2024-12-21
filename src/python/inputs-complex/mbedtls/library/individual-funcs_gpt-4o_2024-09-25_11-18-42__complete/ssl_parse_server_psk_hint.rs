use std::ffi::CString;
use std::ptr;

extern "C" {
    fn mbedtls_debug_print_msg(ssl: *const mbedtls_ssl_context, level: i32, file: *const i8, line: i32, format: *const i8, ...);
}

#[repr(C)]
struct mbedtls_ssl_context;

fn ssl_parse_server_psk_hint(ssl: *mut mbedtls_ssl_context, p: &mut *mut u8, end: *mut u8) -> i32 {
    let mut ret = -0x7080;
    let len: u16;

    if unsafe { end.offset_from(*p) } < 2 {
        let file = CString::new("ssl_cli.c").unwrap();
        let msg = CString::new("bad server key exchange message (psk_identity_hint length)").unwrap();
        unsafe {
            mbedtls_debug_print_msg(ssl, 1, file.as_ptr(), 2552, msg.as_ptr());
        }
        return -0x7B00;
    }

    len = unsafe { ((*p).offset(0) as u16) << 8 | ((*p).offset(1) as u16) };
    *p = unsafe { p.add(2) };

    if unsafe { end.offset_from(*p) } < len as isize {
        let file = CString::new("ssl_cli.c").unwrap();
        let msg = CString::new("bad server key exchange message (psk_identity_hint length)").unwrap();
        unsafe {
            mbedtls_debug_print_msg(ssl, 1, file.as_ptr(), 2561, msg.as_ptr());
        }
        return -0x7B00;
    }

    *p = unsafe { p.add(len as usize) };
    ret = 0;
    ret
}

fn main() {
    // Example usage
    let ssl: *mut mbedtls_ssl_context = ptr::null_mut();
    let mut p: *mut u8 = ptr::null_mut();
    let end: *mut u8 = ptr::null_mut();

    let result = ssl_parse_server_psk_hint(ssl, &mut p, end);
    println!("Result: {}", result);
}
