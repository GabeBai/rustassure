// Assuming you have a struct definition for MbedtlsSslHandshakeParams
struct MbedtlsSslHandshakeParams {
    // fields
}

// Function that expects a mutable raw pointer
fn some_function(handshake: *mut MbedtlsSslHandshakeParams) {
    // function body
}

fn main() {
    // Create an instance of MbedtlsSslHandshakeParams
    let mut handshake = MbedtlsSslHandshakeParams {
        // initialize fields
    };

    // Pass a mutable reference and convert it to a raw pointer
    some_function(&mut handshake as *mut MbedtlsSslHandshakeParams);
}
