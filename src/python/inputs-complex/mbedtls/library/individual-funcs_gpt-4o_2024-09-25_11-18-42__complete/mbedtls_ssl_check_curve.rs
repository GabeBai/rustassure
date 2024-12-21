#[derive(PartialEq, Eq)]
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

struct MbedtlsSslConfig<'a> {
    curve_list: Option<&'a [MbedtlsEcpGroupId]>,
}

struct MbedtlsSslContext<'a> {
    conf: &'a MbedtlsSslConfig<'a>,
}

fn mbedtls_ssl_check_curve(ssl: &MbedtlsSslContext, grp_id: MbedtlsEcpGroupId) -> i32 {
    if let Some(curve_list) = ssl.conf.curve_list {
        for &gid in curve_list {
            if gid == grp_id {
                return 0;
            }
        }
    }
    -1
}

fn main() {
    let curve_list = [
        MbedtlsEcpGroupId::MBEDTLS_ECP_DP_SECP192R1,
        MbedtlsEcpGroupId::MBEDTLS_ECP_DP_SECP224R1,
        MbedtlsEcpGroupId::MBEDTLS_ECP_DP_NONE,
    ];

    let config = MbedtlsSslConfig {
        curve_list: Some(&curve_list),
    };

    let context = MbedtlsSslContext { conf: &config };

    let result = mbedtls_ssl_check_curve(&context, MbedtlsEcpGroupId::MBEDTLS_ECP_DP_SECP192R1);
    println!("Result: {}", result);
}
