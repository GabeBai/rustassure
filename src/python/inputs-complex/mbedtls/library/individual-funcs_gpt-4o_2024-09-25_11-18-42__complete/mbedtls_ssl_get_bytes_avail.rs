#[repr(C)]
pub struct MbedtlsSslContext {
    // Define the fields of the struct as per the C definition
    pub conf: *const MbedtlsSslConfig,
    pub state: i32,
    pub renego_status: i32,
    pub renego_records_seen: i32,
    pub major_ver: i32,
    pub minor_ver: i32,
    pub badmac_seen: u32,
    pub f_vrfy: Option<extern "C" fn(*mut std::ffi::c_void, *mut MbedtlsX509Crt, i32, *mut u32) -> i32>,
    pub p_vrfy: *mut std::ffi::c_void,
    pub f_send: Option<extern "C" fn(*mut std::ffi::c_void, *const u8, usize) -> i32>,
    pub f_recv: Option<extern "C" fn(*mut std::ffi::c_void, *mut u8, usize) -> i32>,
    pub f_recv_timeout: Option<extern "C" fn(*mut std::ffi::c_void, *mut u8, usize, u32) -> i32>,
    pub p_bio: *mut std::ffi::c_void,
    pub session_in: *mut MbedtlsSslSession,
    pub session_out: *mut MbedtlsSslSession,
    pub session: *mut MbedtlsSslSession,
    pub session_negotiate: *mut MbedtlsSslSession,
    pub handshake: *mut MbedtlsSslHandshakeParams,
    pub transform_in: *mut MbedtlsSslTransform,
    pub transform_out: *mut MbedtlsSslTransform,
    pub transform: *mut MbedtlsSslTransform,
    pub transform_negotiate: *mut MbedtlsSslTransform,
    pub p_timer: *mut std::ffi::c_void,
    pub f_set_timer: Option<extern "C" fn(*mut std::ffi::c_void, u32, u32)>,
    pub f_get_timer: Option<extern "C" fn(*mut std::ffi::c_void) -> i32>,
    pub in_buf: *mut u8,
    pub in_ctr: *mut u8,
    pub in_hdr: *mut u8,
    pub in_len: *mut u8,
    pub in_iv: *mut u8,
    pub in_msg: *mut u8,
    pub in_offt: *mut u8,
    pub in_msgtype: i32,
    pub in_msglen: usize,
    pub in_left: usize,
    pub in_epoch: u16,
    pub next_record_offset: usize,
    pub in_window_top: u64,
    pub in_window: u64,
    pub in_hslen: usize,
    pub nb_zero: i32,
    pub keep_current_message: i32,
    pub disable_datagram_packing: u8,
    pub out_buf: *mut u8,
    pub out_ctr: *mut u8,
    pub out_hdr: *mut u8,
    pub out_len: *mut u8,
    pub out_iv: *mut u8,
    pub out_msg: *mut u8,
    pub out_msgtype: i32,
    pub out_msglen: usize,
    pub out_left: usize,
    pub cur_out_ctr: [u8; 8],
    pub mtu: u16,
    pub split_done: i8,
    pub client_auth: i32,
    pub hostname: *mut i8,
    pub alpn_chosen: *const i8,
    pub cli_id: *mut u8,
    pub cli_id_len: usize,
    pub secure_renegotiation: i32,
    pub verify_data_len: usize,
    pub own_verify_data: [i8; 12],
    pub peer_verify_data: [i8; 12],
}

#[repr(C)]
pub struct MbedtlsSslConfig {
    // Define the fields of the struct as per the C definition
}

#[repr(C)]
pub struct MbedtlsSslSession {
    // Define the fields of the struct as per the C definition
}

#[repr(C)]
pub struct MbedtlsSslHandshakeParams {
    // Define the fields of the struct as per the C definition
}

#[repr(C)]
pub struct MbedtlsSslTransform {
    // Define the fields of the struct as per the C definition
}

#[repr(C)]
pub struct MbedtlsX509Crt {
    // Define the fields of the struct as per the C definition
}

pub fn mbedtls_ssl_get_bytes_avail(ssl: &MbedtlsSslContext) -> usize {
    if ssl.in_offt.is_null() {
        0
    } else {
        ssl.in_msglen
    }
}
