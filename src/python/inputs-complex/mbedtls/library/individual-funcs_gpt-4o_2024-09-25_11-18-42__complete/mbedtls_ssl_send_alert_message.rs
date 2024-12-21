extern crate log;
extern crate env_logger;

use log::debug;

fn main() {
    env_logger::init();
    // Your code here
}

extern crate log;
extern crate env_logger;

use log::debug;

struct MbedtlsSslContext {
    conf: Option<()>, // Replace with actual type
    out_msgtype: u8,
    out_msglen: usize,
    out_msg: [u8; 2], // Adjust size as needed
}

fn mbedtls_ssl_write_record(ssl: &mut MbedtlsSslContext, force_flush: u8) -> i32 {
    // Implement the function
    0
}

fn mbedtls_ssl_send_alert_message(ssl: &mut MbedtlsSslContext, level: u8, message: u8) -> i32 {
    let mut ret = -0x006E;
    if ssl.conf.is_none() {
        return -0x7100;
    }
    debug!("=> send alert message");
    debug!("send alert level={} message={}", level, message);
    ssl.out_msgtype = 21;
    ssl.out_msglen = 2;
    ssl.out_msg[0] = level;
    ssl.out_msg[1] = message;
    ret = mbedtls_ssl_write_record(ssl, 1);
    if ret != 0 {
        debug!("mbedtls_ssl_write_record returned {}", ret);
        return ret;
    }
    debug!("<- send alert message");
    0
}

fn main() {
    env_logger::init();
    // Your code here
}
