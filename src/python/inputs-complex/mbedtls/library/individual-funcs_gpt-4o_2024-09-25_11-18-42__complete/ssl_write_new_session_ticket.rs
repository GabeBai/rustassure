use log::{debug, error};
use std::time::SystemTime;

fn main() {
    env_logger::init();

    // Your code here
}

fn ssl_write_new_session_ticket(ssl: &mut MbedtlsSslContext) -> i32 {
    let mut ret = -0x006E;
    let tlen: usize;
    let lifetime: u32;

    debug!("=> write new session ticket");

    ssl.out_msgtype = 22;
    ssl.out_msg[0] = 4;

    match ssl.conf.f_ticket_write(
        ssl.conf.p_ticket,
        ssl.session_negotiate,
        &mut ssl.out_msg[10..],
        &mut ssl.out_msg[16384..],
        &mut tlen,
        &mut lifetime,
    ) {
        Ok(_) => {}
        Err(e) => {
            error!("mbedtls_ssl_ticket_write returned {}", e);
            tlen = 0;
        }
    }

    ssl.out_msg[4] = (lifetime >> 24) as u8;
    ssl.out_msg[5] = (lifetime >> 16) as u8;
    ssl.out_msg[6] = (lifetime >> 8) as u8;
    ssl.out_msg[7] = lifetime as u8;
    ssl.out_msg[8] = (tlen >> 8) as u8;
    ssl.out_msg[9] = tlen as u8;
    ssl.out_msglen = 10 + tlen;

    ssl.handshake.new_session_ticket = 0;

    match mbedtls_ssl_write_handshake_msg(ssl) {
        Ok(_) => {}
        Err(e) => {
            error!("mbedtls_ssl_write_handshake_msg returned {}", e);
            return e;
        }
    }

    debug!("<= write new session ticket");
    0
}

// Dummy implementations for the types and functions used in the example
struct MbedtlsSslContext {
    out_msgtype: u8,
    out_msg: [u8; 16394],
    out_msglen: usize,
    conf: MbedtlsSslConfig,
    session_negotiate: MbedtlsSslSession,
    handshake: MbedtlsSslHandshakeParams,
}

struct MbedtlsSslConfig {
    f_ticket_write: fn(
        p_ticket: &mut (),
        session_negotiate: &MbedtlsSslSession,
        out_msg: &mut [u8],
        out_msg_end: &mut [u8],
        tlen: &mut usize,
        lifetime: &mut u32,
    ) -> Result<(), i32>,
    p_ticket: (),
}

struct MbedtlsSslSession;
struct MbedtlsSslHandshakeParams {
    new_session_ticket: u8,
}

fn mbedtls_ssl_write_handshake_msg(_ssl: &mut MbedtlsSslContext) -> Result<(), i32> {
    Ok(())
}
