use std::convert::TryInto;

struct MbedtlsSslContext {
    in_msg: Vec<u8>,
}

fn ssl_get_hs_total_len(ssl: &MbedtlsSslContext) -> u32 {
    let in_msg = &ssl.in_msg;
    ((in_msg[1] as u32) << 16) |
    ((in_msg[2] as u32) << 8) |
    (in_msg[3] as u32)
}

fn main() {
    // Example usage
    let ssl_context = MbedtlsSslContext {
        in_msg: vec![0, 1, 2, 3, 4, 5], // Example data
    };
    let total_len = ssl_get_hs_total_len(&ssl_context);
    println!("Total length: {}", total_len);
}
