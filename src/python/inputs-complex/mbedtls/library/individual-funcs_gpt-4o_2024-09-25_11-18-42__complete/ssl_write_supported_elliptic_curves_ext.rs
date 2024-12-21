use std::ptr;

#[derive(PartialEq)]
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

pub struct MbedtlsEcpCurveInfo {
    pub grp_id: MbedtlsEcpGroupId,
    pub tls_id: u16,
    pub bit_size: u16,
    pub name: *const u8,
}

pub struct MbedtlsSslConfig {
    pub curve_list: *const MbedtlsEcpGroupId,
}

pub struct MbedtlsSslContext {
    pub conf: *const MbedtlsSslConfig,
}

extern "C" {
    fn mbedtls_ecp_curve_info_from_grp_id(grp_id: MbedtlsEcpGroupId) -> *const MbedtlsEcpCurveInfo;
}

fn ssl_write_supported_elliptic_curves_ext(
    ssl: &MbedtlsSslContext,
    buf: &mut [u8],
    end: *const u8,
    olen: &mut usize,
) -> i32 {
    let mut p = buf.as_mut_ptr();
    let elliptic_curve_list = unsafe { p.add(6) };
    let mut elliptic_curve_len = 0;
    let mut grp_id = unsafe { (*(*ssl.conf).curve_list).clone() };

    *olen = 0;

    if unsafe { (*ssl.conf).curve_list }.is_null() {
        return -0x5E80;
    }

    while grp_id != MbedtlsEcpGroupId::MBEDTLS_ECP_DP_NONE {
        let info = unsafe { mbedtls_ecp_curve_info_from_grp_id(grp_id) };
        if info.is_null() {
            return -0x5E80;
        }
        elliptic_curve_len += 2;
        if elliptic_curve_len > 65535 {
            return -0x5E80;
        }
        unsafe {
            grp_id = *grp_id.add(1);
        }
    }

    if elliptic_curve_len == 0 {
        return -0x5E80;
    }

    if buf.len() < 6 + elliptic_curve_len {
        return -0x6A00;
    }

    elliptic_curve_len = 0;
    grp_id = unsafe { (*(*ssl.conf).curve_list).clone() };

    while grp_id != MbedtlsEcpGroupId::MBEDTLS_ECP_DP_NONE {
        let info = unsafe { mbedtls_ecp_curve_info_from_grp_id(grp_id) };
        unsafe {
            *elliptic_curve_list.add(elliptic_curve_len) = ((*info).tls_id >> 8) as u8;
            elliptic_curve_len += 1;
            *elliptic_curve_list.add(elliptic_curve_len) = ((*info).tls_id & 0xFF) as u8;
            elliptic_curve_len += 1;
            grp_id = *grp_id.add(1);
        }
    }

    unsafe {
        *p = (10 >> 8) as u8;
        p = p.add(1);
        *p = 10 as u8;
        p = p.add(1);
        *p = ((elliptic_curve_len + 2) >> 8) as u8;
        p = p.add(1);
        *p = ((elliptic_curve_len + 2) & 0xFF) as u8;
        p = p.add(1);
        *p = (elliptic_curve_len >> 8) as u8;
        p = p.add(1);
        *p = (elliptic_curve_len & 0xFF) as u8;
    }

    *olen = 6 + elliptic_curve_len;
    0
}
