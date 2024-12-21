extern crate ring;

use ring::digest::{Context, SHA1_FOR_LEGACY_USE_ONLY, MD5_FOR_LEGACY_USE_ONLY};

struct MbedtlsMd5Context {
    context: Context,
}

struct MbedtlsSha1Context {
    context: Context,
}

struct MbedtlsSslHandshakeParams {
    fin_md5: MbedtlsMd5Context,
    fin_sha1: MbedtlsSha1Context,
}

struct MbedtlsSslContext {
    handshake: MbedtlsSslHandshakeParams,
}

fn ssl_update_checksum_md5sha1(ssl: &mut MbedtlsSslContext, buf: &[u8]) {
    ssl.handshake.fin_md5.context.update(buf);
    ssl.handshake.fin_sha1.context.update(buf);
}

fn main() {
    // Example usage
    let mut ssl_context = MbedtlsSslContext {
        handshake: MbedtlsSslHandshakeParams {
            fin_md5: MbedtlsMd5Context {
                context: Context::new(&MD5_FOR_LEGACY_USE_ONLY),
            },
            fin_sha1: MbedtlsSha1Context {
                context: Context::new(&SHA1_FOR_LEGACY_USE_ONLY),
            },
        },
    };

    let data = b"example data";
    ssl_update_checksum_md5sha1(&mut ssl_context, data);

    // To finalize and get the digest, you can use:
    let md5_digest = ssl_context.handshake.fin_md5.context.clone().finish();
    let sha1_digest = ssl_context.handshake.fin_sha1.context.clone().finish();

    println!("MD5 Digest: {:?}", md5_digest.as_ref());
    println!("SHA1 Digest: {:?}", sha1_digest.as_ref());
}
