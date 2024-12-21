// Define the equivalent Rust structure for mbedtls_ssl_context
struct MbedtlsSslContext {
    in_msglen: usize,
    // Add other fields as necessary
}

// Implement the ssl_record_is_in_progress function in Rust
fn ssl_record_is_in_progress(ssl: &MbedtlsSslContext) -> i32 {
    if ssl.in_msglen > 0 {
        return 1;
    }
    0
}

fn main() {
    // Example usage
    let ssl_context = MbedtlsSslContext { in_msglen: 10 };
    let result = ssl_record_is_in_progress(&ssl_context);
    println!("Is record in progress? {}", result);
}
