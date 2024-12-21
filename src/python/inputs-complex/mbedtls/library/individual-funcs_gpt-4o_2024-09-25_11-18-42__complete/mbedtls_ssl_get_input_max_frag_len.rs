// Define the necessary structs
#[derive(Debug)]
struct MbedtlsSslContext<'a> {
    conf: &'a MbedtlsSslConfig,
    state: i32,
    session_out: Option<&'a MbedtlsSslSession>,
    session_negotiate: Option<&'a MbedtlsSslSession>,
}

#[derive(Debug)]
struct MbedtlsSslConfig {
    endpoint: u32,
    mfl_code: u8,
}

#[derive(Debug)]
struct MbedtlsSslSession {
    mfl_code: u8,
}

// Define the necessary constants
const MBEDTLS_SSL_SERVER_HELLO_DONE: i32 = 4;

// Define the helper function
fn ssl_mfl_code_to_length(mfl_code: u8) -> usize {
    match mfl_code {
        0 => 16384,
        1 => 1024,
        2 => 2048,
        3 => 4096,
        4 => 8192,
        _ => 16384,
    }
}

// Define the main function
fn mbedtls_ssl_get_input_max_frag_len(ssl: &MbedtlsSslContext) -> usize {
    let mut max_len = 16384;
    let mut read_mfl;

    if ssl.conf.endpoint == 0 && ssl.state >= MBEDTLS_SSL_SERVER_HELLO_DONE {
        return ssl_mfl_code_to_length(ssl.conf.mfl_code);
    }

    if let Some(session_out) = ssl.session_out {
        read_mfl = ssl_mfl_code_to_length(session_out.mfl_code);
        if read_mfl < max_len {
            max_len = read_mfl;
        }
    }

    if let Some(session_negotiate) = ssl.session_negotiate {
        read_mfl = ssl_mfl_code_to_length(session_negotiate.mfl_code);
        if read_mfl < max_len {
            max_len = read_mfl;
        }
    }

    max_len
}

fn main() {
    // Example usage
    let config = MbedtlsSslConfig {
        endpoint: 0,
        mfl_code: 2,
    };

    let session = MbedtlsSslSession {
        mfl_code: 3,
    };

    let ssl_context = MbedtlsSslContext {
        conf: &config,
        state: MBEDTLS_SSL_SERVER_HELLO_DONE,
        session_out: Some(&session),
        session_negotiate: None,
    };

    let max_frag_len = mbedtls_ssl_get_input_max_frag_len(&ssl_context);
    println!("Max Fragment Length: {}", max_frag_len);
}
