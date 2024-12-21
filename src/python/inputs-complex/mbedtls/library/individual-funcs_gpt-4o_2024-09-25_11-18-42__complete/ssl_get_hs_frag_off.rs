#[repr(C)]
pub struct MbedtlsSslContext {
    // Define the fields of the struct as per the C definition
    // For simplicity, we will define only the necessary fields for this function
    pub in_msg: [u8; 9], // Assuming the in_msg array has at least 9 elements
}

fn ssl_get_hs_frag_off(ssl: &MbedtlsSslContext) -> u32 {
    ((ssl.in_msg[6] as u32) << 16) |
    ((ssl.in_msg[7] as u32) << 8) |
    (ssl.in_msg[8] as u32)
}

fn main() {
    // Example usage
    let ssl_context = MbedtlsSslContext {
        in_msg: [0, 0, 0, 0, 0, 0, 1, 2, 3],
    };
    let frag_off = ssl_get_hs_frag_off(&ssl_context);
    println!("Fragment offset: {}", frag_off);
}
