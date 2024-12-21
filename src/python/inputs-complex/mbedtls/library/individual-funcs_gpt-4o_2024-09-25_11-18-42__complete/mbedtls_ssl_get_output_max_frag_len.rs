#[derive(Debug)]
struct MbedtlsSslConfig {
    mfl_code: u8,
}

#[derive(Debug)]
struct MbedtlsSslSession {
    mfl_code: u8,
}

#[derive(Debug)]
struct MbedtlsSslContext<'a> {
    conf: &'a MbedtlsSslConfig,
    session_out: Option<&'a MbedtlsSslSession>,
    session_negotiate: Option<&'a MbedtlsSslSession>,
}

fn ssl_mfl_code_to_length(mfl_code: u8) -> usize {
    match mfl_code {
        0 => 16384, // Example values, replace with actual values
        1 => 8192,
        2 => 4096,
        3 => 2048,
        4 => 1024,
        _ => 16384, // Default value
    }
}

fn mbedtls_ssl_get_output_max_frag_len(ssl: &MbedtlsSslContext) -> usize {
    let mut max_len = ssl_mfl_code_to_length(ssl.conf.mfl_code);

    if let Some(session_out) = ssl.session_out {
        let session_out_len = ssl_mfl_code_to_length(session_out.mfl_code);
        if session_out_len < max_len {
            max_len = session_out_len;
        }
    }

    if let Some(session_negotiate) = ssl.session_negotiate {
        let session_negotiate_len = ssl_mfl_code_to_length(session_negotiate.mfl_code);
        if session_negotiate_len < max_len {
            max_len = session_negotiate_len;
        }
    }

    max_len
}

fn main() {
    let config = MbedtlsSslConfig { mfl_code: 2 };
    let session_out = MbedtlsSslSession { mfl_code: 3 };
    let session_negotiate = MbedtlsSslSession { mfl_code: 1 };

    let ssl_context = MbedtlsSslContext {
        conf: &config,
        session_out: Some(&session_out),
        session_negotiate: Some(&session_negotiate),
    };

    let max_frag_len = mbedtls_ssl_get_output_max_frag_len(&ssl_context);
    println!("Max fragment length: {}", max_frag_len);
}
