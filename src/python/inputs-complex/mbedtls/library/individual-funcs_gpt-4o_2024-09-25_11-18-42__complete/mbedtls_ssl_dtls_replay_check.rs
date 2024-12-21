use std::convert::TryInto;

#[derive(Debug)]
struct MbedtlsSslContext {
    in_ctr: [u8; 8],
    in_window_top: u64,
    in_window: u64,
    conf: MbedtlsSslConfig,
}

#[derive(Debug)]
struct MbedtlsSslConfig {
    anti_replay: u32,
}

fn ssl_load_six_bytes(bytes: &[u8]) -> u64 {
    let mut result: u64 = 0;
    for &byte in bytes.iter().take(6) {
        result = (result << 8) | u64::from(byte);
    }
    result
}

fn mbedtls_ssl_dtls_replay_check(ssl: &MbedtlsSslContext) -> i32 {
    let rec_seqnum = ssl_load_six_bytes(&ssl.in_ctr[2..]);
    let bit: u64;

    if ssl.conf.anti_replay == 0 {
        return 0;
    }

    if rec_seqnum > ssl.in_window_top {
        return 0;
    }

    bit = ssl.in_window_top - rec_seqnum;
    if bit >= 64 {
        return -1;
    }

    if (ssl.in_window & (1 << bit)) != 0 {
        return -1;
    }

    0
}

fn main() {
    let ssl_config = MbedtlsSslConfig { anti_replay: 1 };
    let ssl_context = MbedtlsSslContext {
        in_ctr: [0, 0, 0, 0, 0, 0, 0, 0],
        in_window_top: 0,
        in_window: 0,
        conf: ssl_config,
    };

    let result = mbedtls_ssl_dtls_replay_check(&ssl_context);
    println!("Result: {}", result);
}
