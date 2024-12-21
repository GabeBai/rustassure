use std::alloc::{alloc_zeroed, Layout};
use std::ptr;

#[repr(C)]
struct MbedtlsEcpCurveInfo {
    grp_id: u32,
    tls_id: u16,
    bit_size: u16,
    name: *const u8,
}

#[repr(C)]
struct MbedtlsSslContext {
    handshake: *mut MbedtlsSslHandshakeParams,
}

#[repr(C)]
struct MbedtlsSslHandshakeParams {
    curves: *mut *const MbedtlsEcpCurveInfo,
}

extern "C" {
    fn mbedtls_ecp_curve_info_from_tls_id(tls_id: u16) -> *const MbedtlsEcpCurveInfo;
    fn mbedtls_ssl_send_alert_message(ssl: *mut MbedtlsSslContext, level: u8, message: u8) -> i32;
    fn mbedtls_debug_print_msg(ssl: *const MbedtlsSslContext, level: i32, file: *const u8, line: i32, format: *const u8, ...);
}

const MBEDTLS_ERR_SSL_BAD_HS_CLIENT_HELLO: i32 = -0x7900;
const MBEDTLS_ERR_SSL_ALLOC_FAILED: i32 = -0x7F00;

unsafe fn ssl_parse_supported_elliptic_curves(ssl: *mut MbedtlsSslContext, buf: *const u8, len: usize) -> i32 {
    let mut list_size: usize;
    let mut our_size: usize;
    let mut p: *const u8;
    let mut curve_info: *const MbedtlsEcpCurveInfo;
    let mut curves: *mut *const MbedtlsEcpCurveInfo;

    if len < 2 {
        mbedtls_debug_print_msg(ssl, 1, b"ssl_srv.c\0".as_ptr(), 327, b"bad client hello message\0".as_ptr());
        mbedtls_ssl_send_alert_message(ssl, 2, 50);
        return MBEDTLS_ERR_SSL_BAD_HS_CLIENT_HELLO;
    }

    list_size = ((*buf.offset(0) as usize) << 8) | (*buf.offset(1) as usize);
    if list_size + 2 != len || list_size % 2 != 0 {
        mbedtls_debug_print_msg(ssl, 1, b"ssl_srv.c\0".as_ptr(), 336, b"bad client hello message\0".as_ptr());
        mbedtls_ssl_send_alert_message(ssl, 2, 50);
        return MBEDTLS_ERR_SSL_BAD_HS_CLIENT_HELLO;
    }

    if !(*(*ssl).handshake).curves.is_null() {
        mbedtls_debug_print_msg(ssl, 1, b"ssl_srv.c\0".as_ptr(), 345, b"bad client hello message\0".as_ptr());
        mbedtls_ssl_send_alert_message(ssl, 2, 50);
        return MBEDTLS_ERR_SSL_BAD_HS_CLIENT_HELLO;
    }

    our_size = list_size / 2 + 1;
    if our_size > 12 {
        our_size = 12;
    }

    let layout = Layout::array::<*const MbedtlsEcpCurveInfo>(our_size).unwrap();
    curves = alloc_zeroed(layout) as *mut *const MbedtlsEcpCurveInfo;
    if curves.is_null() {
        mbedtls_ssl_send_alert_message(ssl, 2, 80);
        return MBEDTLS_ERR_SSL_ALLOC_FAILED;
    }

    (*(*ssl).handshake).curves = curves;
    p = buf.add(2);

    while list_size > 0 && our_size > 1 {
        curve_info = mbedtls_ecp_curve_info_from_tls_id(((*p.offset(0) as u16) << 8) | (*p.offset(1) as u16));
        if !curve_info.is_null() {
            *curves = curve_info;
            curves = curves.add(1);
            our_size -= 1;
        }
        list_size -= 2;
        p = p.add(2);
    }

    0
}
