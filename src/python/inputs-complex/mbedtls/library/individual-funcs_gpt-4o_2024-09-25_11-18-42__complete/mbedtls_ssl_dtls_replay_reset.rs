pub struct MbedtlsSslContext {
    pub in_window_top: u64,
    pub in_window: u64,
    // other fields omitted for brevity
}

pub fn mbedtls_ssl_dtls_replay_reset(ssl: &mut MbedtlsSslContext) {
    ssl.in_window_top = 0;
    ssl.in_window = 0;
}
