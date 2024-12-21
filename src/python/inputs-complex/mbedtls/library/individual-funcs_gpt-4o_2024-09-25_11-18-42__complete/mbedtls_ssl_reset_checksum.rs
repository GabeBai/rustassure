use ring::digest::{Context, SHA1_FOR_LEGACY_USE_ONLY, SHA256, SHA512_256};

struct MbedtlsSslContext {
    handshake: HandshakeParams,
}

struct HandshakeParams {
    fin_md5: Context,
    fin_sha1: Context,
    fin_sha256: Context,
    fin_sha512: Context,
}

impl MbedtlsSslContext {
    fn reset_checksum(&mut self) {
        self.handshake.fin_md5 = Context::new(&SHA1_FOR_LEGACY_USE_ONLY);
        self.handshake.fin_sha1 = Context::new(&SHA1_FOR_LEGACY_USE_ONLY);
        self.handshake.fin_sha256 = Context::new(&SHA256);
        self.handshake.fin_sha512 = Context::new(&SHA512_256);
    }
}

fn main() {
    // Example usage
    let mut ssl_context = MbedtlsSslContext {
        handshake: HandshakeParams {
            fin_md5: Context::new(&SHA1_FOR_LEGACY_USE_ONLY),
            fin_sha1: Context::new(&SHA1_FOR_LEGACY_USE_ONLY),
            fin_sha256: Context::new(&SHA256),
            fin_sha512: Context::new(&SHA512_256),
        },
    };

    ssl_context.reset_checksum();
}
