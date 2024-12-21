#[repr(C)]
pub struct MbedtlsSslConfig {
    // Define the fields of the struct as per the C definition
    psk_identity: *const u8,
    psk_identity_len: usize,
    psk: *const u8,
    psk_len: usize,
    // Add other fields as necessary
}

pub fn ssl_conf_has_static_psk(conf: &MbedtlsSslConfig) -> i32 {
    if conf.psk_identity.is_null() || conf.psk_identity_len == 0 {
        return 0;
    }
    if !conf.psk.is_null() && conf.psk_len != 0 {
        return 1;
    }
    0
}

fn main() {
    // Example usage
    let config = MbedtlsSslConfig {
        psk_identity: std::ptr::null(),
        psk_identity_len: 0,
        psk: std::ptr::null(),
        psk_len: 0,
    };

    let result = ssl_conf_has_static_psk(&config);
    println!("Result: {}", result);
}
