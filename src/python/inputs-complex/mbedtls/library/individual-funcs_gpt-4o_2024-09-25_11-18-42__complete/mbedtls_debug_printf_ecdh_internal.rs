use std::ffi::CString;
use std::os::raw::c_char;

#[repr(C)]
struct MbedtlsMpi {
    s: i32,
    n: usize,
    p: *mut u64,
}

#[repr(C)]
struct MbedtlsEcpPoint {
    X: MbedtlsMpi,
    Y: MbedtlsMpi,
    Z: MbedtlsMpi,
}

#[repr(C)]
struct MbedtlsEcdhContext {
    grp: MbedtlsEcpGroup,
    d: MbedtlsMpi,
    Q: MbedtlsEcpPoint,
    Qp: MbedtlsEcpPoint,
    z: MbedtlsMpi,
    point_format: i32,
    Vi: MbedtlsEcpPoint,
    Vf: MbedtlsEcpPoint,
    _d: MbedtlsMpi,
}

#[repr(C)]
struct MbedtlsEcpGroup {
    id: MbedtlsEcpGroupId,
    P: MbedtlsMpi,
    A: MbedtlsMpi,
    B: MbedtlsEcpPoint,
    G: MbedtlsMpi,
    N: MbedtlsMpi,
    pbits: usize,
    nbits: usize,
    h: u32,
    modp: Option<extern "C" fn(*mut MbedtlsMpi) -> i32>,
    t_pre: Option<extern "C" fn(*mut MbedtlsEcpPoint, *mut std::ffi::c_void) -> i32>,
    t_post: Option<extern "C" fn(*mut MbedtlsEcpPoint, *mut std::ffi::c_void) -> i32>,
    t_data: *mut std::ffi::c_void,
    T: *mut MbedtlsEcpPoint,
    T_size: usize,
}

#[repr(C)]
enum MbedtlsEcpGroupId {
    MBEDTLS_ECP_DP_NONE = 0,
    MBEDTLS_ECP_DP_SECP192R1,
    MBEDTLS_ECP_DP_SECP224R1,
    MBEDTLS_ECP_DP_SECP256R1,
    MBEDTLS_ECP_DP_SECP384R1,
    MBEDTLS_ECP_DP_SECP521R1,
    MBEDTLS_ECP_DP_BP256R1,
    MBEDTLS_ECP_DP_BP384R1,
    MBEDTLS_ECP_DP_BP512R1,
    MBEDTLS_ECP_DP_CURVE25519,
    MBEDTLS_ECP_DP_SECP192K1,
    MBEDTLS_ECP_DP_SECP224K1,
    MBEDTLS_ECP_DP_SECP256K1,
    MBEDTLS_ECP_DP_CURVE448,
}

#[repr(C)]
enum MbedtlsDebugEcdhAttr {
    MBEDTLS_DEBUG_ECDH_Q,
    MBEDTLS_DEBUG_ECDH_QP,
    MBEDTLS_DEBUG_ECDH_Z,
}

extern "C" {
    fn mbedtls_debug_print_mpi(ssl: *const MbedtlsSslContext, level: i32, file: *const c_char, line: i32, text: *const c_char, X: *const MbedtlsMpi);
    fn mbedtls_debug_print_ecp(ssl: *const MbedtlsSslContext, level: i32, file: *const c_char, line: i32, text: *const c_char, X: *const MbedtlsEcpPoint);
}

#[repr(C)]
struct MbedtlsSslContext;

fn mbedtls_debug_printf_ecdh_internal(ssl: *const MbedtlsSslContext, level: i32, file: &str, line: i32, ecdh: &MbedtlsEcdhContext, attr: MbedtlsDebugEcdhAttr) {
    let file_cstr = CString::new(file).unwrap();
    match attr {
        MbedtlsDebugEcdhAttr::MBEDTLS_DEBUG_ECDH_Q => {
            let text_cstr = CString::new("ECDH: Q").unwrap();
            unsafe {
                mbedtls_debug_print_ecp(ssl, level, file_cstr.as_ptr(), line, text_cstr.as_ptr(), &ecdh.Q);
            }
        }
        MbedtlsDebugEcdhAttr::MBEDTLS_DEBUG_ECDH_QP => {
            let text_cstr = CString::new("ECDH: Qp").unwrap();
            unsafe {
                mbedtls_debug_print_ecp(ssl, level, file_cstr.as_ptr(), line, text_cstr.as_ptr(), &ecdh.Qp);
            }
        }
        MbedtlsDebugEcdhAttr::MBEDTLS_DEBUG_ECDH_Z => {
            let text_cstr = CString::new("ECDH: z").unwrap();
            unsafe {
                mbedtls_debug_print_mpi(ssl, level, file_cstr.as_ptr(), line, text_cstr.as_ptr(), &ecdh.z);
            }
        }
    }
}
