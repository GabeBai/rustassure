#[repr(C)]
pub struct MbedtlsSslConfig {
    ciphersuite_list: [*const i32; 4],
    f_dbg: Option<extern "C" fn(*mut std::ffi::c_void, i32, *const std::ffi::c_char, i32, *const std::ffi::c_char)>,
    p_dbg: *mut std::ffi::c_void,
    f_rng: Option<extern "C" fn(*mut std::ffi::c_void, *mut u8, usize) -> i32>,
    p_rng: *mut std::ffi::c_void,
    f_get_cache: Option<extern "C" fn(*mut std::ffi::c_void, *mut MbedtlsSslSession) -> i32>,
    f_set_cache: Option<extern "C" fn(*mut std::ffi::c_void, *const MbedtlsSslSession) -> i32>,
    p_cache: *mut std::ffi::c_void,
    f_sni: Option<extern "C" fn(*mut std::ffi::c_void, *mut MbedtlsSslContext, *const u8, usize) -> i32>,
    p_sni: *mut std::ffi::c_void,
    f_vrfy: Option<extern "C" fn(*mut std::ffi::c_void, *mut MbedtlsX509Crt, i32, *mut u32) -> i32>,
    p_vrfy: *mut std::ffi::c_void,
    f_psk: Option<extern "C" fn(*mut std::ffi::c_void, *mut MbedtlsSslContext, *const u8, usize) -> i32>,
    p_psk: *mut std::ffi::c_void,
    f_cookie_write: Option<extern "C" fn(*mut std::ffi::c_void, *mut *mut u8, *mut u8, *const u8, usize) -> i32>,
    f_cookie_check: Option<extern "C" fn(*mut std::ffi::c_void, *const u8, usize, *const u8, usize) -> i32>,
    p_cookie: *mut std::ffi::c_void,
    f_ticket_write: Option<extern "C" fn(*mut std::ffi::c_void, *const MbedtlsSslSession, *mut u8, *const u8, *mut usize, *mut u32) -> i32>,
    f_ticket_parse: Option<extern "C" fn(*mut std::ffi::c_void, *mut MbedtlsSslSession, *mut u8, usize) -> i32>,
    p_ticket: *mut std::ffi::c_void,
    f_export_keys: Option<extern "C" fn(*mut std::ffi::c_void, *const u8, *const u8, usize, usize, usize) -> i32>,
    f_export_keys_ext: Option<extern "C" fn(*mut std::ffi::c_void, *const u8, *const u8, usize, usize, usize, *const u8, *const u8, MbedtlsTlsPrfTypes) -> i32>,
    p_export_keys: *mut std::ffi::c_void,
    cert_profile: *const MbedtlsX509CrtProfile,
    key_cert: *mut MbedtlsSslKeyCert,
    ca_chain: *mut MbedtlsX509Crt,
    ca_crl: *mut MbedtlsX509Crl,
    sig_hashes: *const i32,
    curve_list: *const MbedtlsEcpGroupId,
    dhm_P: MbedtlsMpi,
    dhm_G: MbedtlsMpi,
    psk: *mut u8,
    psk_len: usize,
    psk_identity: *mut u8,
    psk_identity_len: usize,
    alpn_list: *const *const std::ffi::c_char,
    read_timeout: u32,
    hs_timeout_min: u32,
    hs_timeout_max: u32,
    renego_max_records: i32,
    renego_period: [u8; 8],
    badmac_limit: u32,
    dhm_min_bitlen: u32,
    max_major_ver: u8,
    max_minor_ver: u8,
    min_major_ver: u8,
    min_minor_ver: u8,
    endpoint: u32,
    transport: u32,
    authmode: u32,
    allow_legacy_renegotiation: u32,
    arc4_disabled: u32,
    mfl_code: u32,
    encrypt_then_mac: u32,
    extended_ms: u32,
    anti_replay: u32,
    cbc_record_splitting: u32,
    disable_renegotiation: u32,
    trunc_hmac: u32,
    session_tickets: u32,
    fallback: u32,
    cert_req_ca_list: u32,
}

#[repr(C)]
pub struct MbedtlsSslSession;
#[repr(C)]
pub struct MbedtlsSslContext;
#[repr(C)]
pub struct MbedtlsX509Crt;
#[repr(C)]
pub struct MbedtlsX509Crl;
#[repr(C)]
pub struct MbedtlsX509CrtProfile;
#[repr(C)]
pub struct MbedtlsSslKeyCert;
#[repr(C)]
pub struct MbedtlsMpi;
#[repr(C)]
pub struct MbedtlsEcpGroupId;
#[repr(C)]
pub struct MbedtlsTlsPrfTypes;

fn ssl_conf_has_psk_or_cb(conf: &MbedtlsSslConfig) -> i32 {
    if conf.f_psk.is_some() {
        return 1;
    }
    if conf.psk_identity_len == 0 || conf.psk_identity.is_null() {
        return 0;
    }
    if !conf.psk.is_null() && conf.psk_len != 0 {
        return 1;
    }
    0
}
