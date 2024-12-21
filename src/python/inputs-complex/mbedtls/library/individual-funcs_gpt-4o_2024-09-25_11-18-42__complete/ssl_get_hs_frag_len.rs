#[repr(C)]
pub struct MbedtlsSslContext {
    // Define the fields of the struct as per the C definition
    // For simplicity, we will only define the `in_msg` field here
    // You should define other fields as needed
    in_msg: [u8; 12], // Assuming the in_msg array has at least 12 elements
}

pub fn ssl_get_hs_frag_len(ssl: &MbedtlsSslContext) -> u32 {
    ((ssl.in_msg[9] as u32) << 16) |
    ((ssl.in_msg[10] as u32) << 8) |
    (ssl.in_msg[11] as u32)
}

fn main() {
    // Example usage
    let ssl_context = MbedtlsSslContext {
        in_msg: [0; 12], // Initialize with some values
    };
    let frag_len = ssl_get_hs_frag_len(&ssl_context);
    println!("Fragment length: {}", frag_len);
}
