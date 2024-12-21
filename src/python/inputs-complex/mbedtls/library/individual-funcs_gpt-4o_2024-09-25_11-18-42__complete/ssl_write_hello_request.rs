    use log::{debug, LevelFilter};
    use std::sync::Once;

    // Assuming you have a struct similar to `mbedtls_ssl_context` in Rust
    struct MbedtlsSslContext {
        out_msglen: usize,
        out_msgtype: u8,
        out_msg: [u8; 4],
    }

    // Mock function to simulate `mbedtls_ssl_write_handshake_msg`
    fn mbedtls_ssl_write_handshake_msg(ssl: &mut MbedtlsSslContext) -> Result<(), i32> {
        // Simulate some logic
        Ok(())
    }

    // Initialize the logger
    static INIT: Once = Once::new();

    fn init_logger() {
        INIT.call_once(|| {
            env_logger::builder().filter_level(LevelFilter::Debug).init();
        });
    }

    fn ssl_write_hello_request(ssl: &mut MbedtlsSslContext) -> Result<(), i32> {
        init_logger();

        debug!("=> write hello request");

        ssl.out_msglen = 4;
        ssl.out_msgtype = 22;
        ssl.out_msg[0] = 0;

        match mbedtls_ssl_write_handshake_msg(ssl) {
            Ok(_) => {
                debug!("<= write hello request");
                Ok(())
            }
            Err(ret) => {
                debug!("mbedtls_ssl_write_handshake_msg failed with error: {}", ret);
                Err(ret)
            }
        }
    }

    fn main() {
        let mut ssl = MbedtlsSslContext {
            out_msglen: 0,
            out_msgtype: 0,
            out_msg: [0; 4],
        };

        if let Err(e) = ssl_write_hello_request(&mut ssl) {
            eprintln!("Error: {}", e);
        }
    }
    