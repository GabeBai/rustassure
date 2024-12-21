use std::ffi::CStr;
use std::os::raw::c_char;

pub struct MbedtlsSslConfig {
    alpn_list: *const *const c_char,
}

pub fn mbedtls_ssl_conf_alpn_protocols(conf: &mut MbedtlsSslConfig, protos: *const *const c_char) -> i32 {
    let mut tot_len: usize = 0;
    let mut p = protos;

    unsafe {
        while !(*p).is_null() {
            let cur_len = CStr::from_ptr(*p).to_bytes().len();
            tot_len += cur_len;
            if cur_len == 0 || cur_len > 255 || tot_len > 65535 {
                return -0x7100;
            }
            p = p.add(1);
        }
    }

    conf.alpn_list = protos;
    0
}
