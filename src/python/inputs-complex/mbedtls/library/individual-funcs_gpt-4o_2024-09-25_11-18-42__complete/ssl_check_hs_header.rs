use std::os::raw::c_uint;

struct MbedtlsSslContext {
    in_msglen: usize,
    // Add other fields as necessary
}

extern "C" {
    fn ssl_get_hs_total_len(ssl: *const MbedtlsSslContext) -> c_uint;
    fn ssl_get_hs_frag_off(ssl: *const MbedtlsSslContext) -> c_uint;
    fn ssl_get_hs_frag_len(ssl: *const MbedtlsSslContext) -> c_uint;
}

fn ssl_check_hs_header(ssl: &MbedtlsSslContext) -> i32 {
    unsafe {
        let msg_len = ssl_get_hs_total_len(ssl);
        let frag_off = ssl_get_hs_frag_off(ssl);
        let frag_len = ssl_get_hs_frag_len(ssl);

        if frag_off > msg_len {
            return -1;
        }
        if frag_len > msg_len - frag_off {
            return -1;
        }
        if frag_len + 12 > ssl.in_msglen as c_uint {
            return -1;
        }
    }
    0
}
