type MbedtlsMpiUint = u64;

#[repr(C)]
struct MbedtlsMpi {
    s: i32,
    n: usize,
    p: *mut MbedtlsMpiUint,
}

#[repr(C)]
struct MbedtlsEcpPoint {
    X: MbedtlsMpi,
    Y: MbedtlsMpi,
    Z: MbedtlsMpi,
}

type MbedtlsTimeT = i64;
type MbedtlsSslContext = *const MbedtlsSslContextStruct;

#[repr(C)]
struct MbedtlsSslSession {
    start: MbedtlsTimeT,
    ciphersuite: i32,
    compression: i32,
    id_len: usize,
    id: [u8; 32],
    master: [u8; 48],
    peer_cert: *mut MbedtlsX509Crt,
    verify_result: u32,
    ticket: *mut u8,
    ticket_len: usize,
    ticket_lifetime: u32,
    mfl_code: u8,
    trunc_hmac: i32,
    encrypt_then_mac: i32,
}

#[repr(C)]
struct MbedtlsSslContextStruct {
    session: *mut MbedtlsSslSession,
    session_negotiate: *mut MbedtlsSslSession,
    // other fields...
}

fn mbedtls_ssl_get_verify_result(ssl: MbedtlsSslContext) -> u32 {
    unsafe {
        if !(*ssl).session.is_null() {
            return (*(*ssl).session).verify_result;
        }
        if !(*ssl).session_negotiate.is_null() {
            return (*(*ssl).session_negotiate).verify_result;
        }
    }
    0xFFFFFFFF
}
