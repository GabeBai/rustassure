extern crate md5;
extern crate sha1;
extern crate sha2;

use md5::{Md5, Digest as Md5Digest};
use sha1::{Sha1, Digest as Sha1Digest};
use sha2::{Sha256, Sha512, Digest as Sha2Digest};

struct MbedtlsSslContext {
    handshake: HandshakeParams,
}

struct HandshakeParams {
    fin_md5: Md5,
    fin_sha1: Sha1,
    fin_sha256: Sha256,
    fin_sha512: Sha512,
}

impl MbedtlsSslContext {
    fn ssl_update_checksum_start(&mut self, buf: &[u8]) {
        self.handshake.fin_md5.update(buf);
        self.handshake.fin_sha1.update(buf);
        self.handshake.fin_sha256.update(buf);
        self.handshake.fin_sha512.update(buf);
    }
}

fn main() {
    // Example usage
    let mut ssl_context = MbedtlsSslContext {
        handshake: HandshakeParams {
            fin_md5: Md5::new(),
            fin_sha1: Sha1::new(),
            fin_sha256: Sha256::new(),
            fin_sha512: Sha512::new(),
        },
    };

    let data = b"example data";
    ssl_context.ssl_update_checksum_start(data);
}
