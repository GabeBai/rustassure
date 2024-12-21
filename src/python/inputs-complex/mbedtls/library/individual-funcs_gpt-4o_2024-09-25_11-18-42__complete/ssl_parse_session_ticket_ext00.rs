use std::ffi::CStr;
use std::os::raw::c_char;
use std::ptr;

#[repr(C)]
pub struct MbedtlsSslContext {
    conf: *const MbedtlsSslConfig,
    state: i32,
    renego_status: i32,
    renego_records_seen: i32,
    major_ver: i32,
    minor_ver: i32,
    badmac_seen: u32,
    f_vrfy: Option<extern "C" fn(*mut std::ffi::c_void, *mut MbedtlsX509Crt, i32, *mut u32) -> i32>,
    p_vrfy: *mut std::ffi::c_void,
    f_send: Option<extern "C" fn(*mut std::ffi::c_void, *const u8, usize) -> i32>,
    f_recv: Option<extern "C" fn(*mut std::ffi::c_void, *mut u8, usize) -> i32>,
    f_recv_timeout: Option<extern "C" fn(*mut std::ffi::c_void, *mut u8, usize, u32) -> i32>,
    p_bio: *mut std::ffi::c_void,
    session_in: *mut MbedtlsSslSession,
    session_out: *mut MbedtlsSslSession,
    session: *mut MbedtlsSslSession,
    session_negotiate: *mut MbedtlsSslSession,
    handshake: *mut MbedtlsSslHandshakeParams,
    transform_in: *mut MbedtlsSslTransform,
    transform_out: *mut MbedtlsSslTransform,
    transform: *mut MbedtlsSslTransform,
    transform_negotiate: *mut MbedtlsSslTransform,
    p_timer: *mut std::ffi::c_void,
    f_set_timer: Option<extern "C" fn(*mut std::ffi::c_void, u32, u32)>,
    f_get_timer: Option<extern "C" fn(*mut std::ffi::c_void) -> i32>,
    in_buf: *mut u8,
    in_ctr: *mut u8,
    in_hdr: *mut u8,
    in_len: *mut u8,
    in_iv: *mut u8,
    in_msg: *mut u8,
    in_offt: *mut u8,
    in_msgtype: i32,
    in_msglen: usize,
    in_left: usize,
    in_epoch: u16,
    next_record_offset: usize,
    in_window_top: u64,
    in_window: u64,
    in_hslen: usize,
    nb_zero: i32,
    keep_current_message: i32,
    disable_datagram_packing: u8,
    out_buf: *mut u8,
    out_ctr: *mut u8,
    out_hdr: *mut u8,
    out_len: *mut u8,
    out_iv: *mut u8,
    out_msg: *mut u8,
    out_msgtype: i32,
    out_msglen: usize,
    out_left: usize,
    cur_out_ctr: [u8; 8],
    mtu: u16,
    split_done: i8,
    client_auth: i32,
    hostname: *mut c_char,
    alpn_chosen: *const c_char,
    cli_id: *mut u8,
    cli_id_len: usize,
    secure_renegotiation: i32,
    verify_data_len: usize,
    own_verify_data: [c_char; 12],
    peer_verify_data: [c_char; 12],
}

#[repr(C)]
pub struct MbedtlsSslConfig {
    session_tickets: i32,
    // other fields...
}

#[repr(C)]
pub struct MbedtlsSslHandshakeParams {
    new_session_ticket: i32,
    // other fields...
}

#[repr(C)]
pub struct MbedtlsSslSession {
    // fields...
}

#[repr(C)]
pub struct MbedtlsSslTransform {
    // fields...
}

#[repr(C)]
pub struct MbedtlsX509Crt {
    // fields...
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

    fn mbedtls_ssl_send_alert_message(
        ssl: *mut MbedtlsSslContext,
        level: u8,
        message: u8,
    ) -> i32;
}

pub fn ssl_parse_session_ticket_ext00(
    ssl: &mut MbedtlsSslContext,
    buf: *const u8,
    len: usize,
) -> i32 {
    unsafe {
        if (*ssl.conf).session_tickets == 0 || len != 0 {
            let file = CStr::from_bytes_with_nul_unchecked(b"ssl_cli.c\0").as_ptr();
            let format = CStr::from_bytes_with_nul_unchecked(b"non-matching session ticket extension\0").as_ptr();
            mbedtls_debug_print_msg(ssl, 1, file, 1547, format);
            mbedtls_ssl_send_alert_message(ssl, 2, 40);
            return -0x7980;
        }
        (*ssl.handshake).new_session_ticket = 1;
    }
    0
}
