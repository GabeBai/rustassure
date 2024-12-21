    extern crate log;

    use log::{debug, LevelFilter};
    use std::sync::Once;

    // Assuming these types are defined somewhere in your Rust code
    struct MbedtlsSslContext {
        handshake: HandshakeParams,
        conf: SslConfig,
    }

    struct HandshakeParams {
        retransmit_timeout: u32,
        mtu: u16,
    }

    struct SslConfig {
        hs_timeout_min: u32,
        hs_timeout_max: u32,
    }

    static INIT: Once = Once::new();

    fn init_logging() {
        INIT.call_once(|| {
            env_logger::builder().filter_level(LevelFilter::Debug).init();
        });
    }

    fn ssl_double_retransmit_timeout(ssl: &mut MbedtlsSslContext) -> i32 {
        init_logging();

        if ssl.handshake.retransmit_timeout >= ssl.conf.hs_timeout_max {
            return -1;
        }

        if ssl.handshake.retransmit_timeout != ssl.conf.hs_timeout_min {
            ssl.handshake.mtu = 508;
            debug!("mtu autoreduction to {} bytes", ssl.handshake.mtu);
        }

        let new_timeout = 2 * ssl.handshake.retransmit_timeout;
        if new_timeout < ssl.handshake.retransmit_timeout || new_timeout > ssl.conf.hs_timeout_max {
            ssl.handshake.retransmit_timeout = ssl.conf.hs_timeout_max;
        } else {
            ssl.handshake.retransmit_timeout = new_timeout;
        }

        debug!("update timeout value to {} millisecs", ssl.handshake.retransmit_timeout);
        0
    }
    
    fn main() {
        init_logging();
        // Your code here
    }
    