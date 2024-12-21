use std::convert::TryInto;

#[derive(Default)]
struct MbedtlsSslConfig {
    anti_replay: u8,
}

#[derive(Default)]
struct MbedtlsSslContext {
    conf: MbedtlsSslConfig,
    in_ctr: [u8; 8],
    in_window_top: u64,
    in_window: u64,
}

fn ssl_load_six_bytes(bytes: &[u8]) -> u64 {
    let mut result: u64 = 0;
    for &byte in bytes.iter().take(6) {
        result = (result << 8) | u64::from(byte);
    }
    result
}

fn mbedtls_ssl_dtls_replay_update(ssl: &mut MbedtlsSslContext) {
    let rec_seqnum = ssl_load_six_bytes(&ssl.in_ctr[2..]);
    if ssl.conf.anti_replay == 0 {
        return;
    }
    if rec_seqnum > ssl.in_window_top {
        let shift = rec_seqnum - ssl.in_window_top;
        if shift >= 64 {
            ssl.in_window = 1;
        } else {
            ssl.in_window <<= shift;
            ssl.in_window |= 1;
        }
        ssl.in_window_top = rec_seqnum;
    } else {
        let bit = ssl.in_window_top - rec_seqnum;
        if bit < 64 {
            ssl.in_window |= 1 << bit;
        }
    }
}

fn main() {
    // Example usage
    let mut ssl = MbedtlsSslContext {
        conf: MbedtlsSslConfig { anti_replay: 1 },
        in_ctr: [0; 8],
        in_window_top: 0,
        in_window: 0,
    };

    mbedtls_ssl_dtls_replay_update(&mut ssl);
}
