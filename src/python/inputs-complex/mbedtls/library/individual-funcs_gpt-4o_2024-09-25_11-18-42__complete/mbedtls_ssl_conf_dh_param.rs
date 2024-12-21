extern crate mbedtls;

use mbedtls::mpi::Mpi;
use mbedtls::ssl::Config;

fn mbedtls_ssl_conf_dh_param(conf: &mut Config, dhm_p: &str, dhm_g: &str) -> Result<(), mbedtls::Error> {
    let mut dhm_p_mpi = Mpi::new(0)?;
    let mut dhm_g_mpi = Mpi::new(0)?;

    if let Err(e) = dhm_p_mpi.read_string(16, dhm_p) {
        return Err(e);
    }

    if let Err(e) = dhm_g_mpi.read_string(16, dhm_g) {
        dhm_p_mpi.free();
        return Err(e);
    }

    conf.set_dh_param(dhm_p_mpi, dhm_g_mpi);

    Ok(())
}

fn main() {
    // Example usage
    let mut conf = Config::new();
    match mbedtls_ssl_conf_dh_param(&mut conf, "some_dhm_p_value", "some_dhm_g_value") {
        Ok(_) => println!("DH parameters set successfully"),
        Err(e) => eprintln!("Failed to set DH parameters: {:?}", e),
    }
}
