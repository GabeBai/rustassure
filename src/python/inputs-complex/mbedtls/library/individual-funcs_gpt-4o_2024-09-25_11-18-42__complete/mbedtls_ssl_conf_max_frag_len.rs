#[derive(Default)]
struct MbedtlsSslConfig {
    mfl_code: u8,
}

fn ssl_mfl_code_to_length(mfl_code: u8) -> usize {
    match mfl_code {
        0 => 512,
        1 => 1024,
        2 => 2048,
        3 => 4096,
        4 => 8192,
        _ => 0,
    }
}

fn mbedtls_ssl_conf_max_frag_len(conf: &mut MbedtlsSslConfig, mfl_code: u8) -> i32 {
    if mfl_code >= 5 || ssl_mfl_code_to_length(mfl_code) > std::cmp::min(16384, 16384) {
        return -0x7100;
    }
    conf.mfl_code = mfl_code;
    0
}

fn main() {
    let mut config = MbedtlsSslConfig::default();
    let result = mbedtls_ssl_conf_max_frag_len(&mut config, 2);
    println!("Result: {}", result);
    println!("Max Fragment Length Code: {}", config.mfl_code);
}
