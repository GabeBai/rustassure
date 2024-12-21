pub struct MbedtlsSslContext {
    pub conf: *const MbedtlsSslConfig,
    pub in_hdr: *mut u8,
    pub in_ctr: *mut u8,
    pub in_len: *mut u8,
    pub in_iv: *mut u8,
    pub in_msg: *mut u8,
}

pub struct MbedtlsSslConfig {
    pub transport: u8,
}

pub fn mbedtls_ssl_update_in_pointers(ssl: &mut MbedtlsSslContext) {
    unsafe {
        if (*ssl.conf).transport == 1 {
            ssl.in_ctr = ssl.in_hdr.add(3);
            ssl.in_len = ssl.in_ctr.add(8);
            ssl.in_iv = ssl.in_len.add(2);
        } else {
            ssl.in_ctr = ssl.in_hdr.offset(-8);
            ssl.in_len = ssl.in_hdr.add(3);
            ssl.in_iv = ssl.in_hdr.add(5);
        }
        ssl.in_msg = ssl.in_iv;
    }
}
