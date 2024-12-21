use zeroize::Zeroize;

struct MbedtlsSslTransform {
    cipher_ctx_enc: MbedtlsCipherContext,
    cipher_ctx_dec: MbedtlsCipherContext,
    md_ctx_enc: MbedtlsMdContext,
    md_ctx_dec: MbedtlsMdContext,
    // other fields...
}

impl MbedtlsSslTransform {
    fn free(&mut self) {
        self.cipher_ctx_enc.free();
        self.cipher_ctx_dec.free();
        self.md_ctx_enc.free();
        self.md_ctx_dec.free();
        self.zeroize();
    }
}

impl Zeroize for MbedtlsSslTransform {
    fn zeroize(&mut self) {
        // Zeroize all fields
        // Note: Ensure all fields implement Zeroize or manually zeroize them
        self.cipher_ctx_enc.zeroize();
        self.cipher_ctx_dec.zeroize();
        self.md_ctx_enc.zeroize();
        self.md_ctx_dec.zeroize();
        // zeroize other fields...
    }
}

struct MbedtlsCipherContext {
    // fields...
}

impl MbedtlsCipherContext {
    fn free(&mut self) {
        // Free resources
    }
}

impl Zeroize for MbedtlsCipherContext {
    fn zeroize(&mut self) {
        // Zeroize fields
    }
}

struct MbedtlsMdContext {
    // fields...
}

impl MbedtlsMdContext {
    fn free(&mut self) {
        // Free resources
    }
}

impl Zeroize for MbedtlsMdContext {
    fn zeroize(&mut self) {
        // Zeroize fields
    }
}

// Usage example
fn main() {
    let mut transform = MbedtlsSslTransform {
        cipher_ctx_enc: MbedtlsCipherContext { /* fields... */ },
        cipher_ctx_dec: MbedtlsCipherContext { /* fields... */ },
        md_ctx_enc: MbedtlsMdContext { /* fields... */ },
        md_ctx_dec: MbedtlsMdContext { /* fields... */ },
        // other fields...
    };

    transform.free();
}
