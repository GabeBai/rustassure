#[repr(C)]
pub struct MbedtlsSslContext {
    // Add other fields as necessary
    mtu: u16,
}

pub fn mbedtls_ssl_set_mtu(ssl: &mut MbedtlsSslContext, mtu: u16) {
    ssl.mtu = mtu;
}

fn main() {
    // Example usage
    let mut ssl_context = MbedtlsSslContext {
        mtu: 0,
        // Initialize other fields as necessary
    };

    mbedtls_ssl_set_mtu(&mut ssl_context, 1500);
    println!("MTU is set to: {}", ssl_context.mtu);
}
