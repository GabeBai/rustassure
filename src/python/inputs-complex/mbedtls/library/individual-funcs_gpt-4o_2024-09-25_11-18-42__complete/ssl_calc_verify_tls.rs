    use md5::{Md5, Digest as Md5Digest};
    use sha1::{Sha1, Digest as Sha1Digest};

    struct MbedtlsSslContext {
        // Add necessary fields here
    }

    struct MbedtlsSslHandshakeParams {
        fin_md5: Md5,
        fin_sha1: Sha1,
    }

    impl MbedtlsSslContext {
        fn debug_print_msg(&self, level: i32, file: &str, line: i32, format: &str) {
            // Implement the debug print function
        }

        fn debug_print_buf(&self, level: i32, file: &str, line: i32, text: &str, buf: &[u8]) {
            // Implement the debug print buffer function
        }
    }

    fn ssl_calc_verify_tls(ssl: &MbedtlsSslContext, hash: &mut [u8; 36], hlen: &mut usize) {
        ssl.debug_print_msg(2, "ssl_tls.c", 1730, "=> calc verify tls");

        let mut md5 = ssl.handshake.fin_md5.clone();
        let mut sha1 = ssl.handshake.fin_sha1.clone();

        let md5_result = md5.finalize_reset();
        let sha1_result = sha1.finalize_reset();

        hash[..16].copy_from_slice(&md5_result);
        hash[16..].copy_from_slice(&sha1_result);

        *hlen = 36;

        ssl.debug_print_buf(3, "ssl_tls.c", 1743, "calculated verify result", &hash[..*hlen]);
        ssl.debug_print_msg(2, "ssl_tls.c", 1744, "<= calc verify");
    }
    