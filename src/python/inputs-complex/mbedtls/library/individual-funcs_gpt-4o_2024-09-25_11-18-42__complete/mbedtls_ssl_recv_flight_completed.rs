struct MbedtlsSslContext {
    handshake: Option<MbedtlsSslHandshakeParams>,
    in_msgtype: u8,
    in_msg: Vec<u8>,
}

struct MbedtlsSslHandshakeParams {
    flight: Option<MbedtlsSslFlightItem>,
    cur_msg: Option<MbedtlsSslFlightItem>,
    in_flight_start_seq: u32,
    in_msg_seq: u32,
    buffering: Buffering,
    retransmit_state: u8,
}

struct Buffering {
    seen_ccs: u8,
}

struct MbedtlsSslFlightItem;

fn mbedtls_ssl_flight_free(_flight: Option<MbedtlsSslFlightItem>) {
    // Free flight logic
}

fn mbedtls_ssl_buffering_free(_ssl: &mut MbedtlsSslContext) {
    // Buffering free logic
}

fn mbedtls_ssl_set_timer(_ssl: &mut MbedtlsSslContext, _millisecs: u32) {
    // Set timer logic
}

fn mbedtls_ssl_recv_flight_completed(ssl: &mut MbedtlsSslContext) {
    if let Some(handshake) = ssl.handshake.as_mut() {
        mbedtls_ssl_flight_free(handshake.flight.take());
        handshake.cur_msg = None;
        handshake.in_flight_start_seq = handshake.in_msg_seq;
        handshake.buffering.seen_ccs = 0;
    }

    // Separate scope to avoid multiple mutable borrows
    {
        mbedtls_ssl_buffering_free(ssl);
    }

    // Separate scope to avoid multiple mutable borrows
    {
        mbedtls_ssl_set_timer(ssl, 0);
    }

    if ssl.in_msgtype == 22 && ssl.in_msg.get(0) == Some(&20) {
        if let Some(handshake) = ssl.handshake.as_mut() {
            handshake.retransmit_state = 3;
        }
    } else {
        if let Some(handshake) = ssl.handshake.as_mut() {
            handshake.retransmit_state = 0;
        }
    }
}
