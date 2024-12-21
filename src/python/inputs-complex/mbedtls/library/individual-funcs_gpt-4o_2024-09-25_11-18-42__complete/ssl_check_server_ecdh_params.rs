use std::ffi::CString;
use std::ptr;
use mbedtls::ssl::{Context as SslContext, Handshake};
use mbedtls::ecp::{GroupId, CurveInfo};
use mbedtls::debug::{debug_print_msg, debug_printf_ecdh, DebugEcdhAttr};

fn ssl_check_server_ecdh_params(ssl: &SslContext) -> i32 {
    let grp_id: GroupId;
    let curve_info: Option<&CurveInfo>;

    unsafe {
        grp_id = (*ssl.handshake).ecdh_ctx.grp.id;
        curve_info = CurveInfo::from_grp_id(grp_id);
    }

    if curve_info.is_none() {
        let file = CString::new("ssl_cli.c").unwrap();
        let msg = CString::new("should never happen").unwrap();
        debug_print_msg(ssl, 1, file.as_ptr(), 2407, msg.as_ptr());
        return -0x6C00;
    }

    let curve_info = curve_info.unwrap();
    let file = CString::new("ssl_cli.c").unwrap();
    let format = CString::new("ECDH curve: %s").unwrap();
    debug_print_msg(ssl, 2, file.as_ptr(), 2411, format.as_ptr(), curve_info.name.as_ptr());

    if ssl.check_curve(grp_id) != 0 {
        return -1;
    }

    let file = CString::new("ssl_cli.c").unwrap();
    debug_printf_ecdh(ssl, 3, file.as_ptr(), 2422, &(*ssl.handshake).ecdh_ctx, DebugEcdhAttr::Qp);
    0
}
