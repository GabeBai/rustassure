use std::ptr;

#[repr(C)]
#[derive(Debug, Copy, Clone)]
pub struct MbedtlsSslConfig {
    // Other fields omitted for brevity
    curve_list: *const MbedtlsEcpGroupId,
}

#[repr(C)]
#[derive(Debug, Copy, Clone)]
pub enum MbedtlsEcpGroupId {
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

impl MbedtlsSslConfig {
    pub fn mbedtls_ssl_conf_curves(&mut self, curve_list: *const MbedtlsEcpGroupId) {
        self.curve_list = curve_list;
    }
}

fn main() {
    let curve_list: [MbedtlsEcpGroupId; 2] = [
        MbedtlsEcpGroupId::MBEDTLS_ECP_DP_SECP256R1,
        MbedtlsEcpGroupId::MBEDTLS_ECP_DP_SECP384R1,
    ];

    let mut config = MbedtlsSslConfig {
        curve_list: ptr::null(),
    };

    config.mbedtls_ssl_conf_curves(curve_list.as_ptr());

    // Print the config to verify the curve_list is set correctly
    println!("{:?}", config);
}
