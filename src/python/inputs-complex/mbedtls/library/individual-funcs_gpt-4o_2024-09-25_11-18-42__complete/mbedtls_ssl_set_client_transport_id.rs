use std::ptr;
use std::slice;
use std::alloc::{alloc_zeroed, dealloc, Layout};
use std::ffi::c_void;

#[repr(C)]
pub struct MbedtlsSslContext {
    conf: *const MbedtlsSslConfig,
    cli_id: *mut u8,
    cli_id_len: usize,
}

#[repr(C)]
pub struct MbedtlsSslConfig {
    endpoint: i32,
}

const MBEDTLS_ERR_SSL_BAD_INPUT_DATA: i32 = -0x7100;
const MBEDTLS_ERR_SSL_ALLOC_FAILED: i32 = -0x7F00;

pub fn mbedtls_ssl_set_client_transport_id(
    ssl: &mut MbedtlsSslContext,
    info: &[u8],
) -> i32 {
    unsafe {
        if (*ssl.conf).endpoint != 1 {
            return MBEDTLS_ERR_SSL_BAD_INPUT_DATA;
        }

        if !ssl.cli_id.is_null() {
            let layout = Layout::array::<u8>(ssl.cli_id_len).unwrap();
            dealloc(ssl.cli_id as *mut u8, layout);
        }

        let layout = Layout::array::<u8>(info.len()).unwrap();
        ssl.cli_id = alloc_zeroed(layout) as *mut u8;
        if ssl.cli_id.is_null() {
            return MBEDTLS_ERR_SSL_ALLOC_FAILED;
        }

        ptr::copy_nonoverlapping(info.as_ptr(), ssl.cli_id, info.len());
        ssl.cli_id_len = info.len();
    }

    0
}
