extern crate mbedtls;

use mbedtls::mpi::Mpi;
use mbedtls::ssl::Config;

fn mbedtls_ssl_conf_dh_param_bin(
    conf: &mut Config,
    dhm_p: &[u8],
    dhm_g: &[u8],
) -> Result<(), mbedtls::Error> {
    let mut dhm_p_mpi = Mpi::new(0)?;
    let mut dhm_g_mpi = Mpi::new(0)?;

    if let Err(e) = dhm_p_mpi.read_binary(dhm_p) {
        return Err(e);
    }

    if let Err(e) = dhm_g_mpi.read_binary(dhm_g) {
        dhm_p_mpi.free();
        return Err(e);
    }

    conf.set_dh_param(dhm_p_mpi, dhm_g_mpi);

    Ok(())
}
